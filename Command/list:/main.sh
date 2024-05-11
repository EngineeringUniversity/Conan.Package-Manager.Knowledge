# Tutorial, from: https://docs.conan.io/2/tutorial/consuming_packages/build_simple_cmake_project.html
conan profile detect --force

conan profile path default

conan install . --output-folder=build --build=missing

conan config home

conan profile show
