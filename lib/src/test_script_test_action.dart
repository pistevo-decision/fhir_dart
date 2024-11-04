part of '../fhir_dart.dart';

 /// A test operation or assert to perform
 /// Action would contain either an operation or an assertion.
 /// An action should contain either an operation or an assertion but not both.  It can contain any number of variables.
class TestScriptTestAction extends BackboneElement implements FhirResource {
   /// The setup assertion to perform
   /// Evaluates the results of previous operations to determine if the server under test behaves appropriately.
   /// In order to evaluate an assertion, the request, response, and results of the most recently executed operation must always be maintained by the test engine.
  final TestScriptSetupActionAssert? fhirAssert;
   /// The setup operation to perform
   /// An operation would involve a REST request to a server.
  final TestScriptSetupActionOperation? operation;
  TestScriptTestAction({
    this.fhirAssert,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.operation,
  });
  
  @override
  factory TestScriptTestAction.fromJson(Map<String, dynamic> json) {
    return TestScriptTestAction(
      fhirAssert: json['assert'] != null ? TestScriptSetupActionAssert.fromJson(json['assert'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      operation: json['operation'] != null ? TestScriptSetupActionOperation.fromJson(json['operation'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'assert': fhirAssert?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'operation': operation?.toJson(),
    };
  
  @override
  TestScriptTestAction copyWith({
    TestScriptSetupActionAssert? fhirAssert,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    TestScriptSetupActionOperation? operation,
  }) {
    return TestScriptTestAction(
      fhirAssert: fhirAssert ?? this.fhirAssert,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
    );
  }
}
