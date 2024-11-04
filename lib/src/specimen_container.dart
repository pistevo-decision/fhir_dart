part of '../fhir_dart.dart';

 /// Direct container of specimen (tube/slide, etc.)
 /// The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not addressed here.
class SpecimenContainer extends BackboneElement implements FhirResource {
   /// Additive associated with container
   /// Introduced substance to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final CodeableConcept? additiveCodeableConcept;
   /// Additive associated with container
   /// Introduced substance to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final Reference? additiveReference;
   /// Container volume or size
   /// The capacity (volume or other measure) the container may contain.
  final Quantity? capacity;
   /// Textual description of the container.
  final String? description;
   /// Id for the container
   /// Id for container. There may be multiple; a manufacturer's bar code, lab assigned identifier, etc. The container ID may differ from the specimen id in some circumstances.
  final List<Identifier>? identifier;
   /// Quantity of specimen within container
   /// The quantity of specimen in the container; may be volume, dimensions, or other appropriate measurements, depending on the specimen type.
  final Quantity? specimenQuantity;
   /// Kind of container directly associated with specimen
   /// The type of container associated with the specimen (e.g. slide, aliquot, etc.).
  final CodeableConcept? type;
  SpecimenContainer({
    this.additiveCodeableConcept,
    this.additiveReference,
    this.capacity,
    this.description,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.specimenQuantity,
    this.type,
  });
  
  @override
  factory SpecimenContainer.fromJson(Map<String, dynamic> json) {
    return SpecimenContainer(
      additiveCodeableConcept: json['additiveCodeableConcept'] != null ? CodeableConcept.fromJson(json['additiveCodeableConcept'] as Map<String, dynamic>) : null,
      additiveReference: json['additiveReference'] != null ? Reference.fromJson(json['additiveReference'] as Map<String, dynamic>) : null,
      capacity: json['capacity'] != null ? Quantity.fromJson(json['capacity'] as Map<String, dynamic>) : null,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      specimenQuantity: json['specimenQuantity'] != null ? Quantity.fromJson(json['specimenQuantity'] as Map<String, dynamic>) : null,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'additiveCodeableConcept': additiveCodeableConcept?.toJson(),
      'additiveReference': additiveReference?.toJson(),
      'capacity': capacity?.toJson(),
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'specimenQuantity': specimenQuantity?.toJson(),
      'type': type?.toJson(),
    };
  
  @override
  SpecimenContainer copyWith({
    CodeableConcept? additiveCodeableConcept,
    Reference? additiveReference,
    Quantity? capacity,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    List<Extension>? modifierExtension,
    Quantity? specimenQuantity,
    CodeableConcept? type,
  }) {
    return SpecimenContainer(
      additiveCodeableConcept: additiveCodeableConcept ?? this.additiveCodeableConcept,
      additiveReference: additiveReference ?? this.additiveReference,
      capacity: capacity ?? this.capacity,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      specimenQuantity: specimenQuantity ?? this.specimenQuantity,
      type: type ?? this.type,
    );
  }
}
