# coding: utf-8
require "spec_helper"

RSpec.describe U10d do
  it "has a version number" do
    expect(U10d::VERSION).not_to be_nil
  end

  describe "KNOWN_LANGUAGES" do
    it "includes :en" do
      expect(U10d::KNOWN_LANGUAGES).to include(:en)
    end
  end

  context "when accessing by code" do
    let(:root_path) { File.expand_path("..", __dir__) }

    before do
      I18n.available_locales = U10d::KNOWN_LANGUAGES
      described_class.activate!
      @previous_locale = I18n.locale
    end

    after do
      I18n.locale = @previous_locale
    end

    U10d::KNOWN_LANGUAGES.each do |current_locale|
      context "in :#{current_locale}" do
        before { I18n.locale = current_locale }

        it "translates :ar as العربية" do
          expect(I18n.t("untranslated.language.by_code.ar")).to eq("العربية")
        end

        it "translates :en as English" do
          expect(I18n.t("untranslated.language.by_code.en")).to eq("English")
        end

        it "translates :it as italiano" do
          expect(I18n.t("untranslated.language.by_code.it")).to eq("italiano")
        end
      end
    end
  end
end
