part of '../fhir_dart.dart';

 /// Each study has one or more series of instances
 /// Each study has one or more series of images or other content.
class ImagingStudySeries extends BackboneElement implements FhirResource {
   /// Body part examined
   /// The anatomic structures examined. See DICOM Part 16 Annex L (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html) for DICOM to SNOMED-CT mappings. The bodySite may indicate the laterality of body part imaged; if so, it shall be consistent with any content of ImagingStudy.series.laterality.
  final Coding? bodySite;
   /// A short human readable summary of the series
   /// A description of the series.
  final String? description;
   /// Series access endpoint
   /// The network service providing access (e.g., query, view, or retrieval) for this series. See implementation notes for information about using DICOM endpoints. A series-level endpoint, if present, has precedence over a study-level endpoint with the same Endpoint.connectionType.
   /// Typical endpoint types include DICOM WADO-RS, which is used to retrieve DICOM instances in native or rendered (e.g., JPG, PNG) formats using a RESTful API; DICOM WADO-URI, which can similarly retrieve native or rendered instances, except using an HTTP query-based approach; and DICOM QIDO-RS, which allows RESTful query for DICOM information without retrieving the actual instances.
  final List<Reference>? endpoint;
   /// A single SOP instance from the series
   /// A single SOP instance within the series, e.g. an image, or presentation state.
  final List<ImagingStudySeriesInstance>? instance;
   /// Body part laterality
   /// The laterality of the (possibly paired) anatomic structures examined. E.g., the left knee, both lungs, or unpaired abdomen. If present, shall be consistent with any laterality information indicated in ImagingStudy.series.bodySite.
  final Coding? laterality;
   /// The modality of the instances in the series
   /// The modality of this series sequence.
  final Coding modality;
   /// Numeric identifier of this series
   /// The numeric identifier of this series in the study.
  final int? number;
   /// Number of Series Related Instances
   /// Number of SOP Instances in the Study. The value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present.
  final int? numberOfInstances;
   /// Who performed the series
   /// Indicates who or what performed the series and how they were involved.
   /// If the person who performed the series is not known, their Organization may be recorded. A patient, or related person, may be the performer, e.g. for patient-captured images.
  final List<ImagingStudySeriesPerformer>? performer;
   /// Specimen imaged
   /// The specimen imaged, e.g., for whole slide imaging of a biopsy.
  final List<Reference>? specimen;
   /// When the series started
   /// The date and time the series was started.
  final String? started;
   /// DICOM Series Instance UID for the series
   /// The DICOM Series Instance UID for the series.
   /// See [DICOM PS3.3 C.7.3](http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.3.html).
  final String uid;
  ImagingStudySeries({
    this.bodySite,
    this.description,
    this.endpoint,
    super.fhirExtension,
    super.id,
    this.instance,
    this.laterality,
    required this.modality,
    super.modifierExtension,
    this.number,
    this.numberOfInstances,
    this.performer,
    this.specimen,
    this.started,
    required this.uid,
  });
  
  @override
  factory ImagingStudySeries.fromJson(Map<String, dynamic> json) {
    return ImagingStudySeries(
      bodySite: json['bodySite'] != null ? Coding.fromJson(json['bodySite'] as Map<String, dynamic>) : null,
      description: json['description'] as String?,
      endpoint: (json['endpoint'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      instance: (json['instance'] as List<dynamic>?)?.map((e) => ImagingStudySeriesInstance.fromJson(e as Map<String, dynamic>)).toList(),
      laterality: json['laterality'] != null ? Coding.fromJson(json['laterality'] as Map<String, dynamic>) : null,
      modality: Coding.fromJson(json['modality'] as Map<String, dynamic>),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      number: json['number'] as int?,
      numberOfInstances: json['numberOfInstances'] as int?,
      performer: (json['performer'] as List<dynamic>?)?.map((e) => ImagingStudySeriesPerformer.fromJson(e as Map<String, dynamic>)).toList(),
      specimen: (json['specimen'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      started: json['started'] as String?,
      uid: json['uid'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'bodySite': bodySite?.toJson(),
      'description': description,
      'endpoint': endpoint?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'instance': instance?.map((e) => e.toJson()).toList(),
      'laterality': laterality?.toJson(),
      'modality': modality.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'number': number,
      'numberOfInstances': numberOfInstances,
      'performer': performer?.map((e) => e.toJson()).toList(),
      'specimen': specimen?.map((e) => e.toJson()).toList(),
      'started': started,
      'uid': uid,
    };
  
  @override
  ImagingStudySeries copyWith({
    Coding? bodySite,
    String? description,
    List<Reference>? endpoint,
    List<Extension>? fhirExtension,
    String? id,
    List<ImagingStudySeriesInstance>? instance,
    Coding? laterality,
    Coding? modality,
    List<Extension>? modifierExtension,
    int? number,
    int? numberOfInstances,
    List<ImagingStudySeriesPerformer>? performer,
    List<Reference>? specimen,
    String? started,
    String? uid,
  }) {
    return ImagingStudySeries(
      bodySite: bodySite ?? this.bodySite,
      description: description ?? this.description,
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      instance: instance ?? this.instance,
      laterality: laterality ?? this.laterality,
      modality: modality ?? this.modality,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      numberOfInstances: numberOfInstances ?? this.numberOfInstances,
      performer: performer ?? this.performer,
      specimen: specimen ?? this.specimen,
      started: started ?? this.started,
      uid: uid ?? this.uid,
    );
  }
}
