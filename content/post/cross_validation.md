---
Description: "Cross validation"
date: 2016-04-14T20:35:27-07:00
menu: main
title: Cross validation
---

[Cross-validation][10] is a technique used to assess how a statistical analysis will generalize to an independent data set.

[10]: https://en.wikipedia.org/wiki/Cross-validation_%28statistics%29

When creating a predictive model, the model is trained using a dataset called the training dataset. The accuracy of the trained model is then tested on another unknown dataset called the testing dataset. The process is called cross-validation.

[Scikit][20] learn makes it easy to use multiple methods for cross validation. A basic approach is called k-fold cross validation. The dataset is split into k smaller sets, where 1 of the sets is used to validate the model while the remaining are used to train the model. The [peformance measures][30] reported by the k-fold cross-validations are the average of the values computed by choosing a different set for the cross-validation and using the remaining for training.

[20]: http://scikit-learn.org/stable/modules/cross_validation.html
[30]: http://scikit-learn.org/stable/modules/model_evaluation.html#scoring-parameter

This Jupyter [notebook][40] contains all the code used to plot the charts.

[40]: https://github.com/gavinln/stats_py_vm/blob/master/notebooks/scikit-learn/08_Cross_validation.ipynb

The "Wisconsin Breast Cancer" dataset is used to demonstrate cross-validation. This data set has 569 samples of which 357 are benign and 212 are malignant. Ten factors are used to predict breast cancer.

In addition to precision and recall, the [F1 score][50] is calculated. The F1 score is the harmonic mean and equally weights precision and recall. A F1 score reaches its highest value at 1 and lowest value at 0.

[50]: https://en.wikipedia.org/wiki/F1_score

The four classifiers: logistic regression, support vector, decision tree and random forests are compared on the cross-validation scores. They perform much worse on the test dataset as compared to the training dataset. Compare the results with those in the [previous post][60].

[60]: {{< ref "post/accuracy-precision-recall.md" >}}

| classifier                    | accuracy  | precision | recall   | f1_score |
|-------------------------------|-----------|-----------|----------|----------|
| logistic regression           | 0.926186  | 0.938719  | 0.943978 | 0.941341 |
| support vector (radial basis) | 0.717047  | 0.704167  | 0.946779 | 0.807646 |
| decision tree                 | 0.905097  | 0.922006  | 0.927171 | 0.924581 |
| random forest                 | 0.947276  | 0.955432  | 0.960784 | 0.958101 |


