require 'logger'

class Wolologger < Logger

  %w(info debug warn error fatal).each do |level|
    define_method level do |tag, text=''|
      text.empty? ? super(tag) : super("\033[1;37m#{tag}\e[0m " + text)
    end
  end

  VERSION = '0.0.1'

end
