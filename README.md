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

and works normally without having to use something like obx to wrap around changes


SCOPE:

in main we do ProviderScope


if you use code gen then provider is AutoDispose automatically otherwise need to explicitly state that, autoDispose basically makes a provider be disposed if the page its defined in is popped,

However if you want to override an instance of a provider (multiple instances) do something like ProviderScope(overrides: [counterNotifierProvider], child: const WaitingScreen())

Basically creating an extra layer of (scope). and you explicitly mention that you want to override that particular provider.
