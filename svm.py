import matplotlib.pyplot as plt
import numpy as np
X_train=np.array([[3, 1],[3, -1],[6, 1],[6, -1],[1, 0],[0, 1],[0, -1],[-1, 0]])
Y_train=[1, 1, 1, 1, 0, 0, 0, 0]
plt.scatter(X_train[:,0], X_train[:,1])
#Building the classifier
from sklearn import svm
#Initialize svm classifier
clf = svm.SVC(kernel='linear')



clf = clf.fit(X_train, Y_train)
predictions = clf.predict (X_train)
print(predictions)


predictions = clf.predict([[-4,2]])
print(predictions)


support_vectors = clf.support_vectors_
print(support_vectors)
