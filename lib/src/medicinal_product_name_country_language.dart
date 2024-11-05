part of '../fhir_dart.dart';

/// Country where the name applies.
class MedicinalProductNameCountryLanguage extends BackboneElement
    implements FhirResource {
  /// Country code for where this name applies.
  final CodeableConcept country;

  /// Jurisdiction code for where this name applies.
  final CodeableConcept? jurisdiction;

  /// Language code for this name.
  final CodeableConcept language;
  MedicinalProductNameCountryLanguage({
    required this.country,
    super.fhirExtension,
    super.id,
    this.jurisdiction,
    required this.language,
    super.modifierExtension,
  });

  @override
  factory MedicinalProductNameCountryLanguage.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductNameCountryLanguage(
      country: CodeableConcept.fromJson(
          (json['country'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      jurisdiction: json['jurisdiction'] != null
          ? CodeableConcept.fromJson(
              (json['jurisdiction'] as Map).cast<String, dynamic>())
          : null,
      language: CodeableConcept.fromJson(
          (json['language'] as Map).cast<String, dynamic>()),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'country': country.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'jurisdiction': jurisdiction?.toJson(),
        'language': language.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  MedicinalProductNameCountryLanguage copyWith({
    CodeableConcept? country,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? jurisdiction,
    CodeableConcept? language,
    List<Extension>? modifierExtension,
  }) {
    return MedicinalProductNameCountryLanguage(
      country: country ?? this.country,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
