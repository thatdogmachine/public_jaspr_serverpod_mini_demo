# Jaspr & Serverpod-mini Demonstration Repository


## Overview

This mono-repo demonstrates a Jaspr & Serverpod-mini installation. It was created after experiencing difficulties attempting to consume the following resources during early August 2024:

[Setup Guide](https://pub.dev/documentation/jaspr_serverpod/latest/topics/Setup-topic.html)

[Basic Example](https://github.com/schultek/jaspr/tree/main/examples/backend_serverpod)

[Full Demo Project](https://github.com/schultek/jaspr/tree/main/apps/dart_quotes_server)


## Nix

This project is `nix-shell` enabled. You should be able to get necessary components installed by launching it. [Install Nix](https://nix.dev/install-nix) provides instructions if you wish to perform the install & config process that way.

If you do not have nix-shell installed and cannot or do not want to, review the contents of `shell.nix` to understand what it is deploying, and take appropriate action for your use case.


## Prerequisite install & config

If you chose the mentioned `nix-shell` approach, you should be able to skip to `Repo creation`

https://docs.flutter.dev/get-started/install version 3.22.x

which is potentially made easier using:

https://fvm.app/documentation/getting-started

Once you have Flutter & Dart successfully installed, you need to activate some components:

    dart pub global activate serverpod_cli 2.0.2
    dart pub global activate jaspr_cli 0.13.3

While there should be no actions that need to be completed from there to run this demo, the associated [Serverpod](https://docs.serverpod.dev) & [Serverpod mini](https://medium.com/serverpod/getting-started-with-serverpod-mini-58c71ffefa54) docs are available.


## Repo creation

This root & all sub folders were initialised via:

    serverpod create jaspr_serverpod_mini_demo --mini

It should hopefully be obvious: you only need to complete that step if you attempt to recreate this demo project using some other name.

See the `README.md` in each of the sub folders for specific actions, where captured, for each of those components.
