part of '../fhir_dart.dart';

/// Any restrictions on medication substitution
/// Indicates whether or not substitution can or should be part of the dispense. In some cases, substitution must happen, in other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified substitution may be done.
class MedicationRequestSubstitution extends BackboneElement
    implements FhirResource {
  /// Whether substitution is allowed or not
  /// True if the prescriber allows a different drug to be dispensed from what was prescribed.
  /// This element is labeled as a modifier because whether substitution is allow or not, it cannot be ignored.
  final bool? allowedBoolean;

  /// Whether substitution is allowed or not
  /// True if the prescriber allows a different drug to be dispensed from what was prescribed.
  /// This element is labeled as a modifier because whether substitution is allow or not, it cannot be ignored.
  final CodeableConcept? allowedCodeableConcept;

  /// Why should (not) substitution be made
  /// Indicates the reason for the substitution, or why substitution must or must not be performed.
  final CodeableConcept? reason;
  MedicationRequestSubstitution({
    this.allowedBoolean,
    this.allowedCodeableConcept,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.reason,
  });

  @override
  factory MedicationRequestSubstitution.fromJson(Map<String, dynamic> json) {
    return MedicationRequestSubstitution(
      allowedBoolean: json['allowedBoolean'] as bool?,
      allowedCodeableConcept: json['allowedCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['allowedCodeableConcept'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'allowedBoolean': allowedBoolean,
        'allowedCodeableConcept': allowedCodeableConcept?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'reason': reason?.toJson(),
      };

  @override
  MedicationRequestSubstitution copyWith({
    bool? allowedBoolean,
    CodeableConcept? allowedCodeableConcept,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? reason,
  }) {
    return MedicationRequestSubstitution(
      allowedBoolean: allowedBoolean ?? this.allowedBoolean,
      allowedCodeableConcept:
          allowedCodeableConcept ?? this.allowedCodeableConcept,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reason: reason ?? this.reason,
    );
  }
}
