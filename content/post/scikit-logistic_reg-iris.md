---
Description: "Logistic regression with Scikit learn on the Iris data"
date: 2016-02-29T21:30:18-08:00
menu: main
title: Logistic regression on the Iris data set
---

The [Iris data set][10] has four feature for Iris flower.

[10]: https://en.wikipedia.org/wiki/Iris_flower_data_set

* sepal length
* sepal width
* petal length
* petal width

Using a three class [logistic regression][20] the four features can be used to
classify the flowers into three species (Iris setosa, Iris virginica,
Iris versicolor).

[20]: http://scikit-learn.org/stable/auto_examples/linear_model/plot_iris_logistic.html

Using this Jupyter [notebook][30] combinations of two features we are used to
classify the species. The mis-predicted values are shown below.

[30]: https://github.com/gavinln/stats_py_vm/blob/master/notebooks/scikit-learn/02_Iris_dataset_logistic_regression.ipynb

measure 1|measure 2|incorrect predictions
---------|---------|---------------------
sepal length|sepal width|29
sepal length|petal length|6
sepal length|petal width|8
sepal width|petal length|7
sepal width|petal width|7
petal length|petal width|6

The previous [post](/post/scikit-pca-iris/) shows that some combinations of
features are easier to use to separate the species than others.

Logistic regression can also be used on the two principal components and
mis-predict only five values.

{{<figure src="/img/irises/seaborn-iris-two-principal-components-mis-predicted.png" title="Seaborn iris plot with mis-predicted items" width="800">}}

A mesh when drawn over the plot shows the three classes of the logistic
regression.

{{<figure src="/img/irises/seaborn-iris-principal-components-logistic-reg-mesh.png" title="Seaborn iris plot - logistic regression" width="800">}}





