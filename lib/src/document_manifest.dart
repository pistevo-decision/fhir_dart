part of '../fhir_dart.dart';

/// A collection of documents compiled for a purpose together with metadata that applies to the collection.
class DocumentManifest extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'DocumentManifest';

  /// Who and/or what authored the DocumentManifest
  /// Identifies who is the author of the manifest. Manifest author is not necessarly the author of the references included.
  /// Not necessarily who did the actual data entry (i.e. typist) or who was the source (informant).
  final List<Reference>? author;

  /// Items in manifest
  /// The list of Resources that consist of the parts of this manifest.
  /// When used for XDS the intended focus of the DocumentManifest is for the reference to target to be a set of DocumentReference Resources. The reference is to "Any" to support EN 13606 usage, where an extract is DocumentManifest that references  List and Composition resources.
  final List<Reference> content;

  /// When this document manifest created
  /// When the document manifest was created for submission to the server (not necessarily the same thing as the actual resource last modified time, since it may be modified, replicated, etc.).
  /// Creation time is used for tracking, organizing versions and searching. This is the creation time of the document set, not the documents on which it is based.
  final String? created;

  /// Human-readable description (title)
  /// Human-readable description of the source document. This is sometimes known as the "title".
  /// What the document is about, rather than a terse summary of the document. It is commonly the case that records do not have a title and are collectively referred to by the display name of Record code (e.g. a "consultation" or "progress note").
  final String? description;

  /// Other identifiers for the manifest
  /// Other identifiers associated with the document manifest, including version independent  identifiers.
  final List<Identifier>? identifier;

  /// Unique Identifier for the set of documents
  /// A single identifier that uniquely identifies this manifest. Principally used to refer to the manifest in non-FHIR contexts.
  final Identifier? masterIdentifier;

  /// Intended to get notified about this set of documents
  /// A patient, practitioner, or organization for which this set of documents is intended.
  /// How the recipient receives the document set or is notified of it is up to the implementation. This element is just a statement of intent. If the recipient is a person, and it is not known whether the person is a patient or a practitioner, RelatedPerson would be the default choice.
  final List<Reference>? recipient;

  /// Related things
  /// Related identifiers or resources associated with the DocumentManifest.
  /// May be identifiers or resources that caused the DocumentManifest to be created.
  final List<DocumentManifestRelated>? related;

  /// The source system/application/software
  /// Identifies the source system, application, or software that produced the document manifest.
  final String? source;

  /// The status of this document manifest.
  /// This element is labeled as a modifier because the status contains the codes that mark the manifest as not currently valid.
  final String
      status; // Possible values: 'current', 'superseded', 'entered-in-error'
  /// The subject of the set of documents
  /// Who or what the set of documents is about. The documents can be about a person, (patient or healthcare practitioner), a device (i.e. machine) or even a group of subjects (such as a document about a herd of farm animals, or a set of patients that share a common exposure). If the documents cross more than one subject, then more than one subject is allowed here (unusual use case).
  final Reference? subject;

  /// Kind of document set
  /// The code specifying the type of clinical activity that resulted in placing the associated content into the DocumentManifest.
  /// Specifies the kind of this set of documents (e.g. Patient Summary, Discharge Summary, Prescription, etc.). The type of a set of documents may be the same as one of the documents in it - especially if there is only one - but it may be wider.
  final CodeableConcept? type;
  DocumentManifest({
    this.author,
    super.contained,
    required this.content,
    this.created,
    this.description,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.masterIdentifier,
    super.meta,
    super.modifierExtension,
    this.recipient,
    this.related,
    this.source,
    required this.status,
    this.subject,
    super.text,
    this.type,
  });

  @override
  factory DocumentManifest.fromJson(Map<String, dynamic> json) {
    return DocumentManifest(
      author: (json['author'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: (json['content'] as List<dynamic>)
          .map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] as String?,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      masterIdentifier: json['masterIdentifier'] != null
          ? Identifier.fromJson(
              json['masterIdentifier'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      related: (json['related'] as List<dynamic>?)
          ?.map((e) =>
              DocumentManifestRelated.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: json['source'] as String?,
      status: json['status'] as String,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'author': author?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'content': content.map((e) => e.toJson()).toList(),
        'created': created,
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'masterIdentifier': masterIdentifier?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'recipient': recipient?.map((e) => e.toJson()).toList(),
        'related': related?.map((e) => e.toJson()).toList(),
        'source': source,
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'type': type?.toJson(),
      };

  @override
  DocumentManifest copyWith({
    List<Reference>? author,
    List<Resource>? contained,
    List<Reference>? content,
    String? created,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Identifier? masterIdentifier,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Reference>? recipient,
    List<DocumentManifestRelated>? related,
    String? source,
    String? status,
    Reference? subject,
    Narrative? text,
    CodeableConcept? type,
  }) {
    return DocumentManifest(
      author: author ?? this.author,
      contained: contained ?? this.contained,
      content: content ?? this.content,
      created: created ?? this.created,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      masterIdentifier: masterIdentifier ?? this.masterIdentifier,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      recipient: recipient ?? this.recipient,
      related: related ?? this.related,
      source: source ?? this.source,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
