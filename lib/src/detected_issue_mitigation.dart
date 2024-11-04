part of '../fhir_dart.dart';

/// Step taken to address
/// Indicates an action that has been taken or is committed to reduce or eliminate the likelihood of the risk identified by the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that may reduce/eliminate the need for any action.
class DetectedIssueMitigation extends BackboneElement implements FhirResource {
  /// What mitigation?
  /// Describes the action that was taken or the observation that was made that reduces/eliminates the risk associated with the identified issue.
  /// The "text" component can be used for detail or when no appropriate code exists.
  final CodeableConcept action;

  /// Who is committing?
  /// Identifies the practitioner who determined the mitigation and takes responsibility for the mitigation step occurring.
  final Reference? author;

  /// Date committed
  /// Indicates when the mitigating action was documented.
  /// This might not be the same as when the mitigating step was actually taken.
  final String? date;
  DetectedIssueMitigation({
    required this.action,
    this.author,
    this.date,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory DetectedIssueMitigation.fromJson(Map<String, dynamic> json) {
    return DetectedIssueMitigation(
      action: CodeableConcept.fromJson(json['action'] as Map<String, dynamic>),
      author: json['author'] != null
          ? Reference.fromJson(json['author'] as Map<String, dynamic>)
          : null,
      date: json['date'] as String?,
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
        'action': action.toJson(),
        'author': author?.toJson(),
        'date': date,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  DetectedIssueMitigation copyWith({
    CodeableConcept? action,
    Reference? author,
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return DetectedIssueMitigation(
      action: action ?? this.action,
      author: author ?? this.author,
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
