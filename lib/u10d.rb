require "u10d/version"
require "i18n"

module U10d
  KNOWN_LANGUAGES = %i(ar de en es fr hu id it ml pt ro ru tr zh).freeze

  def self.activate!
    root_path = File.expand_path("..", __dir__)
    I18n.load_path ||= []
    I18n.load_path += [File.join(root_path, "locales", "untranslated.rb")]
    I18n.reload!
  end
end
