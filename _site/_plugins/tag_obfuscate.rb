require_relative 'filter_obfuscate'

module Jekyll
  class ObfuscateTag < Liquid::Tag
    include ObfuscateFilter;

    def initialize(tag_name, string, tokens)
      super
      @string = string.strip
    end

    def render(context)
      obfuscate("#{@string}");
    end
  end
end

Liquid::Template.register_tag('obfuscate', Jekyll::ObfuscateTag)
