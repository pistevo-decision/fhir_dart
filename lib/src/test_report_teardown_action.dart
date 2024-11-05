part of '../fhir_dart.dart';

/// One or more teardown operations performed
/// The teardown action will only contain an operation.
/// An action should contain either an operation or an assertion but not both.  It can contain any number of variables.
class TestReportTeardownAction extends BackboneElement implements FhirResource {
  /// The teardown operation performed
  /// An operation would involve a REST request to a server.
  final TestReportSetupActionOperation operation;
  TestReportTeardownAction({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.operation,
  });

  @override
  factory TestReportTeardownAction.fromJson(Map<String, dynamic> json) {
    return TestReportTeardownAction(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      operation: TestReportSetupActionOperation.fromJson(
          (json['operation'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'operation': operation.toJson(),
      };

  @override
  TestReportTeardownAction copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    TestReportSetupActionOperation? operation,
  }) {
    return TestReportTeardownAction(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
    );
  }
}
