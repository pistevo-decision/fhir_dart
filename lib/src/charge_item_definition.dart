part of '../fhir_dart.dart';

/// The ChargeItemDefinition resource provides the properties that apply to the (billing) codes necessary to calculate costs and prices. The properties may differ largely depending on type and realm, therefore this resource gives only a rough structure and requires profiling for each type of billing code system.
class ChargeItemDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'ChargeItemDefinition';

  /// Whether or not the billing code is applicable
  /// Expressions that describe applicability criteria for the billing code.
  /// The applicability conditions can be used to ascertain whether a billing item is allowed in a specific context. E.g. some billing codes may only be applicable in out-patient settings, only to male/female patients or only to children.
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// When the charge item definition was approved by publisher
  /// The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
  /// The 'date' element may be more recent than the approval date because of minor changes or editorial corrections.
  final String? approvalDate;

  /// Billing codes or product types this definition applies to
  /// The defined billing details in this resource pertain to the given billing code.
  final CodeableConcept? code;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the charge item definition and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the charge item definition.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the charge item definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the charge item definition changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the charge item definition. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Underlying externally-defined charge item definition
  /// The URL pointing to an externally-defined charge item definition that is adhered to in whole or in part by this definition.
  final List<String>? derivedFromUri;

  /// Natural language description of the charge item definition
  /// A free text natural language description of the charge item definition from a consumer's perspective.
  /// This description can be used to capture details such as why the charge item definition was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the charge item definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the charge item definition is presumed to be the predominant language in the place the charge item definition was created).
  final String? description;

  /// When the charge item definition is expected to be used
  /// The period during which the charge item definition content was or is planned to be in active use.
  /// The effective period for a charge item definition  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
  final Period? effectivePeriod;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this charge item definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of charge item definitions that are appropriate for use versus not.
  final bool? experimental;

  /// Additional identifier for the charge item definition
  /// A formal identifier that is used to identify this charge item definition when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this charge item definition outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;

  /// Instances this definition applies to
  /// The defined billing details in this resource pertain to the given product instance(s).
  /// In case of highly customized, individually produced or fitted devices/substances, the pricing information may be different for each instance of the product. This reference links pricing details to specific product instances.
  final List<Reference>? instance;

  /// Intended jurisdiction for charge item definition (if applicable)
  /// A legal or geographic region in which the charge item definition is intended to be used.
  /// It may be possible for the charge item definition to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// When the charge item definition was last reviewed
  /// The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
  /// If specified, this date follows the original approval date.
  final String? lastReviewDate;

  /// A larger definition of which this particular definition is a component or step.
  final List<String>? partOf;

  /// Group of properties which are applicable under the same conditions. If no applicability rules are established for the group, then all properties always apply.
  final List<ChargeItemDefinitionPropertyGroup>? propertyGroup;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the charge item definition.
  /// Usually an organization but may be an individual. The publisher (or steward) of the charge item definition is the organization or individual primarily responsible for the maintenance and upkeep of the charge item definition. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the charge item definition. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Completed or terminated request(s) whose function is taken by this new request
  /// As new versions of a protocol or guideline are defined, allows identification of what versions are replaced by a new instance.
  final List<String>? replaces;

  /// The current state of the ChargeItemDefinition.
  /// Allows filtering of charge item definitions that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Name for this charge item definition (human friendly)
  /// A short, descriptive, user-friendly title for the charge item definition.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// Canonical identifier for this charge item definition, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this charge item definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this charge item definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the charge item definition is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate charge item definition instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the charge item definition
  /// The identifier that is used to identify this version of the charge item definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the charge item definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active assets.
  /// There may be different charge item definition instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the charge item definition with the format [url]|[version].
  final String? version;
  ChargeItemDefinition({
    this.applicability,
    this.approvalDate,
    this.code,
    this.contact,
    super.contained,
    this.copyright,
    this.date,
    this.derivedFromUri,
    this.description,
    this.effectivePeriod,
    this.experimental,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instance,
    this.jurisdiction,
    super.language,
    this.lastReviewDate,
    super.meta,
    super.modifierExtension,
    this.partOf,
    this.propertyGroup,
    this.publisher,
    this.replaces,
    required this.status,
    super.text,
    this.title,
    required this.url,
    this.useContext,
    this.version,
  });

  @override
  factory ChargeItemDefinition.fromJson(Map<String, dynamic> json) {
    return ChargeItemDefinition(
      applicability: (json['applicability'] as List<dynamic>?)
          ?.map((e) => ChargeItemDefinitionApplicability.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      approvalDate: json['approvalDate'] as String?,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String?,
      derivedFromUri: (json['derivedFromUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>)
          : null,
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      instance: (json['instance'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String?,
      lastReviewDate: json['lastReviewDate'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      partOf:
          (json['partOf'] as List<dynamic>?)?.map((e) => e as String).toList(),
      propertyGroup: (json['propertyGroup'] as List<dynamic>?)
          ?.map((e) => ChargeItemDefinitionPropertyGroup.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      publisher: json['publisher'] as String?,
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
      url: json['url'] as String,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'applicability': applicability?.map((e) => e.toJson()).toList(),
        'approvalDate': approvalDate,
        'code': code?.toJson(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'copyright': copyright,
        'date': date,
        'derivedFromUri': derivedFromUri?.map((e) => e).toList(),
        'description': description,
        'effectivePeriod': effectivePeriod?.toJson(),
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'instance': instance?.map((e) => e.toJson()).toList(),
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language,
        'lastReviewDate': lastReviewDate,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'partOf': partOf?.map((e) => e).toList(),
        'propertyGroup': propertyGroup?.map((e) => e.toJson()).toList(),
        'publisher': publisher,
        'replaces': replaces?.map((e) => e).toList(),
        'status': status,
        'text': text?.toJson(),
        'title': title,
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  ChargeItemDefinition copyWith({
    List<ChargeItemDefinitionApplicability>? applicability,
    String? approvalDate,
    CodeableConcept? code,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    List<String>? derivedFromUri,
    String? description,
    Period? effectivePeriod,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<Reference>? instance,
    List<CodeableConcept>? jurisdiction,
    String? language,
    String? lastReviewDate,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<String>? partOf,
    List<ChargeItemDefinitionPropertyGroup>? propertyGroup,
    String? publisher,
    List<String>? replaces,
    String? status,
    Narrative? text,
    String? title,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return ChargeItemDefinition(
      applicability: applicability ?? this.applicability,
      approvalDate: approvalDate ?? this.approvalDate,
      code: code ?? this.code,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      derivedFromUri: derivedFromUri ?? this.derivedFromUri,
      description: description ?? this.description,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instance: instance ?? this.instance,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      partOf: partOf ?? this.partOf,
      propertyGroup: propertyGroup ?? this.propertyGroup,
      publisher: publisher ?? this.publisher,
      replaces: replaces ?? this.replaces,
      status: status ?? this.status,
      text: text ?? this.text,
      title: title ?? this.title,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}
