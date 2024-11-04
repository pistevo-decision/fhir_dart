part of '../fhir_dart.dart';

 /// Certification, licenses, or training pertaining to the provision of care
 /// The official certifications, training, and licenses that authorize or otherwise pertain to the provision of care by the practitioner.  For example, a medical license issued by a medical board authorizing the practitioner to practice medicine within a certian locality.
class PractitionerQualification extends BackboneElement implements FhirResource {
   /// Coded representation of the qualification.
  final CodeableConcept code;
   /// An identifier for this qualification for the practitioner
   /// An identifier that applies to this person's qualification in this role.
  final List<Identifier>? identifier;
   /// Organization that regulates and issues the qualification.
  final Reference? issuer;
   /// Period during which the qualification is valid.
  final Period? period;
  PractitionerQualification({
    required this.code,
    super.fhirExtension,
    super.id,
    this.identifier,
    this.issuer,
    super.modifierExtension,
    this.period,
  });
  
  @override
  factory PractitionerQualification.fromJson(Map<String, dynamic> json) {
    return PractitionerQualification(
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      issuer: json['issuer'] != null ? Reference.fromJson(json['issuer'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'issuer': issuer?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'period': period?.toJson(),
    };
  
  @override
  PractitionerQualification copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    Reference? issuer,
    List<Extension>? modifierExtension,
    Period? period,
  }) {
    return PractitionerQualification(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      issuer: issuer ?? this.issuer,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
    );
  }
}
