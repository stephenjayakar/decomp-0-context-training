void countingSort(int arr[], int n, int exp) {
    int output[20];
    int count[10] = {0};
    int i = 0;

    for (i = 0; i < n; i++)
        count[(arr[i] / exp) % 10]++;

    for (i = 0; i < 10; i++)
        count[i] += count[i - 1];

    for (i = n - 1; i >= 0; i--) {
        output[count[(arr[i] / exp) % 10] - 1] = arr[i];
        count[(arr[i] / exp) % 10]--;
    }

    for (i = 0; i < n; i++)
        arr[i] = output[i];
}

void radixSort(int arr[], int n) {
    int maxVal = arr[0];
    int exp = 1;
    int i = 0;
    for (i = 1; i < n; i++) {
      if (arr[i] > maxVal) {
        maxVal = arr[i];
      }
    }

    for (exp; maxVal / exp > 0; exp *= 10) {
        countingSort(arr, n, exp);
    }
}
