part of '../fhir_dart.dart';

/// How this product was collected.
class BiologicallyDerivedProductCollection extends BackboneElement
    implements FhirResource {
  /// Time of product collection.
  final String? collectedDateTime;

  /// Time of product collection.
  final Period? collectedPeriod;

  /// Individual performing collection
  /// Healthcare professional who is performing the collection.
  final Reference? collector;

  /// Who is product from
  /// The patient or entity, such as a hospital or vendor in the case of a processed/manipulated/manufactured product, providing the product.
  final Reference? source;
  BiologicallyDerivedProductCollection({
    this.collectedDateTime,
    this.collectedPeriod,
    this.collector,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.source,
  });

  @override
  factory BiologicallyDerivedProductCollection.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductCollection(
      collectedDateTime: json['collectedDateTime'] as String?,
      collectedPeriod: json['collectedPeriod'] != null
          ? Period.fromJson(json['collectedPeriod'] as Map<String, dynamic>)
          : null,
      collector: json['collector'] != null
          ? Reference.fromJson(json['collector'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: json['source'] != null
          ? Reference.fromJson(json['source'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'collectedDateTime': collectedDateTime,
        'collectedPeriod': collectedPeriod?.toJson(),
        'collector': collector?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'source': source?.toJson(),
      };

  @override
  BiologicallyDerivedProductCollection copyWith({
    String? collectedDateTime,
    Period? collectedPeriod,
    Reference? collector,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? source,
  }) {
    return BiologicallyDerivedProductCollection(
      collectedDateTime: collectedDateTime ?? this.collectedDateTime,
      collectedPeriod: collectedPeriod ?? this.collectedPeriod,
      collector: collector ?? this.collector,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
    );
  }
}
