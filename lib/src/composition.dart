part of '../fhir_dart.dart';

/// While the focus of this specification is on patient-specific clinical statements, this resource can also apply to other healthcare-related statements such as study protocol designs, healthcare invoices and other activities that are not necessarily patient-specific or clinical.
/// A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.).
/// To support documents, and also to capture the EN13606 notion of an attested commit to the patient EHR, and to allow a set of disparate resources at the information/engineering level to be gathered into a clinical statement.
class Composition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Composition';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Attests to accuracy of composition
  /// A participant who has attested to the accuracy of the composition/document.
  /// Only list each attester once.
  final List<CompositionAttester>? attester;

  /// Who and/or what authored the composition
  /// Identifies who is responsible for the information in the composition, not necessarily who typed it in.
  final List<Reference> author;

  /// Categorization of Composition
  /// A categorization for the type of the composition - helps for indexing and searching. This may be implied by or derived from the code specified in the Composition Type.
  /// This is a metadata field from [XDS/MHD](http://wiki.ihe.net/index.php?title=Mobile_access_to_Health_Documents_(MHD)).
  final List<CodeableConcept>? category;

  /// As defined by affinity domain
  /// The code specifying the level of confidentiality of the Composition.
  /// The exact use of this element, and enforcement and issues related to highly sensitive documents are out of scope for the base specification, and delegated to implementation profiles (see security section).  This element is labeled as a modifier because highly confidential documents must not be treated as if they are not.
  final String?
      confidentiality; // Possible values: 'U', 'L', 'M', 'N', 'R', 'V'
  /// Organization which maintains the composition
  /// Identifies the organization or group who is responsible for ongoing maintenance of and access to the composition/document information.
  /// This is useful when documents are derived from a composition - provides guidance for how to get the latest version of the document. This is optional because this is sometimes not known by the authoring system, and can be inferred by context. However, it is important that this information be known when working with a derived document, so providing a custodian is encouraged.
  final Reference? custodian;

  /// Composition editing time
  /// The composition editing time, when the composition was last logically changed by the author.
  /// The Last Modified Date on the composition may be after the date of the document was attested without being changed.
  final String date;

  /// Context of the Composition
  /// Describes the clinical encounter or type of care this documentation is associated with.
  final Reference? encounter;

  /// The clinical service(s) being documented
  /// The clinical service, such as a colonoscopy or an appendectomy, being documented.
  /// The event needs to be consistent with the type element, though can provide further information if desired.
  final List<CompositionEvent>? event;

  /// Version-independent identifier for the Composition
  /// A version-independent identifier for the Composition. This identifier stays constant as the composition is changed over time.
  /// Similar to ClinicalDocument/setId in CDA. See discussion in resource definition for how these relate.
  final Identifier? identifier;

  /// Relationships to other compositions/documents
  /// Relationships that this composition has with other compositions or documents that already exist.
  /// A document is a version specific composition.
  final List<CompositionRelatesTo>? relatesTo;

  /// Composition is broken into sections
  /// The root of the sections that make up the composition.
  final List<CompositionSection>? section;

  /// The workflow/clinical status of this composition. The status is a marker for the clinical standing of the document.
  /// If a composition is marked as withdrawn, the compositions/documents in the series, or data from the composition or document series, should never be displayed to a user without being clearly marked as untrustworthy. The flag "entered-in-error" is why this element is labeled as a modifier of other elements.
  /// Some reporting work flows require that the original narrative of a final document never be altered; instead, only new narrative can be added. The composition resource has no explicit status for explicitly noting whether this business rule is in effect. This would be handled by an extension if required.
  final String
      status; // Possible values: 'preliminary', 'final', 'amended', 'entered-in-error'
  /// Who and/or what the composition is about
  /// Who or what the composition is about. The composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).
  /// For clinical documents, this is usually the patient.
  final Reference? subject;

  /// Human Readable name/title
  /// Official human-readable label for the composition.
  /// For many compositions, the title is the same as the text or a display name of Composition.type (e.g. a "consultation" or "progress note"). Note that CDA does not make title mandatory, but there are no known cases where it is useful for title to be omitted, so it is mandatory here. Feedback on this requirement is welcome during the trial use period.
  final String title;

  /// Kind of composition (LOINC if possible)
  /// Specifies the particular kind of composition (e.g. History and Physical, Discharge Summary, Progress Note). This usually equates to the purpose of making the composition.
  /// For Composition type, LOINC is ubiquitous and strongly endorsed by HL7. Most implementation guides will require a specific LOINC code, or use LOINC as an extensible binding.
  final CodeableConcept type;
  Composition({
    this.attester,
    required this.author,
    this.category,
    this.confidentiality,
    super.contained,
    this.custodian,
    required this.date,
    this.encounter,
    this.event,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.relatesTo,
    this.section,
    required this.status,
    this.subject,
    super.text,
    required this.title,
    required this.type,
  });

  @override
  factory Composition.fromJson(Map<String, dynamic> json) {
    return Composition(
      attester: (json['attester'] as List<dynamic>?)
          ?.map((e) =>
              CompositionAttester.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      author: (json['author'] as List<dynamic>)
          .map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      confidentiality: json['confidentiality'] as String?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      custodian: json['custodian'] != null
          ? Reference.fromJson(
              (json['custodian'] as Map).cast<String, dynamic>())
          : null,
      date: json['date'] as String,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      event: (json['event'] as List<dynamic>?)
          ?.map((e) =>
              CompositionEvent.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              (json['identifier'] as Map).cast<String, dynamic>())
          : null,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map((e) =>
              CompositionRelatesTo.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      section: (json['section'] as List<dynamic>?)
          ?.map((e) =>
              CompositionSection.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      title: json['title'] as String,
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'attester': attester?.map((e) => e.toJson()).toList(),
        'author': author.map((e) => e.toJson()).toList(),
        'category': category?.map((e) => e.toJson()).toList(),
        'confidentiality': confidentiality,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'custodian': custodian?.toJson(),
        'date': date,
        'encounter': encounter?.toJson(),
        'event': event?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'relatesTo': relatesTo?.map((e) => e.toJson()).toList(),
        'section': section?.map((e) => e.toJson()).toList(),
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'title': title,
        'type': type.toJson(),
      };

  @override
  Composition copyWith({
    List<CompositionAttester>? attester,
    List<Reference>? author,
    List<CodeableConcept>? category,
    String? confidentiality,
    List<Resource>? contained,
    Reference? custodian,
    String? date,
    Reference? encounter,
    List<CompositionEvent>? event,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<CompositionRelatesTo>? relatesTo,
    List<CompositionSection>? section,
    String? status,
    Reference? subject,
    Narrative? text,
    String? title,
    CodeableConcept? type,
  }) {
    return Composition(
      attester: attester ?? this.attester,
      author: author ?? this.author,
      category: category ?? this.category,
      confidentiality: confidentiality ?? this.confidentiality,
      contained: contained ?? this.contained,
      custodian: custodian ?? this.custodian,
      date: date ?? this.date,
      encounter: encounter ?? this.encounter,
      event: event ?? this.event,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relatesTo: relatesTo ?? this.relatesTo,
      section: section ?? this.section,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      title: title ?? this.title,
      type: type ?? this.type,
    );
  }
}
