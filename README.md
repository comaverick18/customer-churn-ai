# Customer Churn Predictor + AI Retention Assistant

## 🧠 Project Overview
This project aims to predict customer churn using machine learning and to develop an AI-powered assistant that generates personalized retention messages and strategies based on user profiles and churn risk.  
The final outcome will be an interactive dashboard displaying churn predictions, sentiment analysis, and AI-suggested retention actions.


## ✨ Key Features
* **Churn Prediction:** Utilizes machine learning models (e.g., Logistic Regression, Random Forest, XGBoost) to predict the likelihood of a customer churning.
* **Sentiment Analysis:** Employs NLP techniques (VADER, Hugging Face Transformers) to analyze customer reviews and gauge sentiment.
* **AI-Powered Retention Assistant:** 
A multi-agent system (using CrewAI, LangChain, and potentially OpenAI API) to:
    * Explain churn drivers.
    * Craft messaging strategies.
    * Recommend personalized offers and retention actions.
* **Interactive Dashboard:** A front-end application (Streamlit or Gradio) for users to look up customer profiles, view churn predictions, sentiment scores, and AI-generated retention advice.



## 🛠️ Tech Stack
* **Data Processing & Analysis:** Python, Pandas, NumPy, Scikit-learn
* **Database:** PostgreSQL
* **Sentiment Analysis:** VADER, Hugging Face Transformers (e.g., RoBERTa-based models)
* **Machine Learning:** Scikit-learn (Logistic Regression, Random Forest, XGBoost)
* **Model Explainability:** SHAP
* **AI/LLM Orchestration:** LangChain, CrewAI
* **LLM APIs:** OpenAI API (or other compatible LLMs)
* **Vector Storage (Optional):** FAISS, Pinecone
* **Application/UI:** Streamlit or Gradio
* **Environment Management:** Conda

## 📁 Folder Structure
```
customer-churn-ai/
├── .vscode/                # VS Code workspace settings
├── ai_assistant/           # Code for the AI retention assistant (CrewAI agents, etc.)
├── app/                    # Code for the Streamlit/Gradio front-end application
├── data/                   # Raw, cleaned, and processed datasets (e.g., CSV, Parquet)
├── notebooks/              # Jupyter notebooks for EDA, modeling, experimentation
├── sql/                    # SQL scripts for database schema, queries
├── src/                    # Source code for utility functions, classes (if any)
├── .gitignore              # Specifies intentionally untracked files for Git
├── environment.yml         # Conda environment specification
├── README.md               # This file: project overview and documentation
└── requirements.txt        # Pip requirements (if used)
```


## ⚙️ Setup and Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/comaverick18/customer-churn-ai.git](https://github.com/comaverick18/customer-churn-ai.git)
    cd customer-churn-ai
    ```
2.  **Create and activate the Conda environment:**
    (Ensure you have Anaconda or Miniconda installed)
    ```bash
    conda env create -f environment.yml
    conda activate churn-ai-en2
    ```
3.  **Install specific packages (if not fully covered by `environment.yml` or if `requirements.txt` is used):**
    ```bash
    pip install -r requirements.txt
    ```
4.  **Set up PostgreSQL database:**
    * Ensure PostgreSQL is installed and running.
    * Create a database (e.g., `churn-ai`).
    * Update database connection details if necessary (e.g., in Python scripts or `.env` files).
5.  **Hugging Face Login (if needed for gated models/APIs, though not for `cardiffnlp`):**
    ```bash
    huggingface-cli login
    ```
6.  **OpenAI API Key (if using OpenAI models):**
    * Set your OpenAI API key as an environment variable (e.g., `OPENAI_API_KEY`).

## 🗺️ Execution Plan / Phases (Based on Daily Plan)

This project is structured into several key phases, with detailed daily tasks:

* **Phase 1: Data Gathering + Exploration (Days 1-4)**
    * **1A: Initial Setup & Data Loading:** Setting up the environment, GitHub, PostgreSQL database, loading the initial Telco dataset, and performing basic SQL queries and Pandas cleaning.
    * **1A: EDA & Visualization:** Creating basic visualizations to understand churn patterns versus tenure, contract type, etc.
    * **1B: Sentiment Analysis:** Applying VADER for baseline sentiment scores, exploring and applying advanced Hugging Face Transformer models (e.g., RoBERTa-based) for more nuanced sentiment analysis on customer reviews, joining sentiment with user profiles, and visualizing sentiment vs. churn.
* **Phase 2: Build Churn Prediction Model (Days 5-7)**
    * **Feature Engineering:** Converting text fields to numerical representations, creating tenure buckets, and scaling features.
    * **Model Training:** Splitting data and training various classification models like Logistic Regression, Random Forest, and XGBoost.
    * **Model Evaluation & Explainability:** Evaluating models using metrics like F1-score and AUC, generating confusion matrices, and using SHAP for model interpretability.
    * **Model Management:** Storing predictions and serializing the best-performing model (e.g., using ONNX).
* **Phase 3: Build AI Retention Assistant (Days 8-11)**
    * **Base Assistant Setup:** Setting up a foundational assistant using OpenAI API or LangChain.
    * **CrewAI Agent Development:** Planning and developing a multi-agent system with CrewAI, including:
        * Marketer Agent (for messaging strategies)
        * Data Analyst Agent (for explaining churn drivers)
        * Retention Strategist Agent (for recommending offers)
    * **Workflow & Integration:** Defining agent collaboration, integrating user profiles, churn predictions, and sentiment as inputs, and defining output formats for personalized retention messages.
    * **Contextual Retrieval (Optional):** Exploring FAISS for retrieving contextual templates or similar cases.
* **Phase 4: Front-End App + User Workflow (Days 12-14)**
    * **UI Development:** Building an interactive interface using Streamlit or Gradio.
    * **Feature Implementation:** Allowing customer profile lookup, displaying churn predictions, sentiment analysis results, and AI-generated retention messages.
    * **Backend Integration:** Connecting the front-end to the churn prediction model and the CrewAI pipeline.
* **Phase 5: Polish + Deploy (Days 15-17)**
    * **Refinement:** Adding error handling, improving the UI, and implementing logging for interactions and AI messages.
    * **Documentation:** Writing the project README, technical documentation, and a project summary.
    * **Deployment:** Deploying the application via Streamlit Cloud or Hugging Face Spaces, and ensuring the GitHub repository is well-organized.

## 📊 Current Status (as of June 15, 2025)
* **Phase 2 (Build Churn Prediction Model)** is now complete.
    * The dataset has been fully preprocessed and feature-engineered, including the correction of an identified data leakage issue.
    * Three baseline models (Logistic Regression, Random Forest, XGBoost) were trained and rigorously evaluated on a held-out test set to establish performance benchmarks.
    * Model explainability was performed using SHAP to identify the key features driving churn predictions.
    * The selected model (Logistic Regression) has been serialized to the interoperable ONNX format, making it ready for deployment.
* Currently starting **Day 8: Build AI Retention Assistant** (Phase 3), beginning with the setup of LangChain and the OpenAI API.

---
