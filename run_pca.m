train_cor = cov(train);

[U, S, V] = svd(train_cor);

PC1 = U(:,1);
PC2 = U(:,2);
PC3 = U(:,3);

X = train*PC1;
Y = train*PC2;
Z = train*PC3;

X_tst = test*PC1;
Y_tst = test*PC2;
Z_tst = test*PC3;

cmap = hsv(10);
plot_h = [];
nums = ['0';'1';'2';'3';'4';'5';'6';'7';'8';'9';];
figure;
hold on;
for i=0:9
    cur = find(labels == i);
    p = plot3(X(cur), Y(cur), Z(cur), '.', 'Color', cmap(i+1, :));
    plot_h = [plot_h p];
end

legend(plot_h, nums);
hold off;

