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

1. run `git clone https://github.com/dhik-a/flutter_clean_starter.git`
2. `cd <folder-name>`
3. Install [fvm](https://fvm.app/) and [melos](https://pub.dev/packages/melos)
4. Make sure you are at the root folder of the project then run `fvm use <your-preferred-flutter-version>` (as of now, this repo use Flutter 3.27.1)
5. Replace the name of the project with your desired name in `melos.yaml`
6. Run `melos bootstrap` to install dependencies
7. Run `melos generate` to generate code
