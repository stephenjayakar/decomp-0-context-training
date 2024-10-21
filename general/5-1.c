typedef struct {
    int x, y;
} City;

int f1(City a, City b) {
    int dx = b.x - a.x;
    int dy = b.y - a.y;
    return dx * dx + dy * dy;
}

int f2(int n, City cities[], int path[], int current, int visited) {
    int minDistance, i, newDist, newVisited, newCurrent;
    int returnDistance, distances[100];
    if (visited == (1 << n) - 1) {
        return f1(cities[current], cities[0]);
    }
    minDistance = 2147483647;
    for (i = 0; i < n; i++) {
        if (!(visited & (1 << i))) {
            path[current] = i;
            newCurrent = i;
            newVisited = visited | (1 << i);
            returnDistance = f2(n, cities, path, newCurrent, newVisited);
            newDist = f1(cities[current], cities[newCurrent]) + returnDistance;
            if (newDist < minDistance) {
                minDistance = newDist;
            }
        }
    }
    return minDistance;
}
