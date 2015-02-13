#Mnist Dataset analysis

Attempt 1: PCA Analysis Using Matlab

I am currently running PCA analysis on the MNIST data set from kaggle.
My current solution reaches about 46% correct ratings. This is because I just use simple PCA analysis to get the principle components. Then I project the training points onto the principle components to get their position in terms of x,y,z coordinates. Then I project the test images onto the principle components to get thier points. After that I try to find out which 'cloud' of training points (each number has a different cloud) that a test point might best belong in. To do that I do a simple euclidean distance between the test point and the mean of all the points in a cloud. 
This crude method results in approximately 46% accuracy. There is much more room for improvement. 