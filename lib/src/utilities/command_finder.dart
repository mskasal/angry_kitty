import 'package:angry_kitty/src/utilities/types.dart';
import 'package:process_run/cmd_run.dart';

Stream<BashStatus?> commandFinder({required String commandName}) async* {
  yield BashStatus.starting;
  try {
    yield BashStatus.loading;
    var result = await runExecutableArguments(
      'sh',
      ['bash/commandExist.sh', commandName],
    );

    yield bashResultMap[result.exitCode];
  } catch (_) {
    yield BashStatus.error;
  }
}
