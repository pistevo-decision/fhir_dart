part of '../fhir_dart.dart';

/// The specimen's container.
class SpecimenDefinitionTypeTestedContainer extends BackboneElement
    implements FhirResource {
  /// Additive associated with container
  /// Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final List<SpecimenDefinitionTypeTestedContainerAdditive>? additive;

  /// Color of container cap.
  final CodeableConcept? cap;

  /// Container capacity
  /// The capacity (volume or other measure) of this kind of container.
  final Quantity? capacity;

  /// Container description
  /// The textual description of the kind of container.
  final String? description;

  /// Container material
  /// The type of material of the container.
  final CodeableConcept? material;

  /// Minimum volume
  /// The minimum volume to be conditioned in the container.
  final Quantity? minimumVolumeQuantity;

  /// Minimum volume
  /// The minimum volume to be conditioned in the container.
  final String? minimumVolumeString;

  /// Specimen container preparation
  /// Special processing that should be applied to the container for this kind of specimen.
  final String? preparation;

  /// Kind of container associated with the kind of specimen
  /// The type of container used to contain this kind of specimen.
  final CodeableConcept? type;
  SpecimenDefinitionTypeTestedContainer({
    this.additive,
    this.cap,
    this.capacity,
    this.description,
    super.fhirExtension,
    super.id,
    this.material,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    super.modifierExtension,
    this.preparation,
    this.type,
  });

  @override
  factory SpecimenDefinitionTypeTestedContainer.fromJson(
      Map<String, dynamic> json) {
    return SpecimenDefinitionTypeTestedContainer(
      additive: (json['additive'] as List<dynamic>?)
          ?.map((e) => SpecimenDefinitionTypeTestedContainerAdditive.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      cap: json['cap'] != null
          ? CodeableConcept.fromJson(
              (json['cap'] as Map).cast<String, dynamic>())
          : null,
      capacity: json['capacity'] != null
          ? Quantity.fromJson((json['capacity'] as Map).cast<String, dynamic>())
          : null,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      material: json['material'] != null
          ? CodeableConcept.fromJson(
              (json['material'] as Map).cast<String, dynamic>())
          : null,
      minimumVolumeQuantity: json['minimumVolumeQuantity'] != null
          ? Quantity.fromJson(
              (json['minimumVolumeQuantity'] as Map).cast<String, dynamic>())
          : null,
      minimumVolumeString: json['minimumVolumeString'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      preparation: json['preparation'] as String?,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'additive': additive?.map((e) => e.toJson()).toList(),
        'cap': cap?.toJson(),
        'capacity': capacity?.toJson(),
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'material': material?.toJson(),
        'minimumVolumeQuantity': minimumVolumeQuantity?.toJson(),
        'minimumVolumeString': minimumVolumeString,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'preparation': preparation,
        'type': type?.toJson(),
      };

  @override
  SpecimenDefinitionTypeTestedContainer copyWith({
    List<SpecimenDefinitionTypeTestedContainerAdditive>? additive,
    CodeableConcept? cap,
    Quantity? capacity,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? material,
    Quantity? minimumVolumeQuantity,
    String? minimumVolumeString,
    List<Extension>? modifierExtension,
    String? preparation,
    CodeableConcept? type,
  }) {
    return SpecimenDefinitionTypeTestedContainer(
      additive: additive ?? this.additive,
      cap: cap ?? this.cap,
      capacity: capacity ?? this.capacity,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      material: material ?? this.material,
      minimumVolumeQuantity:
          minimumVolumeQuantity ?? this.minimumVolumeQuantity,
      minimumVolumeString: minimumVolumeString ?? this.minimumVolumeString,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      preparation: preparation ?? this.preparation,
      type: type ?? this.type,
    );
  }
}
