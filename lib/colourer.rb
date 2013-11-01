require "colourer/version"

class String

  class << self

    def colours
      palette.keys
    end

    def palette
      { :black => '0;30', :blue => '0;34', :green => '0;32', :cyan => '0;36', :red => '0;31', :purple => '0;35', :brown => '0;33', :light_gray => '0;37',
        :dark_gray => '1;30', :light_blue => '1;34', :light_green => '1;32', :light_cyan => '1;36', :light_red => '1;31', :light_purple => '1;35',
        :yellow => '1;33', :white => '1;37' }
    end

  end

  String.palette.each do |colour, code|
    define_method colour do
      "\e[#{code}m#{self}\e[0m"
    end
  end

  def magenta; purple; end
  def light_magenta; light_purple; end

end

module Colourer
  # Your code goes here...
end
