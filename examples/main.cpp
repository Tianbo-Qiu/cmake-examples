#include "config.h"
#include <cmath>
#include <iostream>
#ifdef USE_MYMATH
#include "MathFunctions.h"
#endif

int main(int argc, char *argv[]) {
  std::cout << "hello world\n";
  std::cout << argv[0] << " Version " << Examples_VERSION_MAJOR << "."
            << Examples_VERSION_MINOR << std::endl;
  const double inputValue = std::stod(argv[1]);
#ifdef USE_MYMATH
  const double outputValue = mysqrt(inputValue);
  std::cout << "use mysqrt\n";
#else
  const double outputValue = std::sqrt(inputValue);
  std::cout << "use std:mysqrt\n";
#endif
}
