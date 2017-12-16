# coding: utf-8
I18n.available_locales.reduce({}) do |a, locale|
  a[locale] = {
    untranslated: {
      language: {
        by_code: {
          ar: "العربية",
          bg: "български",
          de: "Deutsch",
          en: "English",
          es: "español",
          fr: "français",
          hu: "magyar",
          it: "italiano",
          ml: "മലയാളം",
          pt: "Português",
          ro: "română",
          ru: "русский",
          uk: "УКРАЇНСЬКА",
          zh: "中文"
        }
      }
    }
  }
  a
end
