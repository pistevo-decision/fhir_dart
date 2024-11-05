part of '../fhir_dart.dart';

/// Educational material presented to patient
/// Educational material presented to the patient (or guardian) at the time of vaccine administration.
class ImmunizationEducation extends BackboneElement implements FhirResource {
  /// Educational material document identifier
  /// Identifier of the material presented to the patient.
  final String? documentType;

  /// Educational material presentation date
  /// Date the educational material was given to the patient.
  final String? presentationDate;

  /// Educational material publication date
  /// Date the educational material was published.
  final String? publicationDate;

  /// Educational material reference pointer
  /// Reference pointer to the educational material given to the patient if the information was on line.
  final String? reference;
  ImmunizationEducation({
    this.documentType,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.presentationDate,
    this.publicationDate,
    this.reference,
  });

  @override
  factory ImmunizationEducation.fromJson(Map<String, dynamic> json) {
    return ImmunizationEducation(
      documentType: json['documentType'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      presentationDate: json['presentationDate'] as String?,
      publicationDate: json['publicationDate'] as String?,
      reference: json['reference'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'documentType': documentType,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'presentationDate': presentationDate,
        'publicationDate': publicationDate,
        'reference': reference,
      };

  @override
  ImmunizationEducation copyWith({
    String? documentType,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? presentationDate,
    String? publicationDate,
    String? reference,
  }) {
    return ImmunizationEducation(
      documentType: documentType ?? this.documentType,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      presentationDate: presentationDate ?? this.presentationDate,
      publicationDate: publicationDate ?? this.publicationDate,
      reference: reference ?? this.reference,
    );
  }
}
