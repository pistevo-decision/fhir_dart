part of '../fhir_dart.dart';

 /// Any manipulation of product post-collection that is intended to alter the product.  For example a buffy-coat enrichment or CD8 reduction of Peripheral Blood Stem Cells to make it more suitable for infusion.
class BiologicallyDerivedProductManipulation extends BackboneElement implements FhirResource {
   /// Description of manipulation.
  final String? description;
   /// Time of manipulation.
  final String? timeDateTime;
   /// Time of manipulation.
  final Period? timePeriod;
  BiologicallyDerivedProductManipulation({
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.timeDateTime,
    this.timePeriod,
  });
  
  @override
  factory BiologicallyDerivedProductManipulation.fromJson(Map<String, dynamic> json) {
    return BiologicallyDerivedProductManipulation(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      timeDateTime: json['timeDateTime'] as String?,
      timePeriod: json['timePeriod'] != null ? Period.fromJson(json['timePeriod'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'timeDateTime': timeDateTime,
      'timePeriod': timePeriod?.toJson(),
    };
  
  @override
  BiologicallyDerivedProductManipulation copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? timeDateTime,
    Period? timePeriod,
  }) {
    return BiologicallyDerivedProductManipulation(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timePeriod: timePeriod ?? this.timePeriod,
    );
  }
}
