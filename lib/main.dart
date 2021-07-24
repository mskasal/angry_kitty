import 'dart:io';

import 'package:flutter/material.dart';
import 'package:process_run/cmd_run.dart';
import 'package:window_to_front/window_to_front.dart';
import 'github_oauth_credentials.dart';
import 'src/github_login.dart';
import 'src/github_summary.dart';

findApp() async {
  // var result = await Process.run(
  //     'echo', ['-i', 'main', 'github_oauth_credentials.dart']);

  // stdout.write(result.stdout);
  // stderr.write(result.stderr);

  try {
    var result = await runExecutableArguments(
      'sh',
      ['bash/commandExist.sh', 'firebase', '-v'],
      workingDirectory: './',
      verbose: false,
    );
    print(result.exitCode);
    print(result.stderr);
  } catch (e) {
    print(e);
  }
}

findFile() async {
  String directory = Directory('/').path;
  List<FileSystemEntity> files =
      Directory(directory).listSync(recursive: false);

  List<String> filePaths = [];
  for (var fileSystemEntity in files) {
    print(fileSystemEntity.path);

    if (fileSystemEntity.path.contains('main')) {
      filePaths.add(fileSystemEntity.path);
    }
  }

  print(filePaths);
}

void main() {
  runApp(MyApp());
  findApp();
  // findFile();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub GraphQL API Client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'GitHub GraphQL API Client'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
      builder: (context, client) {
        WindowToFront.activate();
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: GitHubSummary(client: client),
        );
      },
      githubClientId: githubClientId,
      githubClientSecret: githubClientSecret,
      githubScopes: githubScopes,
    );
  }
}
