part of '../fhir_dart.dart';

/// This is intended to capture a single report and is not suitable for use in displaying summary information that covers multiple reports.  For example, this resource has not been designed for laboratory cumulative reporting formats nor detailed structured reports for sequencing.
/// The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and locations, and/or specimens derived from these. The report includes clinical context such as requesting and provider information, and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic reports.
/// To support reporting for any diagnostic report into a clinical data repository.
class DiagnosticReport extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'DiagnosticReport';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// What was requested
  /// Details concerning a service requested.
  /// Note: Usually there is one test request for each result, however in some circumstances multiple test requests may be represented using a single test result resource. Note that there are also cases where one request leads to multiple reports.
  final List<Reference>? basedOn;

  /// Service category
  /// A code that classifies the clinical discipline, department or diagnostic service that created the report (e.g. cardiology, biochemistry, hematology, MRI). This is used for searching, sorting and display purposes.
  /// Multiple categories are allowed using various categorization schemes.   The level of granularity is defined by the category concepts in the value set. More fine-grained filtering can be performed using the metadata and/or terminology hierarchy in DiagnosticReport.code.
  final List<CodeableConcept>? category;

  /// Name/Code for this diagnostic report
  /// A code or name that describes this diagnostic report.
  final CodeableConcept code;

  /// Clinical conclusion (interpretation) of test results
  /// Concise and clinically contextualized summary conclusion (interpretation/impression) of the diagnostic report.
  final String? conclusion;

  /// Codes for the clinical conclusion of test results
  /// One or more codes that represent the summary conclusion (interpretation/impression) of the diagnostic report.
  final List<CodeableConcept>? conclusionCode;

  /// Clinically relevant time/time-period for report
  /// The time or time-period the observed values are related to. When the subject of the report is a patient, this is usually either the time of the procedure or of specimen collection(s), but very often the source of the date/time is not known, only the date/time itself.
  /// If the diagnostic procedure was performed on the patient, this is the time it was performed. If there are specimens, the diagnostically relevant time can be derived from the specimen collection times, but the specimen information is not always available, and the exact relationship between the specimens and the diagnostically relevant time is not always automatic.
  final String? effectiveDateTime;

  /// Clinically relevant time/time-period for report
  /// The time or time-period the observed values are related to. When the subject of the report is a patient, this is usually either the time of the procedure or of specimen collection(s), but very often the source of the date/time is not known, only the date/time itself.
  /// If the diagnostic procedure was performed on the patient, this is the time it was performed. If there are specimens, the diagnostically relevant time can be derived from the specimen collection times, but the specimen information is not always available, and the exact relationship between the specimens and the diagnostically relevant time is not always automatic.
  final Period? effectivePeriod;

  /// Health care event when test ordered
  /// The healthcare event  (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about.
  /// This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter  but still be tied to the context of the encounter  (e.g. pre-admission laboratory tests).
  final Reference? encounter;

  /// Business identifier for report
  /// Identifiers assigned to this report by the performer or other systems.
  /// Usually assigned by the Information System of the diagnostic service provider (filler id).
  final List<Identifier>? identifier;

  /// Reference to full details of imaging associated with the diagnostic report
  /// One or more links to full details of any imaging performed during the diagnostic investigation. Typically, this is imaging performed by DICOM enabled modalities, but this is not required. A fully enabled PACS viewer can use this information to provide views of the source images.
  /// ImagingStudy and the image element are somewhat overlapping - typically, the list of image references in the image element will also be found in one of the imaging study resources. However, each caters to different types of displays for different types of purposes. Neither, either, or both may be provided.
  final List<Reference>? imagingStudy;

  /// DateTime this version was made
  /// The date and time that this version of the report was made available to providers, typically after the report was reviewed and verified.
  /// May be different from the update time of the resource itself, because that is the status of the record (potentially a secondary copy), not the actual release time of the report.
  final String? issued;

  /// Key images associated with this report
  /// A list of key images associated with this report. The images are generally created during the diagnostic process, and may be directly of the patient, or of treated specimens (i.e. slides of interest).
  final List<DiagnosticReportMedia>? media;

  /// Responsible Diagnostic Service
  /// The diagnostic service that is responsible for issuing the report.
  /// This is not necessarily the source of the atomic data items or the entity that interpreted the results. It is the entity that takes responsibility for the clinical report.
  final List<Reference>? performer;

  /// Entire report as issued
  /// Rich text representation of the entire result as issued by the diagnostic service. Multiple formats are allowed but they SHALL be semantically equivalent.
  /// "application/pdf" is recommended as the most reliable and interoperable in this context.
  final List<Attachment>? presentedForm;

  /// Observations
  /// [Observations](observation.html)  that are part of this diagnostic report.
  /// Observations can contain observations.
  final List<Reference>? result;

  /// Primary result interpreter
  /// The practitioner or organization that is responsible for the report's conclusions and interpretations.
  /// Might not be the same entity that takes responsibility for the clinical report.
  final List<Reference>? resultsInterpreter;

  /// Specimens this report is based on
  /// Details about the specimens on which this diagnostic report is based.
  /// If the specimen is sufficiently specified with a code in the test result name, then this additional data may be redundant. If there are multiple specimens, these may be represented per observation or group.
  final List<Reference>? specimen;

  /// The status of the diagnostic report.
  final String
      status; // Possible values: 'registered', 'partial', 'preliminary', 'final', 'amended', 'corrected', 'appended', 'cancelled', 'entered-in-error', 'unknown'
  /// The subject of the report - usually, but not always, the patient
  /// The subject of the report. Usually, but not always, this is a patient. However, diagnostic services also perform analyses on specimens collected from a variety of other sources.
  final Reference? subject;
  DiagnosticReport({
    this.basedOn,
    this.category,
    required this.code,
    this.conclusion,
    this.conclusionCode,
    super.contained,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.encounter,
    super.fhirExtension,
    super.id,
    this.identifier,
    this.imagingStudy,
    super.implicitRules,
    this.issued,
    super.language,
    this.media,
    super.meta,
    super.modifierExtension,
    this.performer,
    this.presentedForm,
    this.result,
    this.resultsInterpreter,
    this.specimen,
    required this.status,
    this.subject,
    super.text,
  });

  @override
  factory DiagnosticReport.fromJson(Map<String, dynamic> json) {
    return DiagnosticReport(
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      code: CodeableConcept.fromJson(
          (json['code'] as Map).cast<String, dynamic>()),
      conclusion: json['conclusion'] as String?,
      conclusionCode: (json['conclusionCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      effectiveDateTime: json['effectiveDateTime'] as String?,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              (json['effectivePeriod'] as Map).cast<String, dynamic>())
          : null,
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
      imagingStudy: (json['imagingStudy'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      issued: json['issued'] as String?,
      language: json['language'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => DiagnosticReportMedia.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      presentedForm: (json['presentedForm'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      resultsInterpreter: (json['resultsInterpreter'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'category': category?.map((e) => e.toJson()).toList(),
        'code': code.toJson(),
        'conclusion': conclusion,
        'conclusionCode': conclusionCode?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'effectiveDateTime': effectiveDateTime,
        'effectivePeriod': effectivePeriod?.toJson(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'imagingStudy': imagingStudy?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'issued': issued,
        'language': language,
        'media': media?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'performer': performer?.map((e) => e.toJson()).toList(),
        'presentedForm': presentedForm?.map((e) => e.toJson()).toList(),
        'result': result?.map((e) => e.toJson()).toList(),
        'resultsInterpreter':
            resultsInterpreter?.map((e) => e.toJson()).toList(),
        'specimen': specimen?.map((e) => e.toJson()).toList(),
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
      };

  @override
  DiagnosticReport copyWith({
    List<Reference>? basedOn,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    String? conclusion,
    List<CodeableConcept>? conclusionCode,
    List<Resource>? contained,
    String? effectiveDateTime,
    Period? effectivePeriod,
    Reference? encounter,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    List<Reference>? imagingStudy,
    String? implicitRules,
    String? issued,
    String? language,
    List<DiagnosticReportMedia>? media,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Reference>? performer,
    List<Attachment>? presentedForm,
    List<Reference>? result,
    List<Reference>? resultsInterpreter,
    List<Reference>? specimen,
    String? status,
    Reference? subject,
    Narrative? text,
  }) {
    return DiagnosticReport(
      basedOn: basedOn ?? this.basedOn,
      category: category ?? this.category,
      code: code ?? this.code,
      conclusion: conclusion ?? this.conclusion,
      conclusionCode: conclusionCode ?? this.conclusionCode,
      contained: contained ?? this.contained,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      imagingStudy: imagingStudy ?? this.imagingStudy,
      implicitRules: implicitRules ?? this.implicitRules,
      issued: issued ?? this.issued,
      language: language ?? this.language,
      media: media ?? this.media,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      performer: performer ?? this.performer,
      presentedForm: presentedForm ?? this.presentedForm,
      result: result ?? this.result,
      resultsInterpreter: resultsInterpreter ?? this.resultsInterpreter,
      specimen: specimen ?? this.specimen,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}
