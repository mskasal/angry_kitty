import 'package:angry_kitty/src/utilities/utilities.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
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
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // StreamBuilder(
            //   stream:
            //       applicationFinder(applicationName: 'com.microsoft.VSCode'),
            //   builder:
            //       (BuildContext context, AsyncSnapshot<BashStatus?> snapshot) {
            //     if (snapshot.data == BashStatus.loading) {
            //       return CircularProgressIndicator();
            //     } else if (snapshot.data == BashStatus.found) {
            //       return Text(snapshot.data.toString());
            //     } else {
            //       return Text('Nope');
            //     }
            //   },
            // ),
            // StreamBuilder(
            //   stream: commandFinder(commandName: 'code'),
            //   builder:
            //       (BuildContext context, AsyncSnapshot<BashStatus?> snapshot) {
            //     if (snapshot.data == BashStatus.loading) {
            //       return CircularProgressIndicator();
            //     } else if (snapshot.data == BashStatus.found) {
            //       return Text(snapshot.data.toString());
            //     } else {
            //       return Text('Nope');
            //     }
            //   },
            // ),
            // StreamBuilder(
            //   stream: fileFinder(
            //       fileDirectory:
            //           '/Users/samed/Documents/Projects/Grover/angry_kitty/lib',
            //       fileName: 'main'),
            //   builder:
            //       (BuildContext context, AsyncSnapshot<FileStatus?> snapshot) {
            //     if (snapshot.data == FileStatus.loading) {
            //       return CircularProgressIndicator();
            //     } else if (snapshot.data == FileStatus.found) {
            //       return Text(snapshot.data.toString());
            //     } else {
            //       return Text('Nope');
            //     }
            //   },
            // ),
            // StreamBuilder(
            //   stream: packageInstaller(package: Package.OnePassword),
            //   builder: (BuildContext context,
            //       AsyncSnapshot<InstallerStatus?> snapshot) {
            //     if (snapshot.data == InstallerStatus.loading) {
            //       return CircularProgressIndicator();
            //     } else if (snapshot.data == InstallerStatus.found) {
            //       return Text(snapshot.data.toString());
            //     } else {
            //       return Text('Nope');
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
    // return GithubLoginWidget(
    //   builder: (context, client) {
    //     WindowToFront.activate();
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: Text(title),
    //       ),
    //       body: Column(
    //         children: [
    //           StreamBuilder(
    //             stream: applicationFinder(applicationName: 'App Store'),
    //             builder:
    //                 (BuildContext context, AsyncSnapshot<BashStatus> snapshot) {
    //               if (snapshot.hasData) {
    //                 return Text(snapshot.data.toString());
    //               } else {
    //                 return CircularProgressIndicator();
    //               }
    //             },
    //           )
    //         ],
    //       ),
    //     );
    //   },
    //   githubClientId: githubClientId,
    //   githubClientSecret: githubClientSecret,
    //   githubScopes: githubScopes,
    // );
  }
}
