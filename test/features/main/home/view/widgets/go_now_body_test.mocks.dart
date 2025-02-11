// Mocks generated by Mockito 5.4.4 from annotations
// in motels/test/features/main/home/view/widgets/go_now_body_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:ui' as _i6;

import 'package:flutter/material.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i4;
import 'package:motels/app_exports.dart' as _i3;

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

class _FakePageController_0 extends _i1.SmartFake
    implements _i2.PageController {
  _FakePageController_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeValueNotifier_1<T> extends _i1.SmartFake
    implements _i2.ValueNotifier<T> {
  _FakeValueNotifier_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [HomeViewModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeViewModel extends _i1.Mock implements _i3.HomeViewModel {
  MockHomeViewModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<String> get itemsFilter => (super.noSuchMethod(
        Invocation.getter(#itemsFilter),
        returnValue: <String>[],
      ) as List<String>);

  @override
  List<String> get favoriteTempList => (super.noSuchMethod(
        Invocation.getter(#favoriteTempList),
        returnValue: <String>[],
      ) as List<String>);

  @override
  _i2.PageController get pageController => (super.noSuchMethod(
        Invocation.getter(#pageController),
        returnValue: _FakePageController_0(
          this,
          Invocation.getter(#pageController),
        ),
      ) as _i2.PageController);

  @override
  _i2.ValueNotifier<bool> get screenLoaded => (super.noSuchMethod(
        Invocation.getter(#screenLoaded),
        returnValue: _FakeValueNotifier_1<bool>(
          this,
          Invocation.getter(#screenLoaded),
        ),
      ) as _i2.ValueNotifier<bool>);

  @override
  set screenLoaded(_i2.ValueNotifier<bool>? _screenLoaded) =>
      super.noSuchMethod(
        Invocation.setter(
          #screenLoaded,
          _screenLoaded,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i3.MotelModel> get motelList => (super.noSuchMethod(
        Invocation.getter(#motelList),
        returnValue: <_i3.MotelModel>[],
      ) as List<_i3.MotelModel>);

  @override
  List<String> get selectedFilter => (super.noSuchMethod(
        Invocation.getter(#selectedFilter),
        returnValue: <String>[],
      ) as List<String>);

  @override
  int get selectedIndex => (super.noSuchMethod(
        Invocation.getter(#selectedIndex),
        returnValue: 0,
      ) as int);

  @override
  String get selectedInitialDate => (super.noSuchMethod(
        Invocation.getter(#selectedInitialDate),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#selectedInitialDate),
        ),
      ) as String);

  @override
  String get selectedFinalDate => (super.noSuchMethod(
        Invocation.getter(#selectedFinalDate),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#selectedFinalDate),
        ),
      ) as String);

  @override
  String get selectedCity => (super.noSuchMethod(
        Invocation.getter(#selectedCity),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#selectedCity),
        ),
      ) as String);

  @override
  set selectedCity(String? value) => super.noSuchMethod(
        Invocation.setter(
          #selectedCity,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set selectedInitialDate(String? value) => super.noSuchMethod(
        Invocation.setter(
          #selectedInitialDate,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set selectedFinalDate(String? value) => super.noSuchMethod(
        Invocation.setter(
          #selectedFinalDate,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  _i5.Future<void> setupConfigs() => (super.noSuchMethod(
        Invocation.method(
          #setupConfigs,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void toggleTempFavorite(String? motelName) => super.noSuchMethod(
        Invocation.method(
          #toggleTempFavorite,
          [motelName],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setSelectedIndex(int? index) => super.noSuchMethod(
        Invocation.method(
          #setSelectedIndex,
          [index],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void toggleFilter(String? filter) => super.noSuchMethod(
        Invocation.method(
          #toggleFilter,
          [filter],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void clearFilters() => super.noSuchMethod(
        Invocation.method(
          #clearFilters,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i6.VoidCallback? listener) => super.noSuchMethod(
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
