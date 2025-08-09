from flask_import flask
import time

app = Flask(_name_)

@app.route("/")
def get_current_time():
    current_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
    return f"The current time is: {current_time}"

if _name_ == "_main_":
    app.run=(host="0.0.0.0", port=8080)
