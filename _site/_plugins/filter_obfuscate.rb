module Jekyll
  module ObfuscateFilter
    def obfuscate(input)
      "#{input}".unpack('C*').map {|c|
        sprintf("&#%d;", c)
      }.join
    end
  end
end

Liquid::Template.register_filter(Jekyll::ObfuscateFilter)