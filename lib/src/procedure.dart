part of '../fhir_dart.dart';

/// An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less invasive like long term services, counseling, or hypnotherapy.
class Procedure extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Procedure';

  /// Person who asserts this procedure
  /// Individual who is making the procedure statement.
  final Reference? asserter;

  /// A request for this procedure
  /// A reference to a resource that contains details of the request for this procedure.
  final List<Reference>? basedOn;

  /// Target body sites
  /// Detailed and structured anatomical location information. Multiple locations are allowed - e.g. multiple punch biopsies of a lesion.
  /// If the use case requires attributes from the BodySite resource (e.g. to identify and track separately) then use the standard extension [procedure-targetbodystructure](extension-procedure-targetbodystructure.html).
  final List<CodeableConcept>? bodySite;

  /// Classification of the procedure
  /// A code that classifies the procedure for searching, sorting and display purposes (e.g. "Surgical Procedure").
  final CodeableConcept? category;

  /// Identification of the procedure
  /// The specific procedure that is performed. Use text if the exact nature of the procedure cannot be coded (e.g. "Laparoscopic Appendectomy").
  final CodeableConcept? code;

  /// Complication following the procedure
  /// Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the notes, which will typically describe the procedure itself rather than any 'post procedure' issues.
  /// If complications are only expressed by the narrative text, they can be captured using the CodeableConcept.text.
  final List<CodeableConcept>? complication;

  /// A condition that is a result of the procedure
  /// Any complications that occurred during the procedure, or in the immediate post-performance period.
  final List<Reference>? complicationDetail;

  /// Encounter created as part of
  /// The Encounter during which this Procedure was created or performed or to which the creation of this record is tightly associated.
  /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter.
  final Reference? encounter;

  /// Manipulated, implanted, or removed device
  /// A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.
  final List<ProcedureFocalDevice>? focalDevice;

  /// Instructions for follow up
  /// If the procedure required specific follow up - e.g. removal of sutures. The follow up may be represented as a simple note or could potentially be more complex, in which case the CarePlan resource can be used.
  final List<CodeableConcept>? followUp;

  /// External Identifiers for this procedure
  /// Business identifiers assigned to this procedure by the performer or other systems which remain constant as the resource is updated and is propagated from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and Person resource instances might share the same social insurance number.
  final List<Identifier>? identifier;

  /// Instantiates FHIR protocol or definition
  /// The URL pointing to a FHIR-defined protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.
  final List<String>? instantiatesCanonical;

  /// Instantiates external protocol or definition
  /// The URL pointing to an externally maintained protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.
  /// This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.
  final List<String>? instantiatesUri;

  /// Where the procedure happened
  /// The location where the procedure actually happened.  E.g. a newborn at home, a tracheostomy at a restaurant.
  final Reference? location;

  /// Additional information about the procedure
  /// Any other notes and comments about the procedure.
  final List<Annotation>? note;

  /// The result of procedure
  /// The outcome of the procedure - did it resolve the reasons for the procedure being performed?
  /// If outcome contains narrative text only, it can be captured using the CodeableConcept.text.
  final CodeableConcept? outcome;

  /// Part of referenced event
  /// A larger event of which this particular procedure is a component or step.
  /// The MedicationAdministration resource has a partOf reference to Procedure, but this is not a circular reference.   For example, the anesthesia MedicationAdministration is part of the surgical Procedure (MedicationAdministration.partOf = Procedure).  For example, the procedure to insert the IV port for an IV medication administration is part of the medication administration (Procedure.partOf = MedicationAdministration).
  final List<Reference>? partOf;

  /// When the procedure was performed
  /// Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
  /// Age is generally used when the patient reports an age at which the procedure was performed. Range is generally used when the patient reports an age range when the procedure was performed, such as sometime between 20-25 years old.  dateTime supports a range of precision due to some procedures being reported as past procedures that might not have millisecond precision while other procedures performed and documented during the encounter might have more precise UTC timestamps with timezone.
  final Age? performedAge;

  /// When the procedure was performed
  /// Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
  /// Age is generally used when the patient reports an age at which the procedure was performed. Range is generally used when the patient reports an age range when the procedure was performed, such as sometime between 20-25 years old.  dateTime supports a range of precision due to some procedures being reported as past procedures that might not have millisecond precision while other procedures performed and documented during the encounter might have more precise UTC timestamps with timezone.
  final String? performedDateTime;

  /// When the procedure was performed
  /// Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
  /// Age is generally used when the patient reports an age at which the procedure was performed. Range is generally used when the patient reports an age range when the procedure was performed, such as sometime between 20-25 years old.  dateTime supports a range of precision due to some procedures being reported as past procedures that might not have millisecond precision while other procedures performed and documented during the encounter might have more precise UTC timestamps with timezone.
  final Period? performedPeriod;

  /// When the procedure was performed
  /// Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
  /// Age is generally used when the patient reports an age at which the procedure was performed. Range is generally used when the patient reports an age range when the procedure was performed, such as sometime between 20-25 years old.  dateTime supports a range of precision due to some procedures being reported as past procedures that might not have millisecond precision while other procedures performed and documented during the encounter might have more precise UTC timestamps with timezone.
  final Range? performedRange;

  /// When the procedure was performed
  /// Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
  /// Age is generally used when the patient reports an age at which the procedure was performed. Range is generally used when the patient reports an age range when the procedure was performed, such as sometime between 20-25 years old.  dateTime supports a range of precision due to some procedures being reported as past procedures that might not have millisecond precision while other procedures performed and documented during the encounter might have more precise UTC timestamps with timezone.
  final String? performedString;

  /// The people who performed the procedure
  /// Limited to "real" people rather than equipment.
  final List<ProcedurePerformer>? performer;

  /// Coded reason procedure performed
  /// The coded reason why the procedure was performed. This may be a coded entity of some type, or may simply be present as text.
  /// Use Procedure.reasonCode when a code sufficiently describes the reason.  Use Procedure.reasonReference when referencing a resource, which allows more information to be conveyed, such as onset date. Procedure.reasonCode and Procedure.reasonReference are not meant to be duplicative.  For a single reason, either Procedure.reasonCode or Procedure.reasonReference can be used.  Procedure.reasonCode may be a summary code, or Procedure.reasonReference may be used to reference a very precise definition of the reason using Condition | Observation | Procedure | DiagnosticReport | DocumentReference.  Both Procedure.reasonCode and Procedure.reasonReference can be used if they are describing different reasons for the procedure.
  final List<CodeableConcept>? reasonCode;

  /// The justification that the procedure was performed
  /// The justification of why the procedure was performed.
  /// It is possible for a procedure to be a reason (such as C-Section) for another procedure (such as an epidural). Other examples include endoscopy for dilatation and biopsy (a combination of diagnostic and therapeutic use).
  /// Use Procedure.reasonCode when a code sufficiently describes the reason.  Use Procedure.reasonReference when referencing a resource, which allows more information to be conveyed, such as onset date. Procedure.reasonCode and Procedure.reasonReference are not meant to be duplicative.  For a single reason, either Procedure.reasonCode or Procedure.reasonReference can be used.  Procedure.reasonCode may be a summary code, or Procedure.reasonReference may be used to reference a very precise definition of the reason using Condition | Observation | Procedure | DiagnosticReport | DocumentReference.  Both Procedure.reasonCode and Procedure.reasonReference can be used if they are describing different reasons for the procedure.
  final List<Reference>? reasonReference;

  /// Who recorded the procedure
  /// Individual who recorded the record and takes responsibility for its content.
  final Reference? recorder;

  /// Any report resulting from the procedure
  /// This could be a histology result, pathology report, surgical report, etc.
  /// There could potentially be multiple reports - e.g. if this was a procedure which took multiple biopsies resulting in a number of anatomical pathology reports.
  final List<Reference>? report;

  /// A code specifying the state of the procedure. Generally, this will be the in-progress or completed state.
  /// The "unknown" code is not to be used to convey other statuses.  The "unknown" code should be used when one of the statuses applies, but the authoring system doesn't know the current state of the procedure.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'preparation', 'in-progress', 'not-done', 'on-hold', 'stopped', 'completed', 'entered-in-error', 'unknown'
  /// Reason for current status
  /// Captures the reason for the current state of the procedure.
  /// This is generally only used for "exception" statuses such as "not-done", "suspended" or "aborted". The reason for performing the event at all is captured in reasonCode, not here.
  final CodeableConcept? statusReason;

  /// Who the procedure was performed on
  /// The person, animal or group on which the procedure was performed.
  final Reference subject;

  /// Coded items used during the procedure
  /// Identifies coded items that were used as part of the procedure.
  /// For devices actually implanted or removed, use Procedure.device.
  final List<CodeableConcept>? usedCode;

  /// Items used during procedure
  /// Identifies medications, devices and any other substance used as part of the procedure.
  /// For devices actually implanted or removed, use Procedure.device.
  final List<Reference>? usedReference;
  Procedure({
    this.asserter,
    this.basedOn,
    this.bodySite,
    this.category,
    this.code,
    this.complication,
    this.complicationDetail,
    super.contained,
    this.encounter,
    super.fhirExtension,
    this.focalDevice,
    this.followUp,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instantiatesCanonical,
    this.instantiatesUri,
    super.language,
    this.location,
    super.meta,
    super.modifierExtension,
    this.note,
    this.outcome,
    this.partOf,
    this.performedAge,
    this.performedDateTime,
    this.performedPeriod,
    this.performedRange,
    this.performedString,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.recorder,
    this.report,
    required this.status,
    this.statusReason,
    required this.subject,
    super.text,
    this.usedCode,
    this.usedReference,
  });

  @override
  factory Procedure.fromJson(Map<String, dynamic> json) {
    return Procedure(
      asserter: json['asserter'] != null
          ? Reference.fromJson(
              (json['asserter'] as Map).cast<String, dynamic>())
          : null,
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              (json['category'] as Map).cast<String, dynamic>())
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      complication: (json['complication'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      complicationDetail: (json['complicationDetail'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      focalDevice: (json['focalDevice'] as List<dynamic>?)
          ?.map((e) =>
              ProcedureFocalDevice.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      followUp: (json['followUp'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      language: json['language'] as String?,
      location: json['location'] != null
          ? Reference.fromJson(
              (json['location'] as Map).cast<String, dynamic>())
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      outcome: json['outcome'] != null
          ? CodeableConcept.fromJson(
              (json['outcome'] as Map).cast<String, dynamic>())
          : null,
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      performedAge: json['performedAge'] != null
          ? Age.fromJson((json['performedAge'] as Map).cast<String, dynamic>())
          : null,
      performedDateTime: json['performedDateTime'] as String?,
      performedPeriod: json['performedPeriod'] != null
          ? Period.fromJson(
              (json['performedPeriod'] as Map).cast<String, dynamic>())
          : null,
      performedRange: json['performedRange'] != null
          ? Range.fromJson(
              (json['performedRange'] as Map).cast<String, dynamic>())
          : null,
      performedString: json['performedString'] as String?,
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) =>
              ProcedurePerformer.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      recorder: json['recorder'] != null
          ? Reference.fromJson(
              (json['recorder'] as Map).cast<String, dynamic>())
          : null,
      report: (json['report'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              (json['statusReason'] as Map).cast<String, dynamic>())
          : null,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      usedCode: (json['usedCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      usedReference: (json['usedReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'asserter': asserter?.toJson(),
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'bodySite': bodySite?.map((e) => e.toJson()).toList(),
        'category': category?.toJson(),
        'code': code?.toJson(),
        'complication': complication?.map((e) => e.toJson()).toList(),
        'complicationDetail':
            complicationDetail?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'focalDevice': focalDevice?.map((e) => e.toJson()).toList(),
        'followUp': followUp?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'instantiatesCanonical': instantiatesCanonical?.map((e) => e).toList(),
        'instantiatesUri': instantiatesUri?.map((e) => e).toList(),
        'language': language,
        'location': location?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'outcome': outcome?.toJson(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'performedAge': performedAge?.toJson(),
        'performedDateTime': performedDateTime,
        'performedPeriod': performedPeriod?.toJson(),
        'performedRange': performedRange?.toJson(),
        'performedString': performedString,
        'performer': performer?.map((e) => e.toJson()).toList(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'recorder': recorder?.toJson(),
        'report': report?.map((e) => e.toJson()).toList(),
        'status': status,
        'statusReason': statusReason?.toJson(),
        'subject': subject.toJson(),
        'text': text?.toJson(),
        'usedCode': usedCode?.map((e) => e.toJson()).toList(),
        'usedReference': usedReference?.map((e) => e.toJson()).toList(),
      };

  @override
  Procedure copyWith({
    Reference? asserter,
    List<Reference>? basedOn,
    List<CodeableConcept>? bodySite,
    CodeableConcept? category,
    CodeableConcept? code,
    List<CodeableConcept>? complication,
    List<Reference>? complicationDetail,
    List<Resource>? contained,
    Reference? encounter,
    List<Extension>? fhirExtension,
    List<ProcedureFocalDevice>? focalDevice,
    List<CodeableConcept>? followUp,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<String>? instantiatesCanonical,
    List<String>? instantiatesUri,
    String? language,
    Reference? location,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    CodeableConcept? outcome,
    List<Reference>? partOf,
    Age? performedAge,
    String? performedDateTime,
    Period? performedPeriod,
    Range? performedRange,
    String? performedString,
    List<ProcedurePerformer>? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? recorder,
    List<Reference>? report,
    String? status,
    CodeableConcept? statusReason,
    Reference? subject,
    Narrative? text,
    List<CodeableConcept>? usedCode,
    List<Reference>? usedReference,
  }) {
    return Procedure(
      asserter: asserter ?? this.asserter,
      basedOn: basedOn ?? this.basedOn,
      bodySite: bodySite ?? this.bodySite,
      category: category ?? this.category,
      code: code ?? this.code,
      complication: complication ?? this.complication,
      complicationDetail: complicationDetail ?? this.complicationDetail,
      contained: contained ?? this.contained,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      focalDevice: focalDevice ?? this.focalDevice,
      followUp: followUp ?? this.followUp,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      language: language ?? this.language,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      outcome: outcome ?? this.outcome,
      partOf: partOf ?? this.partOf,
      performedAge: performedAge ?? this.performedAge,
      performedDateTime: performedDateTime ?? this.performedDateTime,
      performedPeriod: performedPeriod ?? this.performedPeriod,
      performedRange: performedRange ?? this.performedRange,
      performedString: performedString ?? this.performedString,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      recorder: recorder ?? this.recorder,
      report: report ?? this.report,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      usedCode: usedCode ?? this.usedCode,
      usedReference: usedReference ?? this.usedReference,
    );
  }
}
