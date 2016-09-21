---
Description: "Principal component analysis (PCA) with Scikit learn on the Iris
data"
date: 2016-02-23T19:11:35-08:00
title: PCA with Scikit learn on the Iris data set
---

[Scikit learn][10] has multiple data sets included with the library. One of the most
well known data sets is the [Iris data set][20] introduced by Ronald Fisher.

[10]: http://scikit-learn.org/
[20]: https://en.wikipedia.org/wiki/Iris_flower_data_set

Four features were measured from each sample: the length and the width of the
sepals and petals, in centimetres. Sepals are usually green and typically
function as protection for the flower in bud, and often as support for the
petals when in bloom. Based on the combination of these four features the
goal is to distinguish between three species of Iris
(Iris setosa, Iris virginica and Iris versicolor).

{{< figure src="/img/irises/iris_setosa.jpg" title="Iris setosa" width="300">}}
{{< figure src="/img/irises/iris_virginica.jpg" title="Iris virginica" width="300">}}
{{< figure src="/img/irises/iris_versicolor.jpg" title="Iris versicolor" width="300">}}

The data is shown in a Jupyter (IPython) notebook in this [repository][30].

[30]: https://github.com/gavinln/stats_py_vm/blob/master/notebooks/scikit-learn/01_Iris_dataset_PCA.ipynb

By converting the scikit-learn data into a [pandas][40] dataframe it can easily be
plotted using the [seaborn][50] library.

[40]: http://pandas.pydata.org/
[50]: http://stanford.edu/~mwaskom/software/seaborn/

{{<figure src="/img/irises/seaborn-iris-pairplot.png" title="Seaborn iris plot" width="800">}}

Using principal component analysis (PCA) the four dimensional data set can be
converted into a two dimensional data set by only choosing the first two
principal components.

{{<highlight python>}}
from sklearn.decomposition import PCA
pca = PCA(n_components=2)
iris_proj = pca.fit_transform(iris['data'])
print(iris['data'].shape)
print(iris_proj.shape)
{{</highlight>}}

The first principal component explains 92.46% of the variance and the second
explains 5.30% of the variance.

{{<figure src="/img/irises/seaborn-iris-two-principal-components.png" title="First two principal components of the Iris data" width="800">}}


