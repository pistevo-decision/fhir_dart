part of '../fhir_dart.dart';

/// An authorization for the provision of glasses and/or contact lenses to a patient.
class VisionPrescription extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'VisionPrescription';

  /// Response creation date
  /// The date this resource was created.
  final String created;

  /// When prescription was authorized
  /// The date (and perhaps time) when the prescription was written.
  /// Jurisdictions determine the valid lifetime of a prescription. Typically vision prescriptions are valid for two years from the date written.
  final String dateWritten;

  /// Created during encounter / admission / stay
  /// A reference to a resource that identifies the particular occurrence of contact between patient and health care provider during which the prescription was issued.
  final Reference? encounter;

  /// Business Identifier for vision prescription
  /// A unique identifier assigned to this vision prescription.
  final List<Identifier>? identifier;

  /// Vision lens authorization
  /// Contain the details of  the individual lens specifications and serves as the authorization for the fullfillment by certified professionals.
  final List<VisionPrescriptionLensSpecification> lensSpecification;

  /// Who prescription is for
  /// A resource reference to the person to whom the vision prescription applies.
  final Reference patient;

  /// Who authorized the vision prescription
  /// The healthcare professional responsible for authorizing the prescription.
  final Reference prescriber;

  /// The status of the resource instance.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
  VisionPrescription({
    super.contained,
    required this.created,
    required this.dateWritten,
    this.encounter,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    required this.lensSpecification,
    super.meta,
    super.modifierExtension,
    required this.patient,
    required this.prescriber,
    required this.status,
    super.text,
  });

  @override
  factory VisionPrescription.fromJson(Map<String, dynamic> json) {
    return VisionPrescription(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      created: json['created'] as String,
      dateWritten: json['dateWritten'] as String,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      lensSpecification: (json['lensSpecification'] as List<dynamic>)
          .map((e) => VisionPrescriptionLensSpecification.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      prescriber: Reference.fromJson(
          (json['prescriber'] as Map).cast<String, dynamic>()),
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'dateWritten': dateWritten,
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'lensSpecification': lensSpecification.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'patient': patient.toJson(),
        'prescriber': prescriber.toJson(),
        'status': status,
        'text': text?.toJson(),
      };

  @override
  VisionPrescription copyWith({
    List<Resource>? contained,
    String? created,
    String? dateWritten,
    Reference? encounter,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    List<VisionPrescriptionLensSpecification>? lensSpecification,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? patient,
    Reference? prescriber,
    String? status,
    Narrative? text,
  }) {
    return VisionPrescription(
      contained: contained ?? this.contained,
      created: created ?? this.created,
      dateWritten: dateWritten ?? this.dateWritten,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      lensSpecification: lensSpecification ?? this.lensSpecification,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      patient: patient ?? this.patient,
      prescriber: prescriber ?? this.prescriber,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
