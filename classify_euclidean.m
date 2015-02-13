[len, c] = size(X_tst);

pred = [];

for i=1:len
    pt = [X_tst(i), Y_tst(i), Z_tst(i)];
    d0 = compute_avg_dist(pt, zeros);
    d1 = compute_avg_dist(pt, ones);
    d2 = compute_avg_dist(pt, twos);
    d3 = compute_avg_dist(pt, threes);
    d4 = compute_avg_dist(pt, fours);
    d5 = compute_avg_dist(pt, fives);
    d6 = compute_avg_dist(pt, sixes);
    d7 = compute_avg_dist(pt, sevens);
    d8 = compute_avg_dist(pt, eights);
    d9 = compute_avg_dist(pt, nines);
    
    arr = [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9];
    [mn, ix] = my_min(arr);
    pred = [pred; (ix-1)];
end
