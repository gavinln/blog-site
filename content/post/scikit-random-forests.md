---
Description: "Using Random Forests in Scikit-learn with the Iris data"
date: 2016-03-20T22:18:21-07:00
title: Random forests using Scikit-learn
---

[Random forests][10] is an [ensemble learning][20] method. Ensemble methods use multiple learning algorithms to obtain better predictive performance than could be obtained for any of the constituent learning algorithms.

[10]: https://en.wikipedia.org/wiki/Random_forest
[20]: https://en.wikipedia.org/wiki/Ensemble_learning

Random forests work by constructing multiple decision trees and combining the trees. The algorithm was developed by [Leo Breiman][30] and Adele Cutler and "Random Forests" is their trademark.

[30]: https://en.wikipedia.org/wiki/Leo_Breiman

Random forests correct for decision trees' habit of overfitting to their training data set.

This Jupyter [notebook][40] contains all the code used to plot the charts.

[40]: https://github.com/gavinln/stats_py_vm/blob/master/notebooks/scikit-learn/05_Random_Forests.ipynb

To demonstrate the tendency of decision trees to overfit the data we predict the species of Iris using just two features: sepal length and petal width. The species are shown in a scatter plot in different colors.

{{<figure src="/img/irises/iris_species-sepal_length-petal_width.png" title="Scatter plot of Iris species" width="600">}}

The graphs below show three Iris species using three different colors and the shaded regions predicted by the decision tree using lighter shades of the same colors. Each of the three plots in the set uses a different random sample made up of 70% of the data set. The decision tree boundaries are differnt in each case. This is an indication of overfitting.

{{<figure src="/img/random_forests/decision_trees-iris-multiple_subsets.png" title="Scatter plot of Iris species" width="600">}}

A similar plot shows a Random Forest Classifier with 500 trees each time used to select various sub-samples of the dataset. This controls over-fitting.

{{<figure src="/img/random_forests/random_forests-iris-multiple_subsets.png" title="Scatter plot of Iris species" width="600">}}
