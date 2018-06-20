def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, language|
    language.each do |name, data|
      if new_hash[name].nil? # Check if language has already been added
        new_hash[name] = {
          type: data[:type],
          style: [style]
        }
      else # If language exists in hash, push style into array
        new_hash[name][:style] << style
      end
    end
  end

  new_hash
end
