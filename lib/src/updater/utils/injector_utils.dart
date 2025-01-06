import 'package:flutter_modular/flutter_modular.dart';
import 'package:mcquenji_versioning/src/updater/updater.dart';

/// Extension for the Injector class to setup the updater module.
extension InjectorUpdaterX on Injector {
  /// Sets up the updater module with the required services.
  void setupReleasesRepository({
    required Function appInfoService,
    required Function releasesDatasource,
    required Function patchService,
  }) {
    add<AppInfoService>(appInfoService);
    add<ReleasesDatasource>(releasesDatasource);
    add<PatchService>(patchService);
  }
}
