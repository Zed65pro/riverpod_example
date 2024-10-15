# my_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



pages->
-> api
-> model
->controller
->state_object
->provider
-> view
->widget

state object is a model with all states aka loading, items etc
view will most likely be a consumerWidget which uses ref.watch controller provider

to make rebuild on a specific part wrap with Consumer(builder(context,ref,child) {})
basically works like Obx here you can watch in this consumer scope to rebild this specific part
according to only the ref watch inside it


SCOPE:

in main we do ProviderScope


if you use code gen then provider is AutoDispose automatically otherwise need to explicitly state that, autoDispose basically makes a provider be disposed if the page its defined in is popped,

However if you want to override an instance of a provider (multiple instances) do something like ProviderScope(overrides: [counterNotifierProvider], child: const WaitingScreen())

Basically creating an extra layer of (scope). and you explicitly mention that you want to override that particular provider.



To start code gen automatically use the command: dart run build_runner watch

after every save it will listen to changes and generate new code if necessary


