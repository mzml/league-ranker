from flask import Flask, request, render_template

app = Flask(__name__)


@app.route('/')
def hello_world():
    user_agent = request.headers.get('user-agent')

    return user_agent


@app.route('/user/<name>')
def user(name):
    return render_template('base.html', name=name)


if __name__ == '__main__':
    app.run()
