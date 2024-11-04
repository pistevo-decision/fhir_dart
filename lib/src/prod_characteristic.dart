part of '../fhir_dart.dart';

/// Base StructureDefinition for ProdCharacteristic Type: The marketing status describes the date when a medicinal product is actually put on the market or the date as of which it is no longer available.
class ProdCharacteristic extends BackboneElement implements FhirResource {
  /// Where applicable, the color can be specified An appropriate controlled vocabulary shall be used The term and the term identifier shall be used.
  final List<String>? color;

  /// Where applicable, the depth can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
  final Quantity? depth;

  /// Where applicable, the external diameter can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
  final Quantity? externalDiameter;

  /// Where applicable, the height can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
  final Quantity? height;

  /// Where applicable, the image can be provided The format of the image attachment shall be specified by regional implementations.
  final List<Attachment>? image;

  /// Where applicable, the imprint can be specified as text.
  final List<String>? imprint;

  /// Where applicable, the nominal volume can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
  final Quantity? nominalVolume;

  /// Where applicable, the scoring can be specified An appropriate controlled vocabulary shall be used The term and the term identifier shall be used.
  final CodeableConcept? scoring;

  /// Where applicable, the shape can be specified An appropriate controlled vocabulary shall be used The term and the term identifier shall be used.
  final String? shape;

  /// Where applicable, the weight can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
  final Quantity? weight;

  /// Where applicable, the width can be specified using a numerical value and its unit of measurement The unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the symbol identifier shall be used.
  final Quantity? width;
  ProdCharacteristic({
    this.color,
    this.depth,
    super.fhirExtension,
    this.externalDiameter,
    this.height,
    super.id,
    this.image,
    this.imprint,
    super.modifierExtension,
    this.nominalVolume,
    this.scoring,
    this.shape,
    this.weight,
    this.width,
  });

  @override
  factory ProdCharacteristic.fromJson(Map<String, dynamic> json) {
    return ProdCharacteristic(
      color:
          (json['color'] as List<dynamic>?)?.map((e) => e as String).toList(),
      depth: json['depth'] != null
          ? Quantity.fromJson(json['depth'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      externalDiameter: json['externalDiameter'] != null
          ? Quantity.fromJson(json['externalDiameter'] as Map<String, dynamic>)
          : null,
      height: json['height'] != null
          ? Quantity.fromJson(json['height'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      imprint:
          (json['imprint'] as List<dynamic>?)?.map((e) => e as String).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      nominalVolume: json['nominalVolume'] != null
          ? Quantity.fromJson(json['nominalVolume'] as Map<String, dynamic>)
          : null,
      scoring: json['scoring'] != null
          ? CodeableConcept.fromJson(json['scoring'] as Map<String, dynamic>)
          : null,
      shape: json['shape'] as String?,
      weight: json['weight'] != null
          ? Quantity.fromJson(json['weight'] as Map<String, dynamic>)
          : null,
      width: json['width'] != null
          ? Quantity.fromJson(json['width'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'color': color?.map((e) => e).toList(),
        'depth': depth?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'externalDiameter': externalDiameter?.toJson(),
        'height': height?.toJson(),
        'id': id,
        'image': image?.map((e) => e.toJson()).toList(),
        'imprint': imprint?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'nominalVolume': nominalVolume?.toJson(),
        'scoring': scoring?.toJson(),
        'shape': shape,
        'weight': weight?.toJson(),
        'width': width?.toJson(),
      };

  @override
  ProdCharacteristic copyWith({
    List<String>? color,
    Quantity? depth,
    List<Extension>? fhirExtension,
    Quantity? externalDiameter,
    Quantity? height,
    String? id,
    List<Attachment>? image,
    List<String>? imprint,
    List<Extension>? modifierExtension,
    Quantity? nominalVolume,
    CodeableConcept? scoring,
    String? shape,
    Quantity? weight,
    Quantity? width,
  }) {
    return ProdCharacteristic(
      color: color ?? this.color,
      depth: depth ?? this.depth,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      externalDiameter: externalDiameter ?? this.externalDiameter,
      height: height ?? this.height,
      id: id ?? this.id,
      image: image ?? this.image,
      imprint: imprint ?? this.imprint,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      nominalVolume: nominalVolume ?? this.nominalVolume,
      scoring: scoring ?? this.scoring,
      shape: shape ?? this.shape,
      weight: weight ?? this.weight,
      width: width ?? this.width,
    );
  }
}
