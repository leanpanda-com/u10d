# U10d - Untranslated language names

In multilingual user interfaces, it is common to present choices as language
names.
As these choices are aimed at speakers of the languages themselves, they should
**not** be translated into the current locale. The name of each language
in the language itself should be presented.

These are called 'autoglottonyms'.

## Installation

```ruby
gem "u10d"
```

## Usage

Autoglottonyms are created on-the-fly, based on your `available_locales`:

```ruby
main> require "u10d"
main> I18n.available_locales = [:ru, :en]
main> U10d.activate!
main> I18n.locale = :en
main> I18n.t("untranslated.language.by_code.ru")
=> "русский"
main> I18n.locale = :ru
main> I18n.t("untranslated.language.by_code.ru")
=> "русский"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/cantierecreativo/u10d.
This project is intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the
[Contributor Covenant](http://contributor-covenant.org) code of conduct.

# References

## Sources

* http://www.geonames.de/languages.html

## Software and Autoglottonyms

* https://en.wikipedia.org/
* http://stackoverflow.com/a/35305414
* https://www.drupal.org/node/2107427

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

