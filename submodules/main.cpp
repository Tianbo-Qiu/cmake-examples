#include <GLFW/glfw3.h>
#include <add.h>
#include <iostream>

int main() {
  std::cout << add(1, 2, 3) << '\n';
  GLFWwindow *window;

  if (!glfwInit()) {
    fprintf(stderr, "Failed to initialize GLFW\n");
    exit(EXIT_FAILURE);
  }

  window = glfwCreateWindow(300, 300, "Gears", NULL, NULL);
  if (!window) {
    fprintf(stderr, "Failed to open GLFW window\n");
    glfwTerminate();
    exit(EXIT_FAILURE);
  }

  // Main loop
  while (!glfwWindowShouldClose(window)) {
    glfwSwapBuffers(window);
    glfwPollEvents();
  }

  glfwTerminate();

  return 0;
}
