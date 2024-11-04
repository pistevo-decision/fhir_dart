part of '../fhir_dart.dart';

/// The product's name, including full name and possibly coded parts.
class MedicinalProductName extends BackboneElement implements FhirResource {
  /// Country where the name applies.
  final List<MedicinalProductNameCountryLanguage>? countryLanguage;

  /// Coding words or phrases of the name.
  final List<MedicinalProductNameNamePart>? namePart;

  /// The full product name.
  final String productName;
  MedicinalProductName({
    this.countryLanguage,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.namePart,
    required this.productName,
  });

  @override
  factory MedicinalProductName.fromJson(Map<String, dynamic> json) {
    return MedicinalProductName(
      countryLanguage: (json['countryLanguage'] as List<dynamic>?)
          ?.map((e) => MedicinalProductNameCountryLanguage.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      namePart: (json['namePart'] as List<dynamic>?)
          ?.map((e) =>
              MedicinalProductNameNamePart.fromJson(e as Map<String, dynamic>))
          .toList(),
      productName: json['productName'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'countryLanguage': countryLanguage?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'namePart': namePart?.map((e) => e.toJson()).toList(),
        'productName': productName,
      };

  @override
  MedicinalProductName copyWith({
    List<MedicinalProductNameCountryLanguage>? countryLanguage,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<MedicinalProductNameNamePart>? namePart,
    String? productName,
  }) {
    return MedicinalProductName(
      countryLanguage: countryLanguage ?? this.countryLanguage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      namePart: namePart ?? this.namePart,
      productName: productName ?? this.productName,
    );
  }
}
