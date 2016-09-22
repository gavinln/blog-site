---
Description: "Scaling input data"
date: 2016-09-21T20:30:53-07:00
menu: main
title: Scaling input data
---

Some machine learning algorithms in the sklearn library are affected by data measured using different scales. For example if one measure is in centimeters (one hundreth of a meter) and another is in micrometers (one millionth of a meter) the results may not be optimal.

Sklearn has scaling functions in the [preprocessing][10] module

[10]: http://scikit-learn.org/stable/modules/preprocessing.html

Load the [Iris][20] dataset. It has three kinds of Irises with each Iris species stored in 50 consecutive rows. Loading the second and third Iris species stored from row 50 and above create a subset of the data.

[20]: http://scikit-learn.org/stable/modules/generated/sklearn.datasets.load_iris.html

Display the two species *versicolor* and *virginica* with two axis: sepal length and sepal width. The sepal length is in centimeters and the sepal width is in micrometers.

{{<figure src="/img/scaling_input_data/iris-species-different-scales.png" title="Iris species: different scales on x and y axes" width="600">}}

Using the [scale](http://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.scale.html) function in sklearn the measures are converted to have a mean of zero and variance of one.

| measure  | sepal length | sepal width  | species  |
|----------|--------------|--------------|----------|
| count    | 1.000000e+02 | 1.000000e+02 | 100.0000 |
| mean     | 3.288481e-15 | 4.496403e-17 | 1.500000 |
| stdev    | 1.005038e+00 | 1.005038e+00 | 0.502519 |


{{<figure src="/img/scaling_input_data/iris-species-normalized-axes.png" title="Iris species: normalized axes" width="600">}}

Using logistic regression and a decision tree classifier with the original data
and normalized data the results are in the table below.

| classifier                            | accuracy | precision | recall |
|---------------------------------------|----------|-----------|--------|
| Logistic regression: different scales | 0.56     | 0.578947  | 0.44   |
| Logistic regression: normalized data  | 0.75     | 0.745098  | 0.76   |
| Decision tree: different scales       | 0.88     | 0.816667  | 0.98   |
| Decision tree: normalized data        | 0.88     | 0.816667  | 0.98   |

The logistic regression method improves when using normalized data however the
decision tree method does equally well with the original data and the
normalized data.

