part of '../fhir_dart.dart';

 /// Details about packaged medications
 /// Information that only applies to packages (not products).
class MedicationKnowledgePackaging extends BackboneElement implements FhirResource {
   /// The number of product units the package would contain if fully loaded.
  final Quantity? quantity;
   /// A code that defines the specific type of packaging that the medication can be found in (e.g. blister sleeve, tube, bottle).
  final CodeableConcept? type;
  MedicationKnowledgePackaging({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.quantity,
    this.type,
  });
  
  @override
  factory MedicationKnowledgePackaging.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgePackaging(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'quantity': quantity?.toJson(),
      'type': type?.toJson(),
    };
  
  @override
  MedicationKnowledgePackaging copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Quantity? quantity,
    CodeableConcept? type,
  }) {
    return MedicationKnowledgePackaging(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      type: type ?? this.type,
    );
  }
}
