part of '../fhir_dart.dart';

 /// The results of running the series of required clean up steps
 /// The results of the series of operations required to clean up after all the tests were executed (successfully or otherwise).
class TestReportTeardown extends BackboneElement implements FhirResource {
   /// One or more teardown operations performed
   /// The teardown action will only contain an operation.
   /// An action should contain either an operation or an assertion but not both.  It can contain any number of variables.
  final List<TestReportTeardownAction> action;
  TestReportTeardown({
    required this.action,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory TestReportTeardown.fromJson(Map<String, dynamic> json) {
    return TestReportTeardown(
      action: (json['action'] as List<dynamic>).map((e) => TestReportTeardownAction.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'action': action.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  TestReportTeardown copyWith({
    List<TestReportTeardownAction>? action,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return TestReportTeardown(
      action: action ?? this.action,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
