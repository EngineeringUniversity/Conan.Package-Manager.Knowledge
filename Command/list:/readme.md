>When you call a Conan command setting the --profile argument, Conan will take all the information from the profile and apply it to the packages you want to build or install. If you don’t specify that argument it’s equivalent to call it with --profile=default. These two commands will behave the same:
```
conan install . --build=missing
conan install . --build=missing --profile=default
```
