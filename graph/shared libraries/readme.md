# options: linking the application dependencies as shared libraries
https://docs.conan.io/2/tutorial/consuming_packages/different_configurations.html#modifying-options-linking-the-application-dependencies-as-shared-libraries
>Options are defined per-package. In this case we were defining that we wanted that specific version of zlib/1.2.11 as a shared library. If we had other dependencies and we want all of our dependencies (whenever possible) as shared libraries, we would use -o *:shared=True, with the * pattern that matches all package references.
