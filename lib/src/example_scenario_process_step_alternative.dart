part of '../fhir_dart.dart';

/// Alternate non-typical step action
/// Indicates an alternative step that can be taken instead of the operations on the base step in exceptional/atypical circumstances.
class ExampleScenarioProcessStepAlternative extends BackboneElement
    implements FhirResource {
  /// A human-readable description of each option
  /// A human-readable description of the alternative explaining when the alternative should occur rather than the base step.
  final String? description;

  /// What happens in each alternative option.
  final List<ExampleScenarioProcessStep>? step;

  /// Label for alternative
  /// The label to display for the alternative that gives a sense of the circumstance in which the alternative should be invoked.
  final String title;
  ExampleScenarioProcessStepAlternative({
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.step,
    required this.title,
  });

  @override
  factory ExampleScenarioProcessStepAlternative.fromJson(
      Map<String, dynamic> json) {
    return ExampleScenarioProcessStepAlternative(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
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
        'step': step?.map((e) => e.toJson()).toList(),
        'title': title,
      };

  @override
  ExampleScenarioProcessStepAlternative copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<ExampleScenarioProcessStep>? step,
    String? title,
  }) {
    return ExampleScenarioProcessStepAlternative(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      step: step ?? this.step,
      title: title ?? this.title,
    );
  }
}
