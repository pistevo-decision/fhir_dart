part of '../fhir_dart.dart';

/// A test executed from the test script.
class TestReportTest extends BackboneElement implements FhirResource {
  /// A test operation or assert that was performed
  /// Action would contain either an operation or an assertion.
  /// An action should contain either an operation or an assertion but not both.  It can contain any number of variables.
  final List<TestReportTestAction> action;

  /// Tracking/reporting short description of the test
  /// A short description of the test used by test engines for tracking and reporting purposes.
  final String? description;

  /// Tracking/logging name of this test
  /// The name of this test used for tracking/logging purposes by test engines.
  final String? name;
  TestReportTest({
    required this.action,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
  });

  @override
  factory TestReportTest.fromJson(Map<String, dynamic> json) {
    return TestReportTest(
      action: (json['action'] as List<dynamic>)
          .map((e) =>
              TestReportTestAction.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'action': action.map((e) => e.toJson()).toList(),
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
      };

  @override
  TestReportTest copyWith({
    List<TestReportTestAction>? action,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
  }) {
    return TestReportTest(
      action: action ?? this.action,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
    );
  }
}
