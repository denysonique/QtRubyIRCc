=begin
** Form generated from reading ui file 'qt.ui'
**
** Created: Tue Aug 23 20:06:51 2011
**      by: Qt User Interface Compiler version 4.7.3
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_MainWindow
    attr_reader :centralwidget
    attr_reader :input_bar
    attr_reader :main_buffer
    attr_reader :listView
    attr_reader :listView_2
    attr_reader :comboBox
    attr_reader :menubar
    attr_reader :statusbar

    def setupUi(mainWindow)
    if mainWindow.objectName.nil?
        mainWindow.objectName = "mainWindow"
    end
    mainWindow.resize(800, 532)
    @centralwidget = Qt::Widget.new(mainWindow)
    @centralwidget.objectName = "centralwidget"
    @input_bar = Qt::LineEdit.new(@centralwidget)
    @input_bar.objectName = "input_bar"
    @input_bar.geometry = Qt::Rect.new(160, 449, 611, 41)
    @main_buffer = Qt::PlainTextEdit.new(@centralwidget)
    @main_buffer.objectName = "main_buffer"
    @main_buffer.geometry = Qt::Rect.new(180, 17, 431, 421)
    @listView = Qt::ListView.new(@centralwidget)
    @listView.objectName = "listView"
    @listView.geometry = Qt::Rect.new(20, 17, 141, 421)
    @listView_2 = Qt::ListView.new(@centralwidget)
    @listView_2.objectName = "listView_2"
    @listView_2.geometry = Qt::Rect.new(630, 17, 141, 421)
    @comboBox = Qt::ComboBox.new(@centralwidget)
    @comboBox.objectName = "comboBox"
    @comboBox.geometry = Qt::Rect.new(20, 450, 131, 41)
    mainWindow.centralWidget = @centralwidget
    @menubar = Qt::MenuBar.new(mainWindow)
    @menubar.objectName = "menubar"
    @menubar.geometry = Qt::Rect.new(0, 0, 800, 21)
    mainWindow.setMenuBar(@menubar)
    @statusbar = Qt::StatusBar.new(mainWindow)
    @statusbar.objectName = "statusbar"
    mainWindow.statusBar = @statusbar

    retranslateUi(mainWindow)

    Qt::MetaObject.connectSlotsByName(mainWindow)
    end # setupUi

    def setup_ui(mainWindow)
        setupUi(mainWindow)
    end

    def retranslateUi(mainWindow)
    mainWindow.windowTitle = Qt::Application.translate("MainWindow", "MainWindow", nil, Qt::Application::UnicodeUTF8)
    @input_bar.text = ''
    @comboBox.insertItems(0, [Qt::Application.translate("MainWindow", "denysonique", nil, Qt::Application::UnicodeUTF8)])
    end # retranslateUi

    def retranslate_ui(mainWindow)
        retranslateUi(mainWindow)
    end

end

module Ui
    class MainWindow < Ui_MainWindow
    end
end  # module Ui

