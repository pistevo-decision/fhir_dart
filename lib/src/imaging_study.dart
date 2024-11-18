part of '../fhir_dart.dart';

/// Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.
class ImagingStudy extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'ImagingStudy';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Request fulfilled
  /// A list of the diagnostic requests that resulted in this imaging study being performed.
  final List<Reference>? basedOn;

  /// Institution-generated description
  /// The Imaging Manager description of the study. Institution-generated description or classification of the Study (component) performed.
  final String? description;

  /// Encounter with which this imaging study is associated
  /// The healthcare event (e.g. a patient and healthcare provider interaction) during which this ImagingStudy is made.
  /// This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission test).
  final Reference? encounter;

  /// Study access endpoint
  /// The network service providing access (e.g., query, view, or retrieval) for the study. See implementation notes for information about using DICOM endpoints. A study-level endpoint applies to each series in the study, unless overridden by a series-level endpoint with the same Endpoint.connectionType.
  /// Typical endpoint types include DICOM WADO-RS, which is used to retrieve DICOM instances in native or rendered (e.g., JPG, PNG), formats using a RESTful API; DICOM WADO-URI, which can similarly retrieve native or rendered instances, except using an HTTP query-based approach; DICOM QIDO-RS, which allows RESTful query for DICOM information without retrieving the actual instances; or IHE Invoke Image Display (IID), which provides standard invocation of an imaging web viewer.
  final List<Reference>? endpoint;

  /// Identifiers for the whole study
  /// Identifiers for the ImagingStudy such as DICOM Study Instance UID, and Accession Number.
  /// See discussion under [Imaging Study Implementation Notes](imagingstudy.html#notes) for encoding of DICOM Study Instance UID. Accession Number should use ACSN Identifier type.
  final List<Identifier>? identifier;

  /// Who interpreted images
  /// Who read the study and interpreted the images or other content.
  final List<Reference>? interpreter;

  /// Where ImagingStudy occurred
  /// The principal physical location where the ImagingStudy was performed.
  final Reference? location;

  /// All series modality if actual acquisition modalities
  /// A list of all the series.modality values that are actual acquisition modalities, i.e. those in the DICOM Context Group 29 (value set OID 1.2.840.10008.6.1.19).
  final List<Coding>? modality;

  /// User-defined comments
  /// Per the recommended DICOM mapping, this element is derived from the Study Description attribute (0008,1030). Observations or findings about the imaging study should be recorded in another resource, e.g. Observation, and not in this element.
  final List<Annotation>? note;

  /// Number of Study Related Instances
  /// Number of SOP Instances in Study. This value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present.
  final int? numberOfInstances;

  /// Number of Study Related Series
  /// Number of Series in the Study. This value given may be larger than the number of series elements this Resource contains due to resource availability, security, or other factors. This element should be present if any series elements are present.
  final int? numberOfSeries;

  /// The performed procedure code
  /// The code for the performed procedure type.
  final List<CodeableConcept>? procedureCode;

  /// The performed Procedure reference
  /// The procedure which this ImagingStudy was part of.
  final Reference? procedureReference;

  /// Why the study was requested
  /// Description of clinical condition indicating why the ImagingStudy was requested.
  final List<CodeableConcept>? reasonCode;

  /// Why was study performed
  /// Indicates another resource whose existence justifies this Study.
  final List<Reference>? reasonReference;

  /// Referring physician
  /// The requesting/referring physician.
  final Reference? referrer;

  /// Each study has one or more series of instances
  /// Each study has one or more series of images or other content.
  final List<ImagingStudySeries>? series;

  /// When the study was started
  /// Date and time the study started.
  final String? started;

  /// The current state of the ImagingStudy.
  /// Unknown does not represent "other" - one of the defined statuses must apply.  Unknown is used when the authoring system is not sure what the current status is.
  final String
      status; // Possible values: 'registered', 'available', 'cancelled', 'entered-in-error', 'unknown'
  /// Who or what is the subject of the study
  /// The subject, typically a patient, of the imaging study.
  /// QA phantoms can be recorded with a Device; multiple subjects (such as mice) can be recorded with a Group.
  final Reference subject;
  ImagingStudy({
    this.basedOn,
    super.contained,
    this.description,
    this.encounter,
    this.endpoint,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.interpreter,
    super.language,
    this.location,
    super.meta,
    this.modality,
    super.modifierExtension,
    this.note,
    this.numberOfInstances,
    this.numberOfSeries,
    this.procedureCode,
    this.procedureReference,
    this.reasonCode,
    this.reasonReference,
    this.referrer,
    this.series,
    this.started,
    required this.status,
    required this.subject,
    super.text,
  });

  @override
  factory ImagingStudy.fromJson(Map<String, dynamic> json) {
    return ImagingStudy(
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      description: json['description'] as String?,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      interpreter: (json['interpreter'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      location: json['location'] != null
          ? Reference.fromJson(
              (json['location'] as Map).cast<String, dynamic>())
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modality: (json['modality'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      numberOfInstances: json['numberOfInstances'] as int?,
      numberOfSeries: json['numberOfSeries'] as int?,
      procedureCode: (json['procedureCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      procedureReference: json['procedureReference'] != null
          ? Reference.fromJson(
              (json['procedureReference'] as Map).cast<String, dynamic>())
          : null,
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      referrer: json['referrer'] != null
          ? Reference.fromJson(
              (json['referrer'] as Map).cast<String, dynamic>())
          : null,
      series: (json['series'] as List<dynamic>?)
          ?.map((e) =>
              ImagingStudySeries.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      started: json['started'] as String?,
      status: json['status'] as String,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'description': description,
        'encounter': encounter?.toJson(),
        'endpoint': endpoint?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'interpreter': interpreter?.map((e) => e.toJson()).toList(),
        'language': language,
        'location': location?.toJson(),
        'meta': meta?.toJson(),
        'modality': modality?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'numberOfInstances': numberOfInstances,
        'numberOfSeries': numberOfSeries,
        'procedureCode': procedureCode?.map((e) => e.toJson()).toList(),
        'procedureReference': procedureReference?.toJson(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'referrer': referrer?.toJson(),
        'series': series?.map((e) => e.toJson()).toList(),
        'started': started,
        'status': status,
        'subject': subject.toJson(),
        'text': text?.toJson(),
      };

  @override
  ImagingStudy copyWith({
    List<Reference>? basedOn,
    List<Resource>? contained,
    String? description,
    Reference? encounter,
    List<Reference>? endpoint,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<Reference>? interpreter,
    String? language,
    Reference? location,
    Meta? meta,
    List<Coding>? modality,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    int? numberOfInstances,
    int? numberOfSeries,
    List<CodeableConcept>? procedureCode,
    Reference? procedureReference,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? referrer,
    List<ImagingStudySeries>? series,
    String? started,
    String? status,
    Reference? subject,
    Narrative? text,
  }) {
    return ImagingStudy(
      basedOn: basedOn ?? this.basedOn,
      contained: contained ?? this.contained,
      description: description ?? this.description,
      encounter: encounter ?? this.encounter,
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      interpreter: interpreter ?? this.interpreter,
      language: language ?? this.language,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modality: modality ?? this.modality,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      numberOfInstances: numberOfInstances ?? this.numberOfInstances,
      numberOfSeries: numberOfSeries ?? this.numberOfSeries,
      procedureCode: procedureCode ?? this.procedureCode,
      procedureReference: procedureReference ?? this.procedureReference,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      referrer: referrer ?? this.referrer,
      series: series ?? this.series,
      started: started ?? this.started,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}
