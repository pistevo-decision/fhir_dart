part of '../fhir_dart.dart';

/// Each major process - a group of operations.
class ExampleScenarioProcess extends BackboneElement implements FhirResource {
  /// A longer description of the group of operations.
  final String? description;

  /// Description of final status after the process ends.
  final String? postConditions;

  /// Description of initial status before the process starts.
  final String? preConditions;

  /// Each step of the process.
  final List<ExampleScenarioProcessStep>? step;

  /// The diagram title of the group of operations.
  final String title;
  ExampleScenarioProcess({
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.postConditions,
    this.preConditions,
    this.step,
    required this.title,
  });

  @override
  factory ExampleScenarioProcess.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioProcess(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      postConditions: json['postConditions'] as String?,
      preConditions: json['preConditions'] as String?,
      step: (json['step'] as List<dynamic>?)
          ?.map((e) =>
              ExampleScenarioProcessStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'postConditions': postConditions,
        'preConditions': preConditions,
        'step': step?.map((e) => e.toJson()).toList(),
        'title': title,
      };

  @override
  ExampleScenarioProcess copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? postConditions,
    String? preConditions,
    List<ExampleScenarioProcessStep>? step,
    String? title,
  }) {
    return ExampleScenarioProcess(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      postConditions: postConditions ?? this.postConditions,
      preConditions: preConditions ?? this.preConditions,
      step: step ?? this.step,
      title: title ?? this.title,
    );
  }
}
