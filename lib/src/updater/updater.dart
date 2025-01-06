import 'package:flutter_modular/flutter_modular.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

import 'presentation/presentation.dart';
import 'utils/utils.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';
export 'utils/utils.dart';

/// Modules for automtically updating the app.
///
/// To use this module, you need to register the required services using [InjectorUpdaterX.setupReleasesRepository].
///
/// ```dart
/// class AppModule extends Module {
///   @override
///   List<Module> get imports => [
///     UpdaterModule(),
///  ];
///
///  @override
///  void binds(i) {
///   i.setupReleasesRepository(
///     appInfoService: MyAppInfoService.new,
///     releasesDatasource: MyReleasesDatasource.new,
///     patchService: MyPatchService.new,
///   );
///  }
/// }
/// ```
class UpdaterModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void exportedBinds(Injector i) {
    i.addRepository<ReleasesRepository>(ReleasesRepository.new);
  }

  @override
  void routes(RouteManager r) {}
}
