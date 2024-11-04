part of '../fhir_dart.dart';

/// One or more teardown operations to perform
/// The teardown action will only contain an operation.
/// An action should contain either an operation or an assertion but not both.  It can contain any number of variables.
class TestScriptTeardownAction extends BackboneElement implements FhirResource {
  /// The teardown operation to perform
  /// An operation would involve a REST request to a server.
  final TestScriptSetupActionOperation operation;
  TestScriptTeardownAction({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.operation,
  });

  @override
  factory TestScriptTeardownAction.fromJson(Map<String, dynamic> json) {
    return TestScriptTeardownAction(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      operation: TestScriptSetupActionOperation.fromJson(
          json['operation'] as Map<String, dynamic>),
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
  TestScriptTeardownAction copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    TestScriptSetupActionOperation? operation,
  }) {
    return TestScriptTeardownAction(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
    );
  }
}
