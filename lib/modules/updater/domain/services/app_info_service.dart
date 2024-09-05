import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:mcquenji_versioning/modules/updater/updater.dart';

/// Service providing information about the app.
abstract class AppInfoService extends Service {
  @override
  String get name => 'Versioning';

  /// Gets the current  [Version].
  Future<Version> getCurrentVersion();

  /// Gets the current [ReleaseChannel].
  Future<ReleaseChannel> getCurrentReleaseChannel();
}
