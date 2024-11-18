part of '../fhir_dart.dart';

/// A record of a device being used by a patient where the record is the result of a report from the patient or another clinician.
class DeviceUseStatement extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'DeviceUseStatement';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Fulfills plan, proposal or order
  /// A plan, proposal or order that is fulfilled in whole or in part by this DeviceUseStatement.
  final List<Reference>? basedOn;

  /// Target body site
  /// Indicates the anotomic location on the subject's body where the device was used ( i.e. the target).
  final CodeableConcept? bodySite;

  /// Supporting information
  /// Allows linking the DeviceUseStatement to the underlying Request, or to other information that supports or is used to derive the DeviceUseStatement.
  /// The most common use cases for deriving a DeviceUseStatement comes from creating it from a request or from an observation or a claim. it should be noted that the amount of information that is available varies from the type resource that you derive the DeviceUseStatement from.
  final List<Reference>? derivedFrom;

  /// Reference to device used
  /// The details of the device used.
  final Reference device;

  /// External identifier for this record
  /// An external identifier for this statement such as an IRI.
  final List<Identifier>? identifier;

  /// Addition details (comments, instructions)
  /// Details about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement.
  final List<Annotation>? note;

  /// Why device was used
  /// Reason or justification for the use of the device.
  final List<CodeableConcept>? reasonCode;

  /// Why was DeviceUseStatement performed?
  /// Indicates another resource whose existence justifies this DeviceUseStatement.
  final List<Reference>? reasonReference;

  /// When statement was recorded
  /// The time at which the statement was made/recorded.
  final String? recordedOn;

  /// Who made the statement
  /// Who reported the device was being used by the patient.
  final Reference? source;

  /// A code representing the patient or other source's judgment about the state of the device used that this statement is about.  Generally this will be active or completed.
  /// DeviceUseStatment is a statement at a point in time.  The status is only representative at the point when it was asserted.  The value set for contains codes that assert the status of the use  by the patient (for example, stopped or on hold) as well as codes that assert the status of the resource itself (for example, entered in error).
  /// This element is labeled as a modifier because the status contains the codes that mark the statement as not currently valid.
  final String
      status; // Possible values: 'active', 'completed', 'entered-in-error', 'intended', 'stopped', 'on-hold'
  /// Patient using device
  /// The patient who used the device.
  final Reference subject;

  /// How often  the device was used
  /// How often the device was used.
  final String? timingDateTime;

  /// How often  the device was used
  /// How often the device was used.
  final Period? timingPeriod;

  /// How often  the device was used
  /// How often the device was used.
  final Timing? timingTiming;
  DeviceUseStatement({
    this.basedOn,
    this.bodySite,
    super.contained,
    this.derivedFrom,
    required this.device,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.note,
    this.reasonCode,
    this.reasonReference,
    this.recordedOn,
    this.source,
    required this.status,
    required this.subject,
    super.text,
    this.timingDateTime,
    this.timingPeriod,
    this.timingTiming,
  });

  @override
  factory DeviceUseStatement.fromJson(Map<String, dynamic> json) {
    return DeviceUseStatement(
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              (json['bodySite'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      device:
          Reference.fromJson((json['device'] as Map).cast<String, dynamic>()),
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
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      recordedOn: json['recordedOn'] as String?,
      source: json['source'] != null
          ? Reference.fromJson((json['source'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      timingDateTime: json['timingDateTime'] as String?,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(
              (json['timingPeriod'] as Map).cast<String, dynamic>())
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(
              (json['timingTiming'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'bodySite': bodySite?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'derivedFrom': derivedFrom?.map((e) => e.toJson()).toList(),
        'device': device.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'recordedOn': recordedOn,
        'source': source?.toJson(),
        'status': status,
        'subject': subject.toJson(),
        'text': text?.toJson(),
        'timingDateTime': timingDateTime,
        'timingPeriod': timingPeriod?.toJson(),
        'timingTiming': timingTiming?.toJson(),
      };

  @override
  DeviceUseStatement copyWith({
    List<Reference>? basedOn,
    CodeableConcept? bodySite,
    List<Resource>? contained,
    List<Reference>? derivedFrom,
    Reference? device,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    String? recordedOn,
    Reference? source,
    String? status,
    Reference? subject,
    Narrative? text,
    String? timingDateTime,
    Period? timingPeriod,
    Timing? timingTiming,
  }) {
    return DeviceUseStatement(
      basedOn: basedOn ?? this.basedOn,
      bodySite: bodySite ?? this.bodySite,
      contained: contained ?? this.contained,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      device: device ?? this.device,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      recordedOn: recordedOn ?? this.recordedOn,
      source: source ?? this.source,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingTiming: timingTiming ?? this.timingTiming,
    );
  }
}
