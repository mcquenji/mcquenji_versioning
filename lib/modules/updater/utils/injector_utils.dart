import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mcquenji_versioning/modules/updater/updater.dart';

extension InjectorUptaterX on Injector {
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
