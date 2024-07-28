# Use the layout() method
https://docs.conan.io/2/tutorial/consuming_packages/the_flexibility_of_conanfile_py.html#use-the-layout-method
>In the previous examples, every time we executed a conan install command, we had to use the –output-folder 

>There’s no need to always write this logic in the conanfile.py. There are some pre-defined layouts you can import and directly use in your recipe. For example, for the CMake case, there’s a cmake_layout() already defined in Conan:

```
from conan.tools.cmake import cmake_layout

class CompressorRecipe(ConanFile):
    ...
    def layout(self):
        cmake_layout(self)
```
