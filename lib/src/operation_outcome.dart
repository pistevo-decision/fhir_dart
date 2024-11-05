part of '../fhir_dart.dart';

/// Can result from the failure of a REST call or be part of the response message returned from a request message.
/// A collection of error, warning, or information messages that result from a system action.
class OperationOutcome extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'OperationOutcome';

  /// A single issue associated with the action
  /// An error, warning, or information message that results from a system action.
  final List<OperationOutcomeIssue> issue;
  OperationOutcome({
    super.contained,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    required this.issue,
    super.language,
    super.meta,
    super.modifierExtension,
    super.text,
  });

  @override
  factory OperationOutcome.fromJson(Map<String, dynamic> json) {
    return OperationOutcome(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      issue: (json['issue'] as List<dynamic>)
          .map((e) => OperationOutcomeIssue.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'issue': issue.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  OperationOutcome copyWith({
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    List<OperationOutcomeIssue>? issue,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Narrative? text,
  }) {
    return OperationOutcome(
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      issue: issue ?? this.issue,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      text: text ?? this.text,
    );
  }
}
