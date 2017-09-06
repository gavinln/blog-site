---
Description: "Gradient boostring classifer"
date: 2017-09-05T19:15:49-07:00
menu: main
title: Gradient boosting classifier
---

This post has been adapted from this notebook on [Gradient boosting][10].

[10]: http://nbviewer.jupyter.org/urls/s3.amazonaws.com/datarobotblog/notebooks/gbm-tutorial.ipynb

Gradient boosting is a machine learning technique for regression and
classification problems which produces a prediction model in the form of an
ensemble of weak prediciton models, typically descision trees. The model is
built in stages like other boosting methods where each stage fits the residual
of the previous stage.
