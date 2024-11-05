part of '../fhir_dart.dart';

/// A curated namespace that issues unique symbols within that namespace for the identification of concepts, people, devices, etc.  Represents a "System" used within the Identifier and Coding data types.
class NamingSystem extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'NamingSystem';

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Date last changed
  /// The date  (and optionally time) when the naming system was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the naming system changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the naming system. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String date;

  /// Natural language description of the naming system
  /// A free text natural language description of the naming system from a consumer's perspective. Details about what the namespace identifies including scope, granularity, version labeling, etc.
  /// This description can be used to capture details such as why the naming system was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the naming system as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the naming system is presumed to be the predominant language in the place the naming system was created).
  final String? description;

  /// Intended jurisdiction for naming system (if applicable)
  /// A legal or geographic region in which the naming system is intended to be used.
  /// It may be possible for the naming system to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// Indicates the purpose for the naming system - what kinds of things does it make unique?
  final String kind; // Possible values: 'codesystem', 'identifier', 'root'
  /// Name for this naming system (computer friendly)
  /// A natural language name identifying the naming system. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.The"symbolic name" for an OID would be captured as an extension.
  final String name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the naming system.
  /// Usually an organization but may be an individual. The publisher (or steward) of the naming system is the organization or individual primarily responsible for the maintenance and upkeep of the naming system. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the naming system. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Who maintains system namespace?
  /// The name of the organization that is responsible for issuing identifiers or codes for this namespace and ensuring their non-collision.
  /// This is the primary organization.  Responsibility for some aspects of a namespace may be delegated.
  final String? responsible;

  /// The status of this naming system. Enables tracking the life-cycle of the content.
  /// Allows filtering of naming systems that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// e.g. driver,  provider,  patient, bank etc.
  /// Categorizes a naming system for easier search by grouping related naming systems.
  /// This will most commonly be used for identifier namespaces, but categories could potentially be useful for code systems and authorities as well.
  final CodeableConcept? type;

  /// Unique identifiers used for system
  /// Indicates how the system may be identified when referenced in electronic exchange.
  /// Multiple identifiers may exist, either due to duplicate registration, regional rules, needs of different communication technologies, etc.
  final List<NamingSystemUniqueId> uniqueId;

  /// How/where is it used
  /// Provides guidance on the use of the namespace, including the handling of formatting characters, use of upper vs. lower case, etc.
  final String? usage;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate naming system instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;
  NamingSystem({
    this.contact,
    super.contained,
    required this.date,
    this.description,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    this.jurisdiction,
    required this.kind,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.name,
    this.publisher,
    this.responsible,
    required this.status,
    super.text,
    this.type,
    required this.uniqueId,
    this.usage,
    this.useContext,
  });

  @override
  factory NamingSystem.fromJson(Map<String, dynamic> json) {
    return NamingSystem(
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      date: json['date'] as String,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      kind: json['kind'] as String,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
      publisher: json['publisher'] as String?,
      responsible: json['responsible'] as String?,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      uniqueId: (json['uniqueId'] as List<dynamic>)
          .map((e) =>
              NamingSystemUniqueId.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      usage: json['usage'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map(
              (e) => UsageContext.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'kind': kind,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'publisher': publisher,
        'responsible': responsible,
        'status': status,
        'text': text?.toJson(),
        'type': type?.toJson(),
        'uniqueId': uniqueId.map((e) => e.toJson()).toList(),
        'usage': usage,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
      };

  @override
  NamingSystem copyWith({
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? date,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? kind,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? publisher,
    String? responsible,
    String? status,
    Narrative? text,
    CodeableConcept? type,
    List<NamingSystemUniqueId>? uniqueId,
    String? usage,
    List<UsageContext>? useContext,
  }) {
    return NamingSystem(
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      kind: kind ?? this.kind,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      publisher: publisher ?? this.publisher,
      responsible: responsible ?? this.responsible,
      status: status ?? this.status,
      text: text ?? this.text,
      type: type ?? this.type,
      uniqueId: uniqueId ?? this.uniqueId,
      usage: usage ?? this.usage,
      useContext: useContext ?? this.useContext,
    );
  }
}
