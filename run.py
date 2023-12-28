from flask import Flask
from recipea.app.routes.api_routes import api_routes

# Create the Flask app instance
app = Flask(__name__)

# Register the blueprint(s) with the app
app.register_blueprint(api_routes)

# Main entry point of the application
if __name__ == '__main__':
    app.run(debug=True, port=5000)
