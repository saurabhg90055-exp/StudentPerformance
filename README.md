# Student Performance Prediction

## About The Project
This is an End-to-End Machine Learning project designed to predict student performance (typically math scores) based on various demographic and academic background features such as gender, race/ethnicity, parental level of education, lunch type, test preparation course, reading score, and writing score.

## Key Features & Highlights
* **Modular ML Pipeline:** The codebase is structured into modular components including Data Ingestion, Data Transformation, and Model Training (`src/components/`), ensuring clean, maintainable, and scalable code.
* **Web Application:** Features a Flask-based web interface (`application.py`) that allows users to input student data and receive real-time performance predictions.
* **Data Visualization:** The application automatically generates exploratory data visualizations (like Seaborn pairplots) to provide insights into the dataset.
* **Custom Logging & Exception Handling:** Implements robust logging (`logger.py`) and custom exception handling (`exception.py`) to easily track the pipeline execution and debug issues.
* **Deployment Ready:** The project includes a `Dockerfile`, `setup.py`, and `requirements.txt`, making it easily reproducible and ready for deployment in containerized environments.

## How to Run
1. Install dependencies: `pip install -r requirements.txt`
2. Run the application: `python application.py`
3. Access the web UI at: `http://localhost:8080`
