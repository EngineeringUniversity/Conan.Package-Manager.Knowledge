# Tutorial
https://docs.conan.io/2/tutorial/consuming_packages/the_flexibility_of_conanfile_py.html#use-the-layout-method

# example:
conanfile.py
```python
from conan.tools.cmake import cmake_layout

class CompressorRecipe(ConanFile):

    def layout(self):
        cmake_layout(self)
```
