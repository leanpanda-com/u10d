I18n.available_locales.each.with_object({}) do |locale, acc|
  acc[locale] = {
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
          id: "indonesia",
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
end
