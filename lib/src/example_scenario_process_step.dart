part of '../fhir_dart.dart';

/// Each step of the process.
class ExampleScenarioProcessStep extends BackboneElement
    implements FhirResource {
  /// Alternate non-typical step action
  /// Indicates an alternative step that can be taken instead of the operations on the base step in exceptional/atypical circumstances.
  final List<ExampleScenarioProcessStepAlternative>? alternative;

  /// Each interaction or action.
  final ExampleScenarioProcessStepOperation? operation;

  /// If there is a pause in the flow.
  final bool? pause;

  /// Nested process.
  final List<ExampleScenarioProcess>? process;
  ExampleScenarioProcessStep({
    this.alternative,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.operation,
    this.pause,
    this.process,
  });

  @override
  factory ExampleScenarioProcessStep.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioProcessStep(
      alternative: (json['alternative'] as List<dynamic>?)
          ?.map((e) => ExampleScenarioProcessStepAlternative.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      operation: json['operation'] != null
          ? ExampleScenarioProcessStepOperation.fromJson(
              json['operation'] as Map<String, dynamic>)
          : null,
      pause: json['pause'] as bool?,
      process: (json['process'] as List<dynamic>?)
          ?.map(
              (e) => ExampleScenarioProcess.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'alternative': alternative?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'operation': operation?.toJson(),
        'pause': pause,
        'process': process?.map((e) => e.toJson()).toList(),
      };

  @override
  ExampleScenarioProcessStep copyWith({
    List<ExampleScenarioProcessStepAlternative>? alternative,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    ExampleScenarioProcessStepOperation? operation,
    bool? pause,
    List<ExampleScenarioProcess>? process,
  }) {
    return ExampleScenarioProcessStep(
      alternative: alternative ?? this.alternative,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      pause: pause ?? this.pause,
      process: process ?? this.process,
    );
  }
}
