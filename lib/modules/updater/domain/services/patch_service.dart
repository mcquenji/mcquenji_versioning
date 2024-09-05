import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:mcquenji_versioning/modules/updater/updater.dart';

abstract class PatchService extends Service {
  @override
  String get name => 'Patch';

  /// Installs the given [release] by applying the necessary patches.
  /// Returns a stream of the progress of the installation.
  ///
  /// If [canApplyPatch] returns `false`, this method will throw an [ManualInstallRequiredException].
  Stream<double> applyPatch(Release release, Version currentVersion, ReleaseChannel currentChannel);

  /// Checks if the given [release] can be applied to the current version.
  /// Returns `true` if the patch can be applied, `false` otherwise.
  ///
  /// If the patch cannot be applied, the [applyPatch] method should not be called and will throw an [ManualInstallRequiredException].
  /// In this case use [getManualInstructions] to get manual installation instructions to show to the user instead.
  bool canApplyPatch(Release release, Version currentVersion, ReleaseChannel currentChannel);

  /// Gets the manual installation instructions for the given [release] in markdown format.
  ///
  /// Used when [canApplyPatch] returns `false`.
  String getManualInstructions(Release release, Version currentVersion, ReleaseChannel currentChannel);
}

/// Exception thrown when a patch cannot be applied and manual installation is required.
///
/// The [instructions] contain the manual installation instructions in markdown format.
class ManualInstallRequiredException implements Exception {
  /// The manual installation instructions in markdown format.
  final String instructions;

  /// Exception thrown when a patch cannot be applied and manual installation is required.
  ManualInstallRequiredException(this.instructions);

  @override
  String toString() => 'ManualInstallRequiredException: Cannot apply patch. Manual installation required.\n$instructions';
}
