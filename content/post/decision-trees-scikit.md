---
Description: "Decision trees using Scikit learn on the Iris data"
date: 2016-03-13T14:27:21-07:00
title: Decision trees on the Iris data set
---

[Decision trees][10] are a non-parametric learning method used for [classification][20] and [regression][30]. Trees are often represented with a graph like model where each note is a test and each branch represents the outcome of the test.

[10]: https://en.wikipedia.org/wiki/Decision_tree
[20]: https://en.wikipedia.org/wiki/Statistical_classification
[30]: https://en.wikipedia.org/wiki/Regression_analysis

We use the [Iris data set][40] to demonstrate the use of a decision tree classifier.

[40]: https://en.wikipedia.org/wiki/Iris_flower_data_set

The Iris data set has four features (sepal length, sepal width, petal length, petal width) which can be used to classify Iris flowers into three species denoted as "0", "1", "2" (setosa, versicolor, virginica).

This Jupyter [notebook][50] contains all the code used to plot the charts.

[50]: https://github.com/gavinln/stats_py_vm/blob/master/notebooks/scikit-learn/04_Decision_trees.ipynb

To better display the performance of the decision trees algorithm we predict
the species of Iris using just two features: petal length and petal width. The
species are shown in a scatter plot in different colors.

{{<figure src="/img/irises/iris_species-petal_length-petal_width.png" title="Scatter plot of Iris species" width="600">}}

The output of the decision tree is shown using shaded regions that match the colors used to identify the flower. Using a decision tree with various depths the three species of Iris are classified, ineffectively at first with a tree of only one layer. As the number of layers increase the decision tree does a better job identifying the Iris species.

{{<figure src="/img/decision_trees/decision_trees-multiple_depths.png" title="Decision trees classification boundaries" width="800">}}

The decision tree rules can also be represented using a graph like drawing with the root node on the left and the leaf nodes on the right.

{{<figure src="/img/decision_trees/tree-depth-1.png" width="400">}}
{{<figure src="/img/decision_trees/tree-depth-2.png" width="600">}}
{{<figure src="/img/decision_trees/tree-depth-3.png" width="800">}}

Finally we use a decision tree without limiting the depth. It classifies all the flowers correctly.

{{<figure src="/img/decision_trees/decision_trees-unlimited_depth.png" width="600">}}


