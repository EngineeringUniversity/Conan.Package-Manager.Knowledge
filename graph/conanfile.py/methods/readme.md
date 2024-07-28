# [Use the layout() method¶](https://docs.conan.io/2/tutorial/consuming_packages/the_flexibility_of_conanfile_py.html#use-the-layout-method)

>In the previous examples, every time we executed a conan install command, we had to use the –output-folder 

>There’s no need to always write this logic in the conanfile.py. There are some pre-defined layouts you can import and directly use in your recipe. For example, for the CMake case, there’s a cmake_layout() already defined in Conan:

```python
from conan.tools.cmake import cmake_layout

class CompressorRecipe(ConanFile):
    ...
    def layout(self):
        cmake_layout(self)
```

# [Use the validate() method to raise an error for non-supported configurations¶](https://docs.conan.io/2/tutorial/consuming_packages/the_flexibility_of_conanfile_py.html#use-the-validate-method-to-raise-an-error-for-non-supported-configurations)

>you can use it to perform checks of the input settings. If, for example, your project does not support armv8 architecture on macOS you can raise the ConanInvalidConfiguration exception to make Conan return with a special error code. 

# [Use the generate() method to copy resources from packages¶](https://docs.conan.io/2/tutorial/consuming_packages/the_flexibility_of_conanfile_py.html#use-the-generate-method-to-copy-resources-from-packages)

example:
>For a complete example of how to import files from a package in the generate() method, you can refer to the blog post about using the Dear ImGui library <https://blog.conan.io/2019/06/26/An-introduction-to-the-Dear-ImGui-library.html>, which demonstrates how to import bindings for the library depending on the graphics API.
