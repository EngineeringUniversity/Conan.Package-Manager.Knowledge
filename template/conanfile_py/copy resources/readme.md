# Tutorial:
[Use the generate() method to copy resources from packages](https://docs.conan.io/2/tutorial/consuming_packages/the_flexibility_of_conanfile_py.html#use-the-generate-method-to-copy-resources-from-packages)

```python
import os
from conan import ConanFile
from conan.tools.files import copy

class MyProject(ConanFile):

    ...

    def generate(self):
        # Copy all resources from the dependency's resource directory
        # to the "assets" folder in the source directory of your project
        dep = self.dependencies["dep_name"]
        copy(self, "*", dep.cpp_info.resdirs[0], os.path.join(self.source_folder, "assets"))
```

For a complete example of how to import files from a package in the generate() method, you can refer to the blog post about using the Dear ImGui library <https://blog.conan.io/2019/06/26/An-introduction-to-the-Dear-ImGui-library.html>, which demonstrates how to import bindings for the library depending on the graphics API.
