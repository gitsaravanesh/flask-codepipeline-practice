from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello():
    colors = ['blue', 'blue', 'blue', 'blue', 'blue', 'blue', 'blue']
    return render_template('index.html', colors=colors)

if __name__ == '__main__':
    app.run()
