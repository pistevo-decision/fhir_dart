part of '../fhir_dart.dart';

/// A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
class TerminologyCapabilities extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'TerminologyCapabilities';

  /// Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation
  /// Whether the $closure operation is supported.
  final TerminologyCapabilitiesClosure? closure;

  /// explicit | all
  /// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
  /// See notes on the [ValueSet](valueset.html#) resource.
  final String? codeSearch; // Possible values: 'explicit', 'all'
  /// A code system supported by the server
  /// Identifies a code system that is supported by the server. If there is a no code system URL, then this declares the general assumptions a client can make about support for any CodeSystem resource.
  /// The code system - identified by its system URL - may also be declared explicitly as a Code System Resource at /CodeSystem, but it might not be.
  final List<TerminologyCapabilitiesCodeSystem>? codeSystem;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the terminology capabilities and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the terminology capabilities.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the terminology capabilities was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the terminology capabilities changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the terminology capabilities. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String date;

  /// Natural language description of the terminology capabilities
  /// A free text natural language description of the terminology capabilities from a consumer's perspective. Typically, this is used when the capability statement describes a desired rather than an actual solution, for example as a formal expression of requirements as part of an RFP.
  /// This description can be used to capture details such as why the terminology capabilities was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the terminology capabilities as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the terminology capabilities is presumed to be the predominant language in the place the terminology capabilities was created).This does not need to be populated if the description is adequately implied by the software or implementation details.
  final String? description;

  /// Information about the [ValueSet/$expand](valueset-operation-expand.html) operation.
  final TerminologyCapabilitiesExpansion? expansion;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this terminology capabilities is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of terminology capabilitiess that are appropriate for use versus not.
  final bool? experimental;

  /// If this describes a specific instance
  /// Identifies a specific implementation instance that is described by the terminology capability statement - i.e. a particular installation, rather than the capabilities of a software program.
  final TerminologyCapabilitiesImplementation? implementation;

  /// Intended jurisdiction for terminology capabilities (if applicable)
  /// A legal or geographic region in which the terminology capabilities is intended to be used.
  /// It may be possible for the terminology capabilities to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// The way that this statement is intended to be used, to describe an actual running instance of software, a particular product (kind, not instance of software) or a class of implementation (e.g. a desired purchase).
  final String
      kind; // Possible values: 'instance', 'capability', 'requirements'
  /// Whether lockedDate is supported
  /// Whether the server supports lockedDate.
  final bool? lockedDate;

  /// Name for this terminology capabilities (computer friendly)
  /// A natural language name identifying the terminology capabilities. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the terminology capabilities.
  /// Usually an organization but may be an individual. The publisher (or steward) of the terminology capabilities is the organization or individual primarily responsible for the maintenance and upkeep of the terminology capabilities. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the terminology capabilities. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this terminology capabilities is defined
  /// Explanation of why this terminology capabilities is needed and why it has been designed as it has.
  /// This element does not describe the usage of the terminology capabilities. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this terminology capabilities.
  final String? purpose;

  /// Software that is covered by this terminology capability statement.  It is used when the statement describes the capabilities of a particular software version, independent of an installation.
  final TerminologyCapabilitiesSoftware? software;

  /// The status of this terminology capabilities. Enables tracking the life-cycle of the content.
  /// Allows filtering of terminology capabilitiess that are appropriate for use versus not.This is not intended for use with actual capability statements, but where capability statements are used to describe possible or desired systems.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Name for this terminology capabilities (human friendly)
  /// A short, descriptive, user-friendly title for the terminology capabilities.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
  final TerminologyCapabilitiesTranslation? translation;

  /// Canonical identifier for this terminology capabilities, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this terminology capabilities when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this terminology capabilities is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the terminology capabilities is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate terminology capabilities instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
  final TerminologyCapabilitiesValidateCode? validateCode;

  /// Business version of the terminology capabilities
  /// The identifier that is used to identify this version of the terminology capabilities when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the terminology capabilities author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different terminology capabilities instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the terminology capabilities with the format [url]|[version].
  final String? version;
  TerminologyCapabilities({
    this.closure,
    this.codeSearch,
    this.codeSystem,
    this.contact,
    super.contained,
    this.copyright,
    required this.date,
    this.description,
    this.expansion,
    this.experimental,
    super.fhirExtension,
    super.id,
    this.implementation,
    super.implicitRules,
    this.jurisdiction,
    required this.kind,
    super.language,
    this.lockedDate,
    super.meta,
    super.modifierExtension,
    this.name,
    this.publisher,
    this.purpose,
    this.software,
    required this.status,
    super.text,
    this.title,
    this.translation,
    this.url,
    this.useContext,
    this.validateCode,
    this.version,
  });

  @override
  factory TerminologyCapabilities.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilities(
      closure: json['closure'] != null
          ? TerminologyCapabilitiesClosure.fromJson(
              json['closure'] as Map<String, dynamic>)
          : null,
      codeSearch: json['codeSearch'] as String?,
      codeSystem: (json['codeSystem'] as List<dynamic>?)
          ?.map((e) => TerminologyCapabilitiesCodeSystem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String,
      description: json['description'] as String?,
      expansion: json['expansion'] != null
          ? TerminologyCapabilitiesExpansion.fromJson(
              json['expansion'] as Map<String, dynamic>)
          : null,
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      implementation: json['implementation'] != null
          ? TerminologyCapabilitiesImplementation.fromJson(
              json['implementation'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: json['kind'] as String,
      language: json['language'] as String?,
      lockedDate: json['lockedDate'] as bool?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      software: json['software'] != null
          ? TerminologyCapabilitiesSoftware.fromJson(
              json['software'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
      translation: json['translation'] != null
          ? TerminologyCapabilitiesTranslation.fromJson(
              json['translation'] as Map<String, dynamic>)
          : null,
      url: json['url'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      validateCode: json['validateCode'] != null
          ? TerminologyCapabilitiesValidateCode.fromJson(
              json['validateCode'] as Map<String, dynamic>)
          : null,
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'closure': closure?.toJson(),
        'codeSearch': codeSearch,
        'codeSystem': codeSystem?.map((e) => e.toJson()).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'copyright': copyright,
        'date': date,
        'description': description,
        'expansion': expansion?.toJson(),
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implementation': implementation?.toJson(),
        'implicitRules': implicitRules,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'kind': kind,
        'language': language,
        'lockedDate': lockedDate,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'publisher': publisher,
        'purpose': purpose,
        'software': software?.toJson(),
        'status': status,
        'text': text?.toJson(),
        'title': title,
        'translation': translation?.toJson(),
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'validateCode': validateCode?.toJson(),
        'version': version,
      };

  @override
  TerminologyCapabilities copyWith({
    TerminologyCapabilitiesClosure? closure,
    String? codeSearch,
    List<TerminologyCapabilitiesCodeSystem>? codeSystem,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    String? description,
    TerminologyCapabilitiesExpansion? expansion,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? id,
    TerminologyCapabilitiesImplementation? implementation,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? kind,
    String? language,
    bool? lockedDate,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? publisher,
    String? purpose,
    TerminologyCapabilitiesSoftware? software,
    String? status,
    Narrative? text,
    String? title,
    TerminologyCapabilitiesTranslation? translation,
    String? url,
    List<UsageContext>? useContext,
    TerminologyCapabilitiesValidateCode? validateCode,
    String? version,
  }) {
    return TerminologyCapabilities(
      closure: closure ?? this.closure,
      codeSearch: codeSearch ?? this.codeSearch,
      codeSystem: codeSystem ?? this.codeSystem,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      description: description ?? this.description,
      expansion: expansion ?? this.expansion,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implementation: implementation ?? this.implementation,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      kind: kind ?? this.kind,
      language: language ?? this.language,
      lockedDate: lockedDate ?? this.lockedDate,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      software: software ?? this.software,
      status: status ?? this.status,
      text: text ?? this.text,
      title: title ?? this.title,
      translation: translation ?? this.translation,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      validateCode: validateCode ?? this.validateCode,
      version: version ?? this.version,
    );
  }
}
