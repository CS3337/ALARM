from flask import Flask, render_template

app = Flask(__name__)

@app.route('/file', methods =['GET','POST'])
def renderTemplate():
    return render_template('fileReturn.html')
