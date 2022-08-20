Vim-coc can read compile_commands.json that can be exported
by CMake to resolve paths. It's generated inside the build
dir and needs to be copyied to the root dir of the project.
Close neovim and re-enter should be able to trigger indexing.

```bash
cmake -S. -Bbuild
make -Cbuild
./build/hello
```
