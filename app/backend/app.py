from flask import Flask, jsonify, Response
from prometheus_client import Counter, generate_latest, CONTENT_TYPE_LATEST

app = Flask(__name__)

REQUEST_COUNT = Counter("app_requests_total", "Total requests")

@app.before_request
def count_requests():
    REQUEST_COUNT.inc()

@app.route("/")
def home():
    return "Backend is working"

@app.route("/api")
def api():
    return jsonify({
        "message": "Hello from API",
        "status": "success"
    })

@app.route("/health")
def health():
    return "OK", 200

# 🔥 ADD THIS
@app.route("/metrics")
def metrics():
    return Response(generate_latest(), mimetype=CONTENT_TYPE_LATEST)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
