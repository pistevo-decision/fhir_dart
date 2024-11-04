part of '../fhir_dart.dart';

/// The results of the series of required setup operations before the tests were executed.
class TestReportSetup extends BackboneElement implements FhirResource {
  /// A setup operation or assert that was executed
  /// Action would contain either an operation or an assertion.
  /// An action should contain either an operation or an assertion but not both.  It can contain any number of variables.
  final List<TestReportSetupAction> action;
  TestReportSetup({
    required this.action,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory TestReportSetup.fromJson(Map<String, dynamic> json) {
    return TestReportSetup(
      action: (json['action'] as List<dynamic>)
          .map((e) => TestReportSetupAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
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
  TestReportSetup copyWith({
    List<TestReportSetupAction>? action,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return TestReportSetup(
      action: action ?? this.action,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
