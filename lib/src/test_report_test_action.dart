part of '../fhir_dart.dart';

/// A test operation or assert that was performed
/// Action would contain either an operation or an assertion.
/// An action should contain either an operation or an assertion but not both.  It can contain any number of variables.
class TestReportTestAction extends BackboneElement implements FhirResource {
  /// The assertion performed
  /// The results of the assertion performed on the previous operations.
  final TestReportSetupActionAssert? fhirAssert;

  /// The operation performed
  /// An operation would involve a REST request to a server.
  final TestReportSetupActionOperation? operation;
  TestReportTestAction({
    this.fhirAssert,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.operation,
  });

  @override
  factory TestReportTestAction.fromJson(Map<String, dynamic> json) {
    return TestReportTestAction(
      fhirAssert: json['assert'] != null
          ? TestReportSetupActionAssert.fromJson(
              (json['assert'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      operation: json['operation'] != null
          ? TestReportSetupActionOperation.fromJson(
              (json['operation'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'assert': fhirAssert?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'operation': operation?.toJson(),
      };

  @override
  TestReportTestAction copyWith({
    TestReportSetupActionAssert? fhirAssert,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    TestReportSetupActionOperation? operation,
  }) {
    return TestReportTestAction(
      fhirAssert: fhirAssert ?? this.fhirAssert,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
    );
  }
}
