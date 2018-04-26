import tkinter as tk

window = tk.Tk()

window.title("ALARM")

#size of window (width x height)
window.geometry("500x400")

#makes a Label
title = tk.Label(text = "Hello. Welcome to the ALARM Interface", font = ("Times New Roman", 20))
#places title on the window at location (0,0)
title.grid(column = 0, row = 0)

#makes Button
button1 = tk.Button(text = "Click me", bg="red")
#places button on window at location (0,1)
button1.grid(column = 0, row = 1)

#makes Entry field
entryField = tk.Entry()
#places entryField on window at location (0,2)
entryField.grid(column = 0, row = 2)

window.mainloop()
