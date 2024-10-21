int minimax(int depth, int nodeIndex, int isMaximizingPlayer, int scores[], int h) {
    int best;
    int i;

    if (depth == h) {
        return scores[nodeIndex];
    }
    
    if (isMaximizingPlayer) {
        best = -1000; // Assume -infinity
        for (i = 0; i < 2; i++) {
            int val = minimax(depth + 1, nodeIndex * 2 + i, 0, scores, h);
            if (val > best) {
                best = val;
            }
        }
        return best;
    } else {
        best = 1000; // Assume +infinity
        for (i = 0; i < 2; i++) {
            int val = minimax(depth + 1, nodeIndex * 2 + i, 1, scores, h);
            if (val < best) {
                best = val;
            }
        }
        return best;
    }
}