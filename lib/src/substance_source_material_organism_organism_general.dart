part of '../fhir_dart.dart';

 /// 4.9.13.7.1 Kingdom (Conditional).
class SubstanceSourceMaterialOrganismOrganismGeneral extends BackboneElement implements FhirResource {
   /// The class of an organism shall be specified.
  final CodeableConcept? fhirClass;
   /// The kingdom of an organism shall be specified.
  final CodeableConcept? kingdom;
   /// The order of an organism shall be specified,.
  final CodeableConcept? order;
   /// The phylum of an organism shall be specified.
  final CodeableConcept? phylum;
  SubstanceSourceMaterialOrganismOrganismGeneral({
    this.fhirClass,
    super.fhirExtension,
    super.id,
    this.kingdom,
    super.modifierExtension,
    this.order,
    this.phylum,
  });
  
  @override
  factory SubstanceSourceMaterialOrganismOrganismGeneral.fromJson(Map<String, dynamic> json) {
    return SubstanceSourceMaterialOrganismOrganismGeneral(
      fhirClass: json['class'] != null ? CodeableConcept.fromJson(json['class'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      kingdom: json['kingdom'] != null ? CodeableConcept.fromJson(json['kingdom'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      order: json['order'] != null ? CodeableConcept.fromJson(json['order'] as Map<String, dynamic>) : null,
      phylum: json['phylum'] != null ? CodeableConcept.fromJson(json['phylum'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'class': fhirClass?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'kingdom': kingdom?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'order': order?.toJson(),
      'phylum': phylum?.toJson(),
    };
  
  @override
  SubstanceSourceMaterialOrganismOrganismGeneral copyWith({
    CodeableConcept? fhirClass,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? kingdom,
    List<Extension>? modifierExtension,
    CodeableConcept? order,
    CodeableConcept? phylum,
  }) {
    return SubstanceSourceMaterialOrganismOrganismGeneral(
      fhirClass: fhirClass ?? this.fhirClass,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      kingdom: kingdom ?? this.kingdom,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      order: order ?? this.order,
      phylum: phylum ?? this.phylum,
    );
  }
}
