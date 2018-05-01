from tkinter import Tk, Label, Button, LEFT, RIGHT, W

class MyFirstGUI:
    def __init__(self,master):
        self.master = master
        master.title("A simple GUI")

        self.label = Label(master, text = "This is a Label")
        #ways to organize objects in the window
        #self.label.pack()
        self.label.grid(columnspan=2, sticky = W)

        self.greet_button = Button(master, text="Greet", command = self.greet)
        #self.greet_button.pack(side = LEFT)
        self.greet_button.grid(row=1)

        self.close_button = Button(master, text = "Close", command = master.quit)
        #self.close_button.pack(side = RIGHT)
        self.close_button.grid(row=1, column=1)

    def greet(self):
        print("Greetings")

root = Tk()
my_gui = MyFirstGUI(root)
root.mainloop()
