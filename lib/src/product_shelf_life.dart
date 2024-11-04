part of '../fhir_dart.dart';

/// Base StructureDefinition for ProductShelfLife Type: The shelf-life and storage information for a medicinal product item or container can be described using this class.
class ProductShelfLife extends BackboneElement implements FhirResource {
  /// Unique identifier for the packaged Medicinal Product.
  final Identifier? identifier;

  /// The shelf life time period can be specified using a numerical value for the period of time and its unit of time measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
  final Quantity period;

  /// Special precautions for storage, if any, can be specified using an appropriate controlled vocabulary The controlled term and the controlled term identifier shall be specified.
  final List<CodeableConcept>? specialPrecautionsForStorage;

  /// This describes the shelf life, taking into account various scenarios such as shelf life of the packaged Medicinal Product itself, shelf life after transformation where necessary and shelf life after the first opening of a bottle, etc. The shelf life type shall be specified using an appropriate controlled vocabulary The controlled term and the controlled term identifier shall be specified.
  final CodeableConcept type;
  ProductShelfLife({
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    required this.period,
    this.specialPrecautionsForStorage,
    required this.type,
  });

  @override
  factory ProductShelfLife.fromJson(Map<String, dynamic> json) {
    return ProductShelfLife(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: Quantity.fromJson(json['period'] as Map<String, dynamic>),
      specialPrecautionsForStorage:
          (json['specialPrecautionsForStorage'] as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period.toJson(),
        'specialPrecautionsForStorage':
            specialPrecautionsForStorage?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  ProductShelfLife copyWith({
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    Quantity? period,
    List<CodeableConcept>? specialPrecautionsForStorage,
    CodeableConcept? type,
  }) {
    return ProductShelfLife(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      specialPrecautionsForStorage:
          specialPrecautionsForStorage ?? this.specialPrecautionsForStorage,
      type: type ?? this.type,
    );
  }
}
