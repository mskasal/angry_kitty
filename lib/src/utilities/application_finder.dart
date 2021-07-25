import 'package:angry_kitty/src/utilities/types.dart';
import 'package:process_run/cmd_run.dart';

Stream<BashStatus?> applicationFinder(
    {required String applicationName}) async* {
  yield BashStatus.starting;
  try {
    yield BashStatus.loading;
    var result = await runExecutableArguments(
      'sh',
      ['bash/whichApp.sh', applicationName],
    );

    yield bashResultMap[result.exitCode];
  } catch (_) {
    yield BashStatus.error;
  }
}
