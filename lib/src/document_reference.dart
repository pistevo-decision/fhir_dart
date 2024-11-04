part of '../fhir_dart.dart';

 /// Usually, this is used for documents other than those defined by FHIR.
 /// A reference to a document of any kind for any purpose. Provides metadata about the document so that the document can be discovered and managed. The scope of a document is any seralized object with a mime-type, so includes formal patient centric documents (CDA), cliical notes, scanned paper, and non-patient specific documents like policy text.
class DocumentReference extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'DocumentReference';
   /// Who/what authenticated the document
   /// Which person or organization authenticates that this document is valid.
   /// Represents a participant within the author institution who has legally authenticated or attested the document. Legal authentication implies that a document has been signed manually or electronically by the legal Authenticator.
  final Reference? authenticator;
   /// Who and/or what authored the document
   /// Identifies who is responsible for adding the information to the document.
   /// Not necessarily who did the actual data entry (i.e. typist) or who was the source (informant).
  final List<Reference>? author;
   /// Categorization of document
   /// A categorization for the type of document referenced - helps for indexing and searching. This may be implied by or derived from the code specified in the DocumentReference.type.
   /// Key metadata element describing the the category or classification of the document. This is a broader perspective that groups similar documents based on how they would be used. This is a primary key used in searching.
  final List<CodeableConcept>? category;
   /// Document referenced
   /// The document and format referenced. There may be multiple content element repetitions, each with a different format.
  final List<DocumentReferenceContent> content;
   /// Clinical context of document
   /// The clinical context in which the document was prepared.
   /// These values are primarily added to help with searching for interesting/relevant documents.
  final DocumentReferenceContext? context;
   /// Organization which maintains the document
   /// Identifies the organization or group who is responsible for ongoing maintenance of and access to the document.
   /// Identifies the logical organization (software system, vendor, or department) to go to find the current version, where to report issues, etc. This is different from the physical location (URL, disk drive, or server) of the document, which is the technical location of the document, which host may be delegated to the management of some other organization.
  final Reference? custodian;
   /// When this document reference was created
   /// When the document reference was created.
   /// Referencing/indexing time is used for tracking, organizing versions and searching.
  final String? date;
   /// Human-readable description of the source document.
   /// What the document is about,  a terse summary of the document.
  final String? description;
   /// The status of the underlying document.
   /// The document that is pointed to might be in various lifecycle states.
  final String? docStatus; // Possible values: 'preliminary', 'final', 'amended', 'entered-in-error'
   /// Other identifiers for the document
   /// Other identifiers associated with the document, including version independent identifiers.
  final List<Identifier>? identifier;
   /// Master Version Specific Identifier
   /// Document identifier as assigned by the source of the document. This identifier is specific to this version of the document. This unique identifier may be used elsewhere to identify this version of the document.
   /// CDA Document Id extension and root.
  final Identifier? masterIdentifier;
   /// Relationships to other documents
   /// Relationships that this document has with other document references that already exist.
   /// This element is labeled as a modifier because documents that append to other documents are incomplete on their own.
  final List<DocumentReferenceRelatesTo>? relatesTo;
   /// Document security-tags
   /// A set of Security-Tag codes specifying the level of privacy/security of the Document. Note that DocumentReference.meta.security contains the security labels of the "reference" to the document, while DocumentReference.securityLabel contains a snapshot of the security labels on the document the reference refers to.
   /// The confidentiality codes can carry multiple vocabulary items. HL7 has developed an understanding of security and privacy tags that might be desirable in a Document Sharing environment, called HL7 Healthcare Privacy and Security Classification System (HCS). The following specification is recommended but not mandated, as the vocabulary bindings are an administrative domain responsibility. The use of this method is up to the policy domain such as the XDS Affinity Domain or other Trust Domain where all parties including sender and recipients are trusted to appropriately tag and enforce.   
   /// In the HL7 Healthcare Privacy and Security Classification (HCS) there are code systems specific to Confidentiality, Sensitivity, Integrity, and Handling Caveats. Some values would come from a local vocabulary as they are related to workflow roles and special projects.
  final List<CodeableConcept>? securityLabel;
   /// The status of this document reference.
   /// This is the status of the DocumentReference object, which might be independent from the docStatus element.
   /// This element is labeled as a modifier because the status contains the codes that mark the document or reference as not currently valid.
  final String status; // Possible values: 'current', 'superseded', 'entered-in-error'
   /// Who/what is the subject of the document
   /// Who or what the document is about. The document can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of farm animals, or a set of patients that share a common exposure).
  final Reference? subject;
   /// Kind of document (LOINC if possible)
   /// Specifies the particular kind of document referenced  (e.g. History and Physical, Discharge Summary, Progress Note). This usually equates to the purpose of making the document referenced.
   /// Key metadata element describing the document that describes he exact type of document. Helps humans to assess whether the document is of interest when viewing a list of documents.
  final CodeableConcept? type;
  DocumentReference({
    this.authenticator,
    this.author,
    this.category,
    super.contained,
    required this.content,
    this.context,
    this.custodian,
    this.date,
    this.description,
    this.docStatus,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.masterIdentifier,
    super.meta,
    super.modifierExtension,
    this.relatesTo,
    this.securityLabel,
    required this.status,
    this.subject,
    super.text,
    this.type,
  });
  
  @override
  factory DocumentReference.fromJson(Map<String, dynamic> json) {
    return DocumentReference(
      authenticator: json['authenticator'] != null ? Reference.fromJson(json['authenticator'] as Map<String, dynamic>) : null,
      author: (json['author'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      category: (json['category'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      content: (json['content'] as List<dynamic>).map((e) => DocumentReferenceContent.fromJson(e as Map<String, dynamic>)).toList(),
      context: json['context'] != null ? DocumentReferenceContext.fromJson(json['context'] as Map<String, dynamic>) : null,
      custodian: json['custodian'] != null ? Reference.fromJson(json['custodian'] as Map<String, dynamic>) : null,
      date: json['date'] as String?,
      description: json['description'] as String?,
      docStatus: json['docStatus'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      masterIdentifier: json['masterIdentifier'] != null ? Identifier.fromJson(json['masterIdentifier'] as Map<String, dynamic>) : null,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      relatesTo: (json['relatesTo'] as List<dynamic>?)?.map((e) => DocumentReferenceRelatesTo.fromJson(e as Map<String, dynamic>)).toList(),
      securityLabel: (json['securityLabel'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      status: json['status'] as String,
      subject: json['subject'] != null ? Reference.fromJson(json['subject'] as Map<String, dynamic>) : null,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'authenticator': authenticator?.toJson(),
      'author': author?.map((e) => e.toJson()).toList(),
      'category': category?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'content': content.map((e) => e.toJson()).toList(),
      'context': context?.toJson(),
      'custodian': custodian?.toJson(),
      'date': date,
      'description': description,
      'docStatus': docStatus,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'masterIdentifier': masterIdentifier?.toJson(),
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'relatesTo': relatesTo?.map((e) => e.toJson()).toList(),
      'securityLabel': securityLabel?.map((e) => e.toJson()).toList(),
      'status': status,
      'subject': subject?.toJson(),
      'text': text?.toJson(),
      'type': type?.toJson(),
    };
  
  @override
  DocumentReference copyWith({
    Reference? authenticator,
    List<Reference>? author,
    List<CodeableConcept>? category,
    List<Resource>? contained,
    List<DocumentReferenceContent>? content,
    DocumentReferenceContext? context,
    Reference? custodian,
    String? date,
    String? description,
    String? docStatus,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Identifier? masterIdentifier,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<DocumentReferenceRelatesTo>? relatesTo,
    List<CodeableConcept>? securityLabel,
    String? status,
    Reference? subject,
    Narrative? text,
    CodeableConcept? type,
  }) {
    return DocumentReference(
      authenticator: authenticator ?? this.authenticator,
      author: author ?? this.author,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      content: content ?? this.content,
      context: context ?? this.context,
      custodian: custodian ?? this.custodian,
      date: date ?? this.date,
      description: description ?? this.description,
      docStatus: docStatus ?? this.docStatus,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      masterIdentifier: masterIdentifier ?? this.masterIdentifier,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relatesTo: relatesTo ?? this.relatesTo,
      securityLabel: securityLabel ?? this.securityLabel,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
