import 'package:serverpod/serverpod.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_serverpod_mini_demo_server/src/web/routes/root.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

// This file will be generated when running `jaspr serve` later.
import 'jaspr_options.dart';

void run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
    authenticationHandler: auth.authenticationHandler,
  );

  Jaspr.initializeApp(options: defaultJasprOptions, useIsolates: false);

  // If you are using any future calls, they need to be registered here.
  // pod.registerFutureCall(ExampleFutureCall(), 'exampleFutureCall');

  pod.webServer.addRoute(auth.RouteGoogleSignIn(), '/googlesignin');
  pod.webServer.addRoute(RootRoute(), '/*');

  // Start the server.
  await pod.start();
}