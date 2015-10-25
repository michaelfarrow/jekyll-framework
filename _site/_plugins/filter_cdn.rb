module Jekyll
  module CdnFilter
    def cdn(input)
    	@context.registers[:site].config['cdn_url'] + "/" + "#{input}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::CdnFilter)