from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api/users', methods=['GET'])
def get_users():
    # Dummy response for now
    return jsonify({"users": [{"id": 1, "username": "admin"}]})

if __name__ == '__main__':
    app.run(debug=True)
