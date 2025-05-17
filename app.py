from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello():
    colors = ['yellow', 'red', 'blue', 'green', 'red', 'blue', 'violet']
    return render_template('index.html', colors=colors)

if __name__ == '__main__':
    app.run()
