require 'Qt4'
require 'cinch'
require './qt_ui.rb'

class Qt::PlainTextEdit
  def << string
    append_plain_text(string.to_s)
  end
    
end

def initialize_ui
  $app = Qt::Application.new(ARGV)
  $ui = Ui::MainWindow.new
  $window = Qt::MainWindow.new
  $ui.setup_ui($window)
  $window.show

#  $ui.pushButton.connect(SIGNAL :clicked) {
#    ComputerService.foo('bax')
#  }
end

def connect_signals
  $ui.input_bar.connect(SIGNAL :returnPressed) { puts $ui.input_bar.text }
end

connection = Cinch::Bot.new do
  configure do |c|
    c.server   = "irc.freenode.net"
    c.channels = ["#rirc"]
  #  c.nickname = ["rirc_client"]
  end
  on :message, /(.*)/ do |m|
    #puts m.user, m.params[0], m.params[1]
    puts 'got one msg'
    Channel('#rirc').msg 'foofoo'

   # $ui.main_buffer << "msg"
   # $ui.main_buffer.append_plain_text 'xfo'
    $ui.main_buffer << "<#{m.user}> #{m.params[1]}"
  end
end

Thread.new do
  connection.start
end
#$ui.main_buffer << 'foobar'
#$ui.main_buffer.append_plain_text 'foobar'
Thread.new do
  initialize_ui
  connect_signals
  while sleep 0.01 do
    $app.process_events
  end
end.join
