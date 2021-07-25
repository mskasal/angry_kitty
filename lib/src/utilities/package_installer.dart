import 'package:angry_kitty/src/utilities/types.dart';
import 'package:process_run/cmd_run.dart';

enum Package { OnePassword }

Map<Package, String> packagesMap = {
  Package.OnePassword: 'op_apple_universal_v1.11.2.pkg'
};

onError(error) {
  print(error);
}

Stream<InstallerStatus?> packageInstaller({required Package package}) async* {
  yield InstallerStatus.starting;
  try {
    yield InstallerStatus.loading;
    var process = await runExecutableArguments(
      "osascript",
      [
        "-e",
        "do shell script \"installer -allowUntrusted -pkg installs/${packagesMap[package]} -target / \" with administrator privileges",
      ],
    ).catchError(onError);

    yield installerResultMap[process.exitCode];
  } catch (_) {
    yield InstallerStatus.error;
  }
}
