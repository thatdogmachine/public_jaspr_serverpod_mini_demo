# jaspr_serverpod_mini_demo_server

## Overview

This folder contains the Server

This guide assumes you already followed the [parent folder README.md](../README.md) - start there before attempting these steps

## Prerequisite installs

There should be no prerequisite installs needed if you successfully completed the previous steps

## Running Jaspr & Serverpod
Using the Jaspr integration, the server should be started locally with:

    cd jaspr_serverpod_mini_demo_server

    jaspr serve

In a new terminal window:

    curl http://localhost:8282 -v

Or more realistically, [click here](http://localhost:8282) or lanuch in your browser. NOTE: This demo has been tested and seen working in Chrome `127.0.6533.89`. It has also been tested in Safari `17.6` with __mixed results__ - the counter not being possible to increment.

## Expected terminal output

If everything started as expected, you should see output like:

    jaspr serve

    [CLI] Running jaspr in server rendering mode.
    ✓ [CLI] Done building web assets. (4.5s)
    ✓ [CLI] Server started. (3ms)
    [SERVER] SERVERPOD version: 2.0.2, dart: 3.4.3 (stable) (Tue Jun 4 19:51:39 2024 +0000) on "macos_arm64", time: 2024-08-03 23:43:06.980176Z
    [SERVER] mode: development, role: monolith, logging: normal, serverId: default
    [SERVER] Server default listening on port 8280
    [SERVER] No webserver relic templates found, template directory path: "web/templates".
    [SERVER] Webserver listening on port 8282

Http requests to the server should generate logs like:

    [SERVER] METHOD CALL: webserver. duration: 18ms numQueries: 0 authenticatedUser: null

Http requests to the server from Safari may generate logs like:

    [SERVER] METHOD CALL: webserver. duration: 4ms numQueries: 0 authenticatedUser: null
    [SERVER] [ERROR] ERROR - 2024-08-04 01:17:21.211106
    [SERVER] [ERROR] GET /@http://localhost:8282/components/counter.client.dart.bootstrap.js
    [SERVER] [ERROR] Error thrown by handler.
    [SERVER] [ERROR] FormatException: Scheme not starting with alphabetic character (at character 1)
    [SERVER] [ERROR] @http://localhost:8282/components/counter.client.dart.bootstrap.js
    [SERVER] [ERROR] ^
    [SERVER] [ERROR] 
    [SERVER] [ERROR] dart:core                                        _SimpleUri.resolve
    [SERVER] [ERROR] package:shelf_proxy/shelf_proxy.dart 42:28       proxyHandler.<fn>
    [SERVER] [ERROR] package:shelf_gzip/src/gzip_encoding.dart 51:44  createGzipMiddleware.<fn>.<fn>.<fn>
    [SERVER] [ERROR] dart:async                                       new Future.sync
    [SERVER] [ERROR] package:shelf_gzip/src/gzip_encoding.dart 51:21  createGzipMiddleware.<fn>.<fn>
    [SERVER] METHOD CALL: webserver. duration: 1ms numQueries: 0 authenticatedUser: null


## Next steps

The world is your oyster. Season to taste...

## Serverpod auto generated readme contents

These instructions can be ignored, but are left here for completeness. Since this is Serverpod __mini__ the `docker` commands make no sense - we are using the __web server__ for the __Jaspr__ integration demo, and have the __api server__ available for extension of the demonstration.

rsync -av --exclude='.git' ../jaspr_serverpod_mini_demo_server .

This is the starting point for your Serverpod server.

To run your server, you first need to start Postgres and Redis. It's easiest to do with Docker.

    docker compose up --build --detach

Then you can start the Serverpod server.

    dart bin/main.dart

When you are finished, you can shut down Serverpod with `Ctrl-C`, then stop Postgres and Redis.

    docker compose stop
