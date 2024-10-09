// Mocks generated by Mockito 5.4.4 from annotations
// in firmware_updater/test/test_utils.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:io' as _i6;
import 'dart:ui' as _i8;

import 'package:firmware_updater/device_model.dart' as _i9;
import 'package:firmware_updater/device_store.dart' as _i10;
import 'package:firmware_updater/fwupd_dbus_service.dart' as _i3;
import 'package:firmware_updater/fwupd_notifier.dart' as _i7;
import 'package:fwupd/fwupd.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFwupdDevice_0 extends _i1.SmartFake implements _i2.FwupdDevice {
  _FakeFwupdDevice_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FwupdDbusService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFwupdDbusService extends _i1.Mock implements _i3.FwupdDbusService {
  MockFwupdDbusService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get userAgent => (super.noSuchMethod(
        Invocation.getter(#userAgent),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#userAgent),
        ),
      ) as String);

  @override
  _i2.FwupdStatus get status => (super.noSuchMethod(
        Invocation.getter(#status),
        returnValue: _i2.FwupdStatus.unknown,
      ) as _i2.FwupdStatus);

  @override
  int get percentage => (super.noSuchMethod(
        Invocation.getter(#percentage),
        returnValue: 0,
      ) as int);

  @override
  String get daemonVersion => (super.noSuchMethod(
        Invocation.getter(#daemonVersion),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#daemonVersion),
        ),
      ) as String);

  @override
  _i5.Stream<_i2.FwupdDevice> get deviceAdded => (super.noSuchMethod(
        Invocation.getter(#deviceAdded),
        returnValue: _i5.Stream<_i2.FwupdDevice>.empty(),
      ) as _i5.Stream<_i2.FwupdDevice>);

  @override
  _i5.Stream<_i2.FwupdDevice> get deviceChanged => (super.noSuchMethod(
        Invocation.getter(#deviceChanged),
        returnValue: _i5.Stream<_i2.FwupdDevice>.empty(),
      ) as _i5.Stream<_i2.FwupdDevice>);

  @override
  _i5.Stream<_i2.FwupdDevice> get deviceRemoved => (super.noSuchMethod(
        Invocation.getter(#deviceRemoved),
        returnValue: _i5.Stream<_i2.FwupdDevice>.empty(),
      ) as _i5.Stream<_i2.FwupdDevice>);

  @override
  _i5.Stream<_i2.FwupdDevice> get deviceRequest => (super.noSuchMethod(
        Invocation.getter(#deviceRequest),
        returnValue: _i5.Stream<_i2.FwupdDevice>.empty(),
      ) as _i5.Stream<_i2.FwupdDevice>);

  @override
  _i5.Stream<List<String>> get propertiesChanged => (super.noSuchMethod(
        Invocation.getter(#propertiesChanged),
        returnValue: _i5.Stream<List<String>>.empty(),
      ) as _i5.Stream<List<String>>);

  @override
  bool get onBattery => (super.noSuchMethod(
        Invocation.getter(#onBattery),
        returnValue: false,
      ) as bool);

  @override
  void registerErrorListener(dynamic Function(Exception)? errorListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerErrorListener,
          [errorListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerConfirmationListener(
          _i5.Future<bool> Function()? confirmationListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerConfirmationListener,
          [confirmationListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> refreshProperties() => (super.noSuchMethod(
        Invocation.method(
          #refreshProperties,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> activate(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #activate,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> clearResults(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #clearResults,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<List<_i2.FwupdDevice>> getDevices() => (super.noSuchMethod(
        Invocation.method(
          #getDevices,
          [],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdDevice>>.value(<_i2.FwupdDevice>[]),
      ) as _i5.Future<List<_i2.FwupdDevice>>);

  @override
  _i5.Future<List<_i2.FwupdRelease>> getDowngrades(_i2.FwupdDevice? device) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDowngrades,
          [device],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdRelease>>.value(<_i2.FwupdRelease>[]),
      ) as _i5.Future<List<_i2.FwupdRelease>>);

  @override
  _i5.Future<List<_i2.FwupdPlugin>> getPlugins() => (super.noSuchMethod(
        Invocation.method(
          #getPlugins,
          [],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdPlugin>>.value(<_i2.FwupdPlugin>[]),
      ) as _i5.Future<List<_i2.FwupdPlugin>>);

  @override
  _i5.Future<List<_i2.FwupdRelease>> getReleases(_i2.FwupdDevice? device) =>
      (super.noSuchMethod(
        Invocation.method(
          #getReleases,
          [device],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdRelease>>.value(<_i2.FwupdRelease>[]),
      ) as _i5.Future<List<_i2.FwupdRelease>>);

  @override
  _i5.Future<List<_i2.FwupdRemote>> getRemotes() => (super.noSuchMethod(
        Invocation.method(
          #getRemotes,
          [],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdRemote>>.value(<_i2.FwupdRemote>[]),
      ) as _i5.Future<List<_i2.FwupdRemote>>);

  @override
  _i5.Future<List<_i2.FwupdRelease>> getUpgrades(_i2.FwupdDevice? device) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpgrades,
          [device],
        ),
        returnValue:
            _i5.Future<List<_i2.FwupdRelease>>.value(<_i2.FwupdRelease>[]),
      ) as _i5.Future<List<_i2.FwupdRelease>>);

  @override
  _i5.Future<void> install(
    _i2.FwupdDevice? device,
    _i2.FwupdRelease? release, [
    _i6.ResourceHandle Function(_i6.RandomAccessFile)? resourceHandleFromFile,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #install,
          [
            device,
            release,
            resourceHandleFromFile,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> unlock(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #unlock,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> verify(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #verify,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> verifyUpdate(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #verifyUpdate,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> reboot() => (super.noSuchMethod(
        Invocation.method(
          #reboot,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [FwupdNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockFwupdNotifier extends _i1.Mock implements _i7.FwupdNotifier {
  MockFwupdNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FwupdStatus get status => (super.noSuchMethod(
        Invocation.getter(#status),
        returnValue: _i2.FwupdStatus.unknown,
      ) as _i2.FwupdStatus);

  @override
  int get percentage => (super.noSuchMethod(
        Invocation.getter(#percentage),
        returnValue: 0,
      ) as int);

  @override
  String get version => (super.noSuchMethod(
        Invocation.getter(#version),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#version),
        ),
      ) as String);

  @override
  bool get onBattery => (super.noSuchMethod(
        Invocation.getter(#onBattery),
        returnValue: false,
      ) as bool);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);

  @override
  _i5.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void registerErrorListener(dynamic Function(Exception)? errorListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerErrorListener,
          [errorListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerConfirmationListener(
          _i5.Future<bool> Function()? confirmationListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerConfirmationListener,
          [confirmationListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerDeviceRequestListener(
          dynamic Function(_i2.FwupdDevice)? deviceRequestListener) =>
      super.noSuchMethod(
        Invocation.method(
          #registerDeviceRequestListener,
          [deviceRequestListener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<void> refresh() => (super.noSuchMethod(
        Invocation.method(
          #refresh,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void addListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DeviceModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeviceModel extends _i1.Mock implements _i9.DeviceModel {
  MockDeviceModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FwupdDevice get device => (super.noSuchMethod(
        Invocation.getter(#device),
        returnValue: _FakeFwupdDevice_0(
          this,
          Invocation.getter(#device),
        ),
      ) as _i2.FwupdDevice);

  @override
  bool get onBattery => (super.noSuchMethod(
        Invocation.getter(#onBattery),
        returnValue: false,
      ) as bool);

  @override
  bool get hasUpgrade => (super.noSuchMethod(
        Invocation.getter(#hasUpgrade),
        returnValue: false,
      ) as bool);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);

  @override
  _i5.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> update(_i2.FwupdDevice? device) => (super.noSuchMethod(
        Invocation.method(
          #update,
          [device],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> verify() => (super.noSuchMethod(
        Invocation.method(
          #verify,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> verifyUpdate() => (super.noSuchMethod(
        Invocation.method(
          #verifyUpdate,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> install(_i2.FwupdRelease? release) => (super.noSuchMethod(
        Invocation.method(
          #install,
          [release],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void addListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DeviceStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeviceStore extends _i1.Mock implements _i10.DeviceStore {
  MockDeviceStore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get showReleases => (super.noSuchMethod(
        Invocation.getter(#showReleases),
        returnValue: false,
      ) as bool);

  @override
  set showReleases(bool? value) => super.noSuchMethod(
        Invocation.setter(
          #showReleases,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i2.FwupdDevice> get devices => (super.noSuchMethod(
        Invocation.getter(#devices),
        returnValue: <_i2.FwupdDevice>[],
      ) as List<_i2.FwupdDevice>);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);

  @override
  int indexOf(String? deviceId) => (super.noSuchMethod(
        Invocation.method(
          #indexOf,
          [deviceId],
        ),
        returnValue: 0,
      ) as int);

  @override
  _i5.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> refresh() => (super.noSuchMethod(
        Invocation.method(
          #refresh,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> dispose() => (super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void addListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
