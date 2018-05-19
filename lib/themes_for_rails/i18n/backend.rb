module ThemesForRails
  module I18n
    class Backend < ::I18n::Backend::Simple
  		def initialize(theme_name)
        @theme_name = theme_name
  			@delegate = ::I18n::Backend::Simple.new
  		end

      def translate(locale, key, options)
        theme_key = "#{@theme_name}.#{key}"
        key = theme_key if @delegate.exists?(locale, theme_key)
        @delegate.translate(locale, key, options)
      end
    end
  end
end
