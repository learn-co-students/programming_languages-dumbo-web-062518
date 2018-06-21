def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, lang|
    lang.each do |name, style|
      if new_hash.has_key?(name)
        new_hash[name][:style].push(type)
      else
        new_hash[name] = style
        new_hash[name][:style] = [type]
      end
    end
  end
  new_hash
end