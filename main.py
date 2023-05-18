# We install the needed modules.
from PyQt6.QtWidgets import QApplication, QMainWindow

# We import Ui_LoginWindow, Ui_MenuWindow and Ui_RegisterWindow from the other python script (GUI's)
from Sundheds import Ui_LoginWindow
from Menu import Ui_MainWindow as Ui_MenuWindow
from new_register import Ui_RegisterWindow

# We make a class called MainWindow that inherits from the QMainWindow.
class MainWindow(QMainWindow):
    # We use init to initialize the class, and here we use self as an argument.
    def __init__(self):
        super().__init__()

# We set up the user interface for the first window, the login window. Here we connect the 'clicked' signal
        # of the pushButton to the show_second_window, which then shows the second  window, when the correct
        # button is pushed.
        self.first_ui = Ui_LoginWindow()
        self.first_ui.setupUi(self)
        self.first_ui.pushButton.clicked.connect(self.show_second_window)

# We define show_second_window in order to create the second window. Again, this connects the 'clicked' signal
    # of the push_Button_3 to the show_third_window method. We use the Ui_MenuWindow since this is the second
    # window in the application.
    def show_second_window(self):
        self.second_window = QMainWindow()
        self.second_ui = Ui_MenuWindow()
        self.second_ui.setupUi(self.second_window)
        self.second_window.show()

        self.second_ui.pushButton_3.clicked.connect(self.show_third_window)

# show_third_window is defined to create the third window, Ui_RegisterWindow. We use third_window.show to have
    # the window shown when running the program.
    def show_third_window(self):
        self.third_window = QMainWindow()
        self.third_ui = Ui_RegisterWindow()
        self.third_ui.setupUi(self.third_window)
        self.third_window.show()

# At last this code allows the application to run and respond until it is closed.
if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    # Here we show the MainWindow
    window.show()
    # We start the loop
    app.exec()

