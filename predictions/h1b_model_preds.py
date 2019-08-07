from sklearn import externals

model_filename = r'C:\Users\Turla\Desktop\Projects\oflc-data-analysis\model\h1b_performance_model.joblib.z'
clf_pred = externals.joblib.load(model_filename)
def predict(test_input):
    probs = clf_pred.predict_proba(test_input)
    return probs