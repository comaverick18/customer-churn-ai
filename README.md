# Customer Churn Predictor + AI Retention Assistant

## 🧠 Project Overview
A machine learning project to predict customer churn and generate AI-powered retention messages using large language models and multi-agent strategies.

## 🔧 Features
- Churn prediction model (XGBoost, SHAP explainability)
- Web scraping + sentiment analysis (Trustpilot/App Store)
- AI retention assistant (OpenAI + CrewAI agents)
- Interactive Streamlit app for customer insights
# Customer Churn Predictor + AI Retention Assistant

## 🔍 Overview

This project predicts customer churn and uses AI agents to recommend personalized retention strategies.

## 🧠 Key Features

* Churn prediction using ML models (XGBoost, SHAP)
* Web scraping + sentiment analysis from product reviews
* Multi-agent AI assistant with OpenAI + CrewAI
* Streamlit app to visualize churn risks and AI messages

## 🧰 Tech Stack

* Python, pandas, scikit-learn, XGBoost
* OpenAI API, LangChain, FAISS, CrewAI
* PostgreSQL, SQLAlchemy
* Streamlit, BeautifulSoup, TextBlob

## 📁 Folder Structure

```
data/           # Raw and processed data
notebooks/      # EDA and modeling
scripts/        # Helper scripts (scraping, training, etc.)
src/            # Core code (feature eng, models, utils)
ai_assistant/   # LLM agents and workflows
app/            # Streamlit app files
```

## 🚀 Getting Started

1. Clone the repo and enter the folder:

   ```bash
   git clone https://github.com/your-username/customer-churn-ai.git
   cd customer-churn-ai
   ```

2. Activate your environment:
   ```bash
   conda activate churn-ai-env
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
   
4. Run the app (once built):
   ```bash
   streamlit run app/app.py
   ```
   

## ✅ Project Status

Currently in Phase 1: Data Exploration + Web Scraping
