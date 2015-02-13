train = csvread('train.csv', 1, 0);
test = csvread('test.csv', 1, 0);

labels = train(:,1);
train(:,1) = [];

