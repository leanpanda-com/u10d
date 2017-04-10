# coding: utf-8
I18n.available_locales.reduce({}) do |a, locale|
  a[locale] = {
    untranslated: {
      language: {
        by_code: {
          ar: "العربية",
          de: "Deutsch",
          en: "English",
          es: "Español",
          fr: "Français",
          hu: "Magyar",
          it: "Italiano",
          ml: "മലയാളം",
          pt: "Português",
          uk: "український",
          ru: "русский",
          zh: "中文"
        }
      }
    }
  }
  a
end
