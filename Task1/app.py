from flask import Flask, request, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def get_time_and_ip():
    # Get the current timestamp in ISO format
    timestamp = datetime.now().isoformat()
    
    # Get the IP address of the visitor
    ip_address = request.remote_addr
    
    # Create a response in JSON format
    response = {
        "timestamp": timestamp,
        "ip": ip_address
    }
    
    # Return the JSON response
    return jsonify(response)

if __name__ == '__main__':
    # Run the Flask app on port 5000
    app.run(debug=True, host='0.0.0.0', port=5001)
