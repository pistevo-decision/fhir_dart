part of '../fhir_dart.dart';

/// Record details about an anatomical structure.  This resource may be used when a coded concept does not provide the necessary detail needed for the use case.
class BodyStructure extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'BodyStructure';

  /// Whether this record is in active use
  /// Whether this body site is in active use.
  /// This element is labeled as a modifier because it may be used to mark that the resource was created in error.
  final bool? active;

  /// Text description
  /// A summary, characterization or explanation of the body structure.
  /// This description could include any visual markings used to orientate the viewer e.g. external reference points, special sutures, ink markings.
  final String? description;

  /// Bodystructure identifier
  /// Identifier for this instance of the anatomical structure.
  final List<Identifier>? identifier;

  /// Attached images
  /// Image or images used to identify a location.
  final List<Attachment>? image;

  /// Body site
  /// The anatomical location or region of the specimen, lesion, or body structure.
  final CodeableConcept? location;

  /// Body site modifier
  /// Qualifier to refine the anatomical location.  These include qualifiers for laterality, relative location, directionality, number, and plane.
  final List<CodeableConcept>? locationQualifier;

  /// Kind of Structure
  /// The kind of structure being represented by the body structure at `BodyStructure.location`.  This can define both normal and abnormal morphologies.
  /// The minimum cardinality of 0 supports the use case of specifying a location without defining a morphology.
  final CodeableConcept? morphology;

  /// Who this is about
  /// The person to which the body site belongs.
  final Reference patient;
  BodyStructure({
    this.active,
    super.contained,
    this.description,
    super.fhirExtension,
    super.id,
    this.identifier,
    this.image,
    super.implicitRules,
    super.language,
    this.location,
    this.locationQualifier,
    super.meta,
    super.modifierExtension,
    this.morphology,
    required this.patient,
    super.text,
  });

  @override
  factory BodyStructure.fromJson(Map<String, dynamic> json) {
    return BodyStructure(
      active: json['active'] as bool?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      location: json['location'] != null
          ? CodeableConcept.fromJson(
              (json['location'] as Map).cast<String, dynamic>())
          : null,
      locationQualifier: (json['locationQualifier'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      morphology: json['morphology'] != null
          ? CodeableConcept.fromJson(
              (json['morphology'] as Map).cast<String, dynamic>())
          : null,
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'active': active,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'image': image?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'location': location?.toJson(),
        'locationQualifier': locationQualifier?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'morphology': morphology?.toJson(),
        'patient': patient.toJson(),
        'text': text?.toJson(),
      };

  @override
  BodyStructure copyWith({
    bool? active,
    List<Resource>? contained,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    List<Attachment>? image,
    String? implicitRules,
    String? language,
    CodeableConcept? location,
    List<CodeableConcept>? locationQualifier,
    Meta? meta,
    List<Extension>? modifierExtension,
    CodeableConcept? morphology,
    Reference? patient,
    Narrative? text,
  }) {
    return BodyStructure(
      active: active ?? this.active,
      contained: contained ?? this.contained,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      image: image ?? this.image,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      location: location ?? this.location,
      locationQualifier: locationQualifier ?? this.locationQualifier,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      morphology: morphology ?? this.morphology,
      patient: patient ?? this.patient,
      text: text ?? this.text,
    );
  }
}
