part of '../fhir_dart.dart';

/// A pharmaceutical product described in terms of its composition and dose form.
class MedicinalProductPharmaceutical extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'MedicinalProductPharmaceutical';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// The administrable dose form, after necessary reconstitution.
  final CodeableConcept administrableDoseForm;

  /// Characteristics e.g. a products onset of action.
  final List<MedicinalProductPharmaceuticalCharacteristics>? characteristics;

  /// Accompanying device.
  final List<Reference>? device;

  /// An identifier for the pharmaceutical medicinal product.
  final List<Identifier>? identifier;

  /// Ingredient.
  final List<Reference>? ingredient;

  /// The path by which the pharmaceutical product is taken into or makes contact with the body.
  final List<MedicinalProductPharmaceuticalRouteOfAdministration>
      routeOfAdministration;

  /// Todo.
  final CodeableConcept? unitOfPresentation;
  MedicinalProductPharmaceutical({
    required this.administrableDoseForm,
    this.characteristics,
    super.contained,
    this.device,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.ingredient,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.routeOfAdministration,
    super.text,
    this.unitOfPresentation,
  });

  @override
  factory MedicinalProductPharmaceutical.fromJson(Map<String, dynamic> json) {
    return MedicinalProductPharmaceutical(
      administrableDoseForm: CodeableConcept.fromJson(
          (json['administrableDoseForm'] as Map).cast<String, dynamic>()),
      characteristics: (json['characteristics'] as List<dynamic>?)
          ?.map((e) => MedicinalProductPharmaceuticalCharacteristics.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      device: (json['device'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      routeOfAdministration: (json['routeOfAdministration'] as List<dynamic>)
          .map((e) =>
              MedicinalProductPharmaceuticalRouteOfAdministration.fromJson(
                  (e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      unitOfPresentation: json['unitOfPresentation'] != null
          ? CodeableConcept.fromJson(
              (json['unitOfPresentation'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'administrableDoseForm': administrableDoseForm.toJson(),
        'characteristics': characteristics?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'device': device?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'ingredient': ingredient?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'routeOfAdministration':
            routeOfAdministration.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'unitOfPresentation': unitOfPresentation?.toJson(),
      };

  @override
  MedicinalProductPharmaceutical copyWith({
    CodeableConcept? administrableDoseForm,
    List<MedicinalProductPharmaceuticalCharacteristics>? characteristics,
    List<Resource>? contained,
    List<Reference>? device,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<Reference>? ingredient,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<MedicinalProductPharmaceuticalRouteOfAdministration>?
        routeOfAdministration,
    Narrative? text,
    CodeableConcept? unitOfPresentation,
  }) {
    return MedicinalProductPharmaceutical(
      administrableDoseForm:
          administrableDoseForm ?? this.administrableDoseForm,
      characteristics: characteristics ?? this.characteristics,
      contained: contained ?? this.contained,
      device: device ?? this.device,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      ingredient: ingredient ?? this.ingredient,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      routeOfAdministration:
          routeOfAdministration ?? this.routeOfAdministration,
      text: text ?? this.text,
      unitOfPresentation: unitOfPresentation ?? this.unitOfPresentation,
    );
  }
}
