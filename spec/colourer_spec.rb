require 'spec_helper'

# http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

describe String do

  specify 'colours' do
    verify do
      String.colours
    end
  end

  specify 'rainbows' do
    verify do
      String.colours.map { |colour| colour.to_s.send(colour) }
    end
  end

  specify 'colorize gem compatibility' do
    String.new.purple.should == String.new.magenta
    String.new.light_purple == String.new.light_magenta
  end

end
