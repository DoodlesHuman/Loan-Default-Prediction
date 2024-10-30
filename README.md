# Loan Default Prediction Project

## Project Overview
This project aims to predict loan defaults using a machine learning model trained on a dataset from Kaggle. By predicting default risk, financial institutions can better manage lending decisions and mitigate financial risks. 

## Project Objectives
- Build a robust model to predict loan default status.
- Analyze patterns within the data to identify key indicators of default.
- Evaluate model performance and optimize for accuracy.

## Table of Contents
1. Introduction
2. Data Understanding & Exploratory Data Analysis (EDA)
3. Data Cleaning & Preprocessing
4. Feature Selection
5. Model Building & Evaluation
6. Model Interpretation & Insights
7. Model Deployment
8. Conclusion
9. Appendix

## Dataset
The original dataset downloaded from Kaggle is has been split into training and validation data. The dataset we use here is the training portion which is the 85% of the original dataset. It contains 34 columns and 126,369 rows. Key features include loan amount, interest rates, credit score, income, property value, and debt-to-income ratio. The target variable is `Status` (0: Not Defaulted, 1: Defaulted). The other portion of the original dataset is used in model validation step.

## Exploratory Data Analysis
Exploratory analysis included:
- Descriptive statistics and missing value analysis.
- Distribution visualization for both categorical and numerical variables.
- Correlation heatmap and pair plot analysis for numerical features.

## Data Preprocessing
Steps include:
- Handling missing values using appropriate imputation methods.
- Encoding categorical variables for model compatibility.
- Addressing potential data leakage in sensitive features (e.g., `Interest_rate_spread`).

## Model Building
Multiple models were tested, with hyperparameter tuning and cross-validation to identify the best-performing model. The primary model's accuracy, ROC-AUC  and F1-score are highlighted in the results section.

## Model Validation

The most accurate model is validated using unseen data, which was split from the original dataset of Kaggle. The evaluation metrics were cross checked in order to ensure the generalization ability of the model.

## Deployment

Model is serialized and saved using Joblib library. It has been deployed and tested with a custom batch prediction.
The whole model has been also containerized using docker.

## Conclusion
The project successfully demonstrates the use of machine learning to predict loan default status, providing valuable insights to financial institutions for informed decision-making. Future improvements are denoted in the detailed conclusion of the notebook.

## Author
Amos Ram Rehum

## License
This project is licensed under the MIT License - see the LICENSE file for details.
