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
