#include <iostream>

// we don't even need a header file for such a
// useless function
double add(double, double, double);

int main() {
  // "lispy"
  std::cout << add(add(1, 2, 3), add(4, 5, add(6, 7, 8)),
                   add(9, 10, add(11, 12, add(13, 14, 15))))
            << '\n';
}
