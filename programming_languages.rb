def reformat_languages(languages)
  languages_hash = {}
  languages.each do | paradigm, lang_list |
    lang_list.each do | language, type_hash |
      type_hash.each do |header, type|
        shovel_data = {header => type, :style => []}
        languages_hash[language] = shovel_data
      end
    end
  end
  languages.each do | paradigm, lang_list |
    languages_hash.each do | language, data |
      if lang_list.has_key?(language)
          data[:style] << paradigm
      end
    end
  end
  return languages_hash
end
