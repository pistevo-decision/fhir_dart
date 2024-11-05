part of '../fhir_dart.dart';

/// A series of required clean up steps
/// A series of operations required to clean up after all the tests are executed (successfully or otherwise).
class TestScriptTeardown extends BackboneElement implements FhirResource {
  /// One or more teardown operations to perform
  /// The teardown action will only contain an operation.
  /// An action should contain either an operation or an assertion but not both.  It can contain any number of variables.
  final List<TestScriptTeardownAction> action;
  TestScriptTeardown({
    required this.action,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory TestScriptTeardown.fromJson(Map<String, dynamic> json) {
    return TestScriptTeardown(
      action: (json['action'] as List<dynamic>)
          .map((e) => TestScriptTeardownAction.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'action': action.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  TestScriptTeardown copyWith({
    List<TestScriptTeardownAction>? action,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return TestScriptTeardown(
      action: action ?? this.action,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
