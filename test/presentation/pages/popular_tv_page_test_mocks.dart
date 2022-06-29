import 'dart:async' as _i6;
import 'dart:ui' as _i7;

import 'package:core/utils/state_enum.dart' as _i4;
import 'package:core/domain/entities/tv_entities.dart' as _i5;
import 'package:core/domain/usecases/get_popular_tv.dart' as _i2;
import 'package:core/presentation/provider/popular_tv_notifier.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

class _FakeGetPopularTv_0 extends _i1.Fake implements _i2.GetPopularTv {}

/// A class which mocks [PopularTvNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockPopularTvNotifier extends _i1.Mock implements _i3.PopularTvNotifier {
  MockPopularTvNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetPopularTv get getPopularTv =>
      (super.noSuchMethod(Invocation.getter(#getPopularTv),
          returnValue: _FakeGetPopularTv_0()) as _i2.GetPopularTv);
  @override
  _i4.RequestState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _i4.RequestState.Empty) as _i4.RequestState);
  @override
  List<_i5.Tv> get tv =>
      (super.noSuchMethod(Invocation.getter(#tv), returnValue: <_i5.Tv>[])
          as List<_i5.Tv>);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i6.Future<void> fetchPopularTv() =>
      (super.noSuchMethod(Invocation.method(#fetchPopularTv, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
  @override
  void addListener(_i7.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i7.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
