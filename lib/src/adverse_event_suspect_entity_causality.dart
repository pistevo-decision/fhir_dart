part of '../fhir_dart.dart';

/// Information on the possible cause of the event.
class AdverseEventSuspectEntityCausality extends BackboneElement
    implements FhirResource {
  /// Assessment of if the entity caused the event.
  final CodeableConcept? assessment;

  /// AdverseEvent.suspectEntity.causalityAuthor.
  final Reference? author;

  /// ProbabilityScale | Bayesian | Checklist.
  final CodeableConcept? method;

  /// AdverseEvent.suspectEntity.causalityProductRelatedness.
  final String? productRelatedness;
  AdverseEventSuspectEntityCausality({
    this.assessment,
    this.author,
    super.fhirExtension,
    super.id,
    this.method,
    super.modifierExtension,
    this.productRelatedness,
  });

  @override
  factory AdverseEventSuspectEntityCausality.fromJson(
      Map<String, dynamic> json) {
    return AdverseEventSuspectEntityCausality(
      assessment: json['assessment'] != null
          ? CodeableConcept.fromJson(json['assessment'] as Map<String, dynamic>)
          : null,
      author: json['author'] != null
          ? Reference.fromJson(json['author'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      productRelatedness: json['productRelatedness'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'assessment': assessment?.toJson(),
        'author': author?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'method': method?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'productRelatedness': productRelatedness,
      };

  @override
  AdverseEventSuspectEntityCausality copyWith({
    CodeableConcept? assessment,
    Reference? author,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? method,
    List<Extension>? modifierExtension,
    String? productRelatedness,
  }) {
    return AdverseEventSuspectEntityCausality(
      assessment: assessment ?? this.assessment,
      author: author ?? this.author,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productRelatedness: productRelatedness ?? this.productRelatedness,
    );
  }
}
