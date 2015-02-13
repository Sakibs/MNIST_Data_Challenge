rf_bm = csvread('rf_benchmark.csv', 1, 0);
knn_bm = csvread('knn_benchmark.csv', 1, 0);

rf_sol = rf_bm(:,2);
knn_sol = knn_bm(:,2);

rf_wrong = find((pred ~= rf_sol) == 1);
sz_rfw = size(rf_wrong)

knn_wrong = find((pred ~= knn_sol) == 1);
sz_knnw = size(knn_wrong)

[len, c] = size(pred);
pct_rf_corr = (len-sz_rfw(1))/len
pct_knn_corr = (len-sz_knnw(1))/len


comp_rf = [rf_wrong, pred(rf_wrong), rf_sol(rf_wrong)];
comp_knn = [knn_wrong, pred(knn_wrong), rf_sol(knn_wrong)];