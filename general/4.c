void fizzbuzz(int n, void (*output)(const char*)) {
    int i;
    for (i = 1; i <= n; i++) {
        int fizz = i % 3 == 0;
        int buzz = i % 5 == 0;
        if (fizz && buzz) {
            output("FizzBuzz\n");
        } else if (fizz) {
            output("Fizz\n");
        } else if (buzz) {
            output("Buzz\n");
        } else {
            char buf[12];  // Large enough for any 32-bit int
            int len = 0, num = i, div = 1000000000;
            while (div > 0) {
                int digit = num / div;
                num %= div;
                div /= 10;
                if (len > 0 || digit > 0 || div == 0) {
                    buf[len++] = '0' + digit;
                }
            }
            buf[len++] = '\n';
            buf[len] = '\0';
            output(buf);
        }
    }
}
