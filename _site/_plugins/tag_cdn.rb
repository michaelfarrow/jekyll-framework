module Jekyll
  class CdnTag < Liquid::Tag

    def initialize(tag_name, url, tokens)
      super
      @url = url.strip
    end

    def render(context)
      context.environments.first["site"]["cdn_url"] + "/" + "#{@url}"
    end
  end
end

Liquid::Template.register_tag('cdn', Jekyll::CdnTag)
