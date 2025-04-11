# Flutter Clean Starter

Starter project for Flutter with Clean Architecture and modular approach.

Libraries used:

* [fvm](https://fvm.app/) for flutter version management
* [melos](https://pub.dev/packages/melos) for multi-packages management
* [auto_route](https://pub.dev/packages/auto_route) for navigation
* [flutter_bloc](https://pub.dev/packages/flutter_bloc) for state management
* [get_it](https://pub.dev/packages/get_it) for dependency injection
* [freezed](https://pub.dev/packages/freezed) for code generation

## Getting Started

1. Make sure you have Flutter installed already. Check [here](https://docs.flutter.dev/get-started/install?gad_source=1&gbraid=0AAAAAC-INI8onKbjZvE-G3I3NBTgz2uLl&gclid=CjwKCAjw--K_BhB5EiwAuwYoyjtHEmjOuO4YJ-qBJl-u4TiGTLB9ENdRTWeUA-3HXeqh2i-97DBgMhoCcN8QAvD_BwE&gclsrc=aw.ds) for guide.
2. run `git clone https://github.com/dhik-a/flutter_clean_starter.git`
3. `cd <folder-name>`
4. Install [fvm](https://fvm.app/) and [melos](https://pub.dev/packages/melos)
5. Make sure you are at the root folder of the project
6. Run `fvm use <your-preferred-flutter-version>`
7. Replace the name of the project with your desired name in `melos.yaml`
8. Run `dart pub global activate melos` to install melos
9. Run `melos bootstrap` to install dependencies
10. Run `melos generate` to generate code
