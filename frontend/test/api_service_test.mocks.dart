// Mocks generated by Mockito 5.4.4 from annotations
// in frontend/test/api_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:frontend/remote/api_service.dart' as _i3;
import 'package:frontend/remote/entities/requests/login_request.dart' as _i5;
import 'package:frontend/remote/entities/requests/register_request.dart' as _i6;
import 'package:frontend/remote/entities/requests/request_header.dart' as _i7;
import 'package:http/http.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

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

class _FakeResponse_0 extends _i1.SmartFake implements _i2.Response {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiService extends _i1.Mock implements _i3.ApiService {
  MockApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Response> login(_i5.LoginRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [request],
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #login,
            [request],
          ),
        )),
      ) as _i4.Future<_i2.Response>);

  @override
  _i4.Future<_i2.Response> register(_i6.RegisterRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #register,
          [request],
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #register,
            [request],
          ),
        )),
      ) as _i4.Future<_i2.Response>);

  @override
  _i4.Future<_i2.Response> getAvailableTimeSlots(
          _i7.RequestHeader? requestHeader) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAvailableTimeSlots,
          [requestHeader],
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #getAvailableTimeSlots,
            [requestHeader],
          ),
        )),
      ) as _i4.Future<_i2.Response>);
}
