Vim-coc can read compile_commands.json that can be exported
by CMake to resolve paths. It's generated inside the build
dir and needs to be copyied to the root dir of the project.
Close neovim and re-enter should be able to trigger indexing.

Add we finally add a .gitignore

```bash
# make a few sh to simplify the process
chmode +x *.sh

# bring a library from github, add commit changes
git submodule add https://github.com/glfw/glfw.git external/glfw

cmake -S. -Bbuild
make -Cbuild
./build/hello

# manual init submodules
# git submodule update --init --recursive
```
