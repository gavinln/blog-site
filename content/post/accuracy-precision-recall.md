---
Description: "Accuracy, Precision, Recall for Machine Learning"
date: 2016-04-10T22:40:36-07:00
menu: main
title: Accuracy, precision, recall for machine learning
---

A popular way to evaluate the performance of a machine learning algorithm is to use a [confusion matrix][10]. This is a table with two rows and two columns that displays the number of true positives, false positives, false negatives and true negatives.

[10]: https://en.wikipedia.org/wiki/Confusion_matrix 

This Jupyter [notebook][20] contains all the code used to plot the charts.

[20]: https://github.com/gavinln/stats_py_vm/blob/master/notebooks/scikit-learn/07_Precision_and_Recall.ipynb

The table below shows an example confusion matrix for a hypothetical test for a rare disease where only 2 people of out 100 have the disease. This is an unbalanced data set as a much larger number, 98 out of 100 do not have the disease. The first named row has cases of people who have the disease and the second named row has cases of people who do not have the disease. The first named column has people who test positive and the second named column has people who test negative.

This leads to four numeric cell with the top left containing true positive counts, the bottom left having false positive, the top right having false negative and the bottom right with true negative counts.

A simple way to create a very accurate test for this unbalanced example is to just assume everyone tests negative for the disease. This misses out on all the people who do actually have the disease and results in two false negative cases. However it correctly predicts 98 true negative cases. This results in a 98% accurate test. But this test cannot distinguish between people who have a disease and people who don't. Accuracy may not be a useful measure of the goodness of the test.

Two useful measures are precision and recall: Precision is a measure of how many of the selected items are relevant and recall is a measure of how many relevant items are selected.

precision = (true positives)/(true positives + false positives)

recall = (True positives)/positives

In the example below the precision is undefined while the recall is zero.

|                         |predicted condition positive|predicted condition negative|
|-------------------------|---------------------------:|---------------------------:|
| true condition positive |                          0 |  2 |
| true condition negative |                          0 | 98 |

An alternative test for the same rare disease where 2 out of 100 have the disease is show below. Now there is 1 true positive, 2 false positives, 1 false negative and 96 true negatives.

This test has a lower accuracy as it has correct predicted 97 out of 100 cases, lower than the previous test. This test also has a defined precision of 0.333333 and a recall of 0.5

This test correctly identifies 1 out of the 2 people who have the disease.

|                         | predicted condition positive | predicted condition negative |
|-------------------------|-----------------------------:|-----------------------------:|
| true condition positive | 1                            | 1                            |
| true condition negative | 2                            | 96                           |

To demonstrate the use of accuracy, precision and recall when measuring the peformance of a classifier, we use the "Wisconsin Breast Cancer" data set.

This data set has 569 samples of which 357 are benign and 212 are malignant

We predict whether the cancer is benign or malignant using ten factors: radius, texture, perimeter, area, smoothness, compactness, concavity, concave points, symmetry and fractal dimension.

We compare four classifiers: logistic regression, support vector, decision tree and random forests on three different measures, accuracy, precision and recall. The decision tree and random forest classifiers are so good that they correctly classify 100% of the samples in this data set.

| classifier                    | accuracy | precision | recall   |
|-------------------------------|---------:|----------:|---------:|
| logistic regression           | 0.929701 | 0.927224  | 0.963585 |
| support vector (radial basis) | 0.987698 | 0.980769  | 1        |
| decision tree                 | 1        | 1         | 1        |
| random forest                 | 1        | 1         | 1        |

However the performance of a classifier on the training data is not necessarily
a good indication of how well it will do on data it has not seen. In future
posts the classifiers will be tested on new data.

