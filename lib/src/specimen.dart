part of '../fhir_dart.dart';

/// A sample to be used for analysis.
class Specimen extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Specimen';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Identifier assigned by the lab
  /// The identifier assigned by the lab when accessioning specimen(s). This is not necessarily the same as the specimen identifier, depending on local lab procedures.
  final Identifier? accessionIdentifier;

  /// Collection details
  /// Details concerning the specimen collection.
  final SpecimenCollection? collection;

  /// State of the specimen
  /// A mode or state of being that describes the nature of the specimen.
  /// Specimen condition is an observation made about the specimen.  It's a point-in-time assessment.  It can be used to assess its quality or appropriateness for a specific test.
  final List<CodeableConcept>? condition;

  /// Direct container of specimen (tube/slide, etc.)
  /// The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not addressed here.
  final List<SpecimenContainer>? container;

  /// External Identifier
  /// Id for specimen.
  final List<Identifier>? identifier;

  /// Comments
  /// To communicate any details or issues about the specimen or during the specimen collection. (for example: broken vial, sent with patient, frozen).
  final List<Annotation>? note;

  /// Specimen from which this specimen originated
  /// Reference to the parent (source) specimen which is used when the specimen was either derived from or a component of another specimen.
  /// The parent specimen could be the source from which the current specimen is derived by some processing step (e.g. an aliquot or isolate or extracted nucleic acids from clinical samples) or one of many specimens that were combined to create a pooled sample.
  final List<Reference>? parent;

  /// Processing and processing step details
  /// Details concerning processing and processing steps for the specimen.
  final List<SpecimenProcessing>? processing;

  /// The time when specimen was received for processing
  /// Time when specimen was received for processing or testing.
  final String? receivedTime;

  /// Why the specimen was collected
  /// Details concerning a service request that required a specimen to be collected.
  /// The request may be explicit or implied such with a ServiceRequest that requires a blood draw.
  final List<Reference>? request;

  /// The availability of the specimen.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String?
      status; // Possible values: 'available', 'unavailable', 'unsatisfactory', 'entered-in-error'
  /// Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance or a device.
  final Reference? subject;

  /// Kind of material that forms the specimen
  /// The kind of material that forms the specimen.
  /// The type can change the way that a specimen is handled and drives what kind of analyses can properly be performed on the specimen. It is frequently used in diagnostic work flow decision making systems.
  final CodeableConcept? type;
  Specimen({
    this.accessionIdentifier,
    this.collection,
    this.condition,
    super.contained,
    this.container,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.note,
    this.parent,
    this.processing,
    this.receivedTime,
    this.request,
    this.status,
    this.subject,
    super.text,
    this.type,
  });

  @override
  factory Specimen.fromJson(Map<String, dynamic> json) {
    return Specimen(
      accessionIdentifier: json['accessionIdentifier'] != null
          ? Identifier.fromJson(
              (json['accessionIdentifier'] as Map).cast<String, dynamic>())
          : null,
      collection: json['collection'] != null
          ? SpecimenCollection.fromJson(
              (json['collection'] as Map).cast<String, dynamic>())
          : null,
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      container: (json['container'] as List<dynamic>?)
          ?.map((e) =>
              SpecimenContainer.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      parent: (json['parent'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      processing: (json['processing'] as List<dynamic>?)
          ?.map((e) =>
              SpecimenProcessing.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      receivedTime: json['receivedTime'] as String?,
      request: (json['request'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String?,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'accessionIdentifier': accessionIdentifier?.toJson(),
        'collection': collection?.toJson(),
        'condition': condition?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'container': container?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'parent': parent?.map((e) => e.toJson()).toList(),
        'processing': processing?.map((e) => e.toJson()).toList(),
        'receivedTime': receivedTime,
        'request': request?.map((e) => e.toJson()).toList(),
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'type': type?.toJson(),
      };

  @override
  Specimen copyWith({
    Identifier? accessionIdentifier,
    SpecimenCollection? collection,
    List<CodeableConcept>? condition,
    List<Resource>? contained,
    List<SpecimenContainer>? container,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<Reference>? parent,
    List<SpecimenProcessing>? processing,
    String? receivedTime,
    List<Reference>? request,
    String? status,
    Reference? subject,
    Narrative? text,
    CodeableConcept? type,
  }) {
    return Specimen(
      accessionIdentifier: accessionIdentifier ?? this.accessionIdentifier,
      collection: collection ?? this.collection,
      condition: condition ?? this.condition,
      contained: contained ?? this.contained,
      container: container ?? this.container,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      parent: parent ?? this.parent,
      processing: processing ?? this.processing,
      receivedTime: receivedTime ?? this.receivedTime,
      request: request ?? this.request,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
