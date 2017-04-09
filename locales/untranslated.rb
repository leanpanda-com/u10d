# coding: utf-8
I18n.available_locales.reduce({}) do |a, locale|
  a[locale] = {
    untranslated: {
      language: {
        by_code: {
          ar: "العربية",
          de: "Deutsch",
          en: "English",
          es: "español",
          fr: "français",
          it: "italiano"
        }
      } 
    } 
  }
  a
end
