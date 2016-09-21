---
Description: "Using Support vector classifiers from the Scikit learn library"
date: 2016-03-06T12:04:12-08:00
title: Support vector machines with Scikit learn
---

[Support vector machines][10] are supervised learning models used for
classification and regression. For a classifier the data is represented as
points in space and a SVM classifier (SVC) separates the classes by a gap that
is as wide as possible. SVM algorithms are known as maximum margin classifiers.

[10]: https://en.wikipedia.org/wiki/Support_vector_machine
[20]: http://scikit-learn.org/

To illustrate the SVC algorithm we generate random points in two dimensions
arranged in two clusters. This is illustrated in a Jupyter (IPython) notebook
in this [repository][30].

[30]: https://github.com/gavinln/stats_py_vm/blob/master/notebooks/scikit-learn/03_Support_vector_machines.ipynb

{{<highlight python>}}
X, y = make_blobs(n_samples=50, centers=2, random_state=0, cluster_std=0.60)
from sklearn.svm import SVC
clf = SVC(kernel='linear')
clf.fit(X, y)
{{</highlight>}}

{{< figure src="/img/svm/linear_boundaries_two_clusters.png" title="Two lines separating two clusters" width="500">}}

Multiple lines can be drawn to separate the clusters. The black line is
preferred to the red line as there is a larger margin between it and the
nearest points.

Some of the points nearest the boundary are known as support vectors. They
margins and the support vectors are plotted below.

{{< figure src="/img/svm/SVM_decision_function-margin-support_vectors.png" title="Support vectors" width="500">}}

Support vector classifiers are linear classifiers. For datasets that are not
linearly separable they do a poor job.

{{< figure src="/img/svm/SVM-non_linearly_separable_data.png" title="Non-linearly separable data" width="500">}}

To create non-linear boundaries we could convert this two dimensional data set
to higher dimensions. For example we could add the distance of the points from
the origin as the third dimension. The two clusters will then be easily
separable.

{{< figure src="/img/svm/SVM-with_radial_basis_functions.png" title="Radial basis functions for SVC" width="500">}}

Another example with non-linearly separable data.

{{< figure src="/img/svm/radial_basis_functions-non_linearly_separable_data.png" title="Radial basis functions for SVC" width="500">}}






