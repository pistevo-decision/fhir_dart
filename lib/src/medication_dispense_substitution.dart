part of '../fhir_dart.dart';

/// Whether a substitution was performed on the dispense
/// Indicates whether or not substitution was made as part of the dispense.  In some cases, substitution will be expected but does not happen, in other cases substitution is not expected but does happen.  This block explains what substitution did or did not happen and why.  If nothing is specified, substitution was not done.
class MedicationDispenseSubstitution extends BackboneElement
    implements FhirResource {
  /// Why was substitution made
  /// Indicates the reason for the substitution (or lack of substitution) from what was prescribed.
  final List<CodeableConcept>? reason;

  /// Who is responsible for the substitution
  /// The person or organization that has primary responsibility for the substitution.
  final List<Reference>? responsibleParty;

  /// Code signifying whether a different drug was dispensed from what was prescribed
  /// A code signifying whether a different drug was dispensed from what was prescribed.
  final CodeableConcept? type;

  /// Whether a substitution was or was not performed on the dispense
  /// True if the dispenser dispensed a different drug or product from what was prescribed.
  final bool wasSubstituted;
  MedicationDispenseSubstitution({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.reason,
    this.responsibleParty,
    this.type,
    required this.wasSubstituted,
  });

  @override
  factory MedicationDispenseSubstitution.fromJson(Map<String, dynamic> json) {
    return MedicationDispenseSubstitution(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      responsibleParty: (json['responsibleParty'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      wasSubstituted: json['wasSubstituted'] as bool,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'reason': reason?.map((e) => e.toJson()).toList(),
        'responsibleParty': responsibleParty?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
        'wasSubstituted': wasSubstituted,
      };

  @override
  MedicationDispenseSubstitution copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<CodeableConcept>? reason,
    List<Reference>? responsibleParty,
    CodeableConcept? type,
    bool? wasSubstituted,
  }) {
    return MedicationDispenseSubstitution(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reason: reason ?? this.reason,
      responsibleParty: responsibleParty ?? this.responsibleParty,
      type: type ?? this.type,
      wasSubstituted: wasSubstituted ?? this.wasSubstituted,
    );
  }
}
