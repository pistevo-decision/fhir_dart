part of '../fhir_dart.dart';

 /// A test in this script.
class TestScriptTest extends BackboneElement implements FhirResource {
   /// A test operation or assert to perform
   /// Action would contain either an operation or an assertion.
   /// An action should contain either an operation or an assertion but not both.  It can contain any number of variables.
  final List<TestScriptTestAction> action;
   /// Tracking/reporting short description of the test
   /// A short description of the test used by test engines for tracking and reporting purposes.
  final String? description;
   /// Tracking/logging name of this test
   /// The name of this test used for tracking/logging purposes by test engines.
  final String? name;
  TestScriptTest({
    required this.action,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
  });
  
  @override
  factory TestScriptTest.fromJson(Map<String, dynamic> json) {
    return TestScriptTest(
      action: (json['action'] as List<dynamic>).map((e) => TestScriptTestAction.fromJson(e as Map<String, dynamic>)).toList(),
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'action': action.map((e) => e.toJson()).toList(),
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
    };
  
  @override
  TestScriptTest copyWith({
    List<TestScriptTestAction>? action,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
  }) {
    return TestScriptTest(
      action: action ?? this.action,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
    );
  }
}
