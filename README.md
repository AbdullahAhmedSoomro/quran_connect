# QuranConnect

Connecting to the Quran

## Contribution

- Create a branch for the issue that has been assigned to you (git checkout -b issue/issue-title)
- Commit your Changes (git commit -m 'Added some amazing feature')
- Push to the origin Branch (git push origin issue/issue-title)
- Create a Pull Request to master.
- Link your Pull Request to the issue.
- Request a review from the team.

## Getting Started / Code GuideLines

- Whenever making a new screen, add Route in the `AppRoute` Class.
- Use `GoRouter` for Navigation logic.
- For Material Widgets Styling, we are using CustomTheme.
- Put widget in shared folder if the widget is shared between 2 or more screens.
- Make a class _Private if it is not shared or does not needed to be exposed for other classes
- Keep the code loosely coupled and highly cohesive.
- Never use dependencies directly in the widgets, prefer to create a service class and use it in the widget.
- Never leave the data types as `dynamic` or `Object`.
- Prefer named parameters over positional parameters.
- Use Camel Case convention for class and enum names.
- Name (classes, variables, functions, modules) in a meaningful name which describe its functionality.
- Make sure that all .dart files are formatted using flutter format command.

## Architecture Diagram

```
                                       +-----------------+
                                       |                 |
+------+  Events  +------+  Request    |                 |
|      +--------->|      +------------>|                 |
|  UI  |          | Bloc |             |   Repository    |
|      <----------+      <-------------+                 |
+------+  States  +------+  Response   |                 |
                                       |                 |
                                       +-------^-----+---+
                                               |     |
                                      Response |     |  Request
                                               |     |
                                       +-------+-----v--+
                                       |                |
                             Class     | +------------+ |
                  +-------+  Object    | |API Provider| |
                  |       +----------->| +------------+ |
                  | Model |            |                |
                  |       <------------+   +--------+   |
                  +-------+   Json     |   |Local DB|   |
                                       |   +--------+   |
                                       |                |
                                       +----------------+
```
Credits: [asciiflow](https://asciiflow.com/)

## Directory Structure

```
lib
├── data
│   ├── app.dart
│   ├── models
│   |   ├── model_name.dart
│   |   ├── model_name.freezed.dart
│   |   └── model_name.g.dart
├── api
│   ├── app.dart // export all the api classes
│   └── example_api.dart
├── repository
│   ├── app.dart // export all the repository classes
|   └── example_repo.dart
│   ├── repository
|   └── utils
├── domain
│   ├── models
|   └── repository
├── presentation
│   ├── service
│   ├── shared
│   ├── theme
│   ├── utils
│   ├── widgets
|   └── screen
└── main.dart
```
