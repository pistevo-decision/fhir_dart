part of '../fhir_dart.dart';

/// Example of workflow instance.
class ExampleScenario extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'ExampleScenario';

  /// Actor participating in the resource.
  final List<ExampleScenarioActor>? actor;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the example scenario and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the example scenario.
  /// nullFrequently, the copyright differs between the value set and the codes that are included. The copyright statement should clearly differentiate between these when required.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the example scenario was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the example scenario changes. (e.g. the 'content logical definition').
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the example scenario. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this example scenario is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of example scenarios that are appropriate for use versus not.
  final bool? experimental;

  /// Additional identifier for the example scenario
  /// A formal identifier that is used to identify this example scenario when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this example scenario outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;

  /// Each resource and each version that is present in the workflow.
  final List<ExampleScenarioInstance>? instance;

  /// Intended jurisdiction for example scenario (if applicable)
  /// A legal or geographic region in which the example scenario is intended to be used.
  /// It may be possible for the example scenario to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// Name for this example scenario (computer friendly)
  /// A natural language name identifying the example scenario. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// Each major process - a group of operations.
  final List<ExampleScenarioProcess>? process;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the example scenario.
  /// Usually an organization but may be an individual. The publisher (or steward) of the example scenario is the organization or individual primarily responsible for the maintenance and upkeep of the example scenario. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the example scenario. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// The purpose of the example, e.g. to illustrate a scenario
  /// What the example scenario resource is created for. This should not be used to show the business purpose of the scenario itself, but the purpose of documenting a scenario.
  /// This element does not describe the usage of the example scenario. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this example scenario.
  final String? purpose;

  /// The status of this example scenario. Enables tracking the life-cycle of the content.
  /// Allows filtering of example scenarios that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Canonical identifier for this example scenario, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this example scenario when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this example scenario is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the example scenario is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate example scenario instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the example scenario
  /// The identifier that is used to identify this version of the example scenario when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the example scenario author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different example scenario instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the example scenario with the format [url]|[version].
  final String? version;

  /// Another nested workflow.
  final List<String>? workflow;
  ExampleScenario({
    this.actor,
    this.contact,
    super.contained,
    this.copyright,
    this.date,
    this.experimental,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instance,
    this.jurisdiction,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.process,
    this.publisher,
    this.purpose,
    required this.status,
    super.text,
    this.url,
    this.useContext,
    this.version,
    this.workflow,
  });

  @override
  factory ExampleScenario.fromJson(Map<String, dynamic> json) {
    return ExampleScenario(
      actor: (json['actor'] as List<dynamic>?)
          ?.map((e) => ExampleScenarioActor.fromJson(e as Map<String, dynamic>))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String?,
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
          ?.map((e) =>
              ExampleScenarioInstance.fromJson(e as Map<String, dynamic>))
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      process: (json['process'] as List<dynamic>?)
          ?.map(
              (e) => ExampleScenarioProcess.fromJson(e as Map<String, dynamic>))
          .toList(),
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      url: json['url'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as String?,
      workflow: (json['workflow'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'actor': actor?.map((e) => e.toJson()).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'copyright': copyright,
        'date': date,
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'instance': instance?.map((e) => e.toJson()).toList(),
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'process': process?.map((e) => e.toJson()).toList(),
        'publisher': publisher,
        'purpose': purpose,
        'status': status,
        'text': text?.toJson(),
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
        'workflow': workflow?.map((e) => e).toList(),
      };

  @override
  ExampleScenario copyWith({
    List<ExampleScenarioActor>? actor,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<ExampleScenarioInstance>? instance,
    List<CodeableConcept>? jurisdiction,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<ExampleScenarioProcess>? process,
    String? publisher,
    String? purpose,
    String? status,
    Narrative? text,
    String? url,
    List<UsageContext>? useContext,
    String? version,
    List<String>? workflow,
  }) {
    return ExampleScenario(
      actor: actor ?? this.actor,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instance: instance ?? this.instance,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      process: process ?? this.process,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      status: status ?? this.status,
      text: text ?? this.text,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
      workflow: workflow ?? this.workflow,
    );
  }
}
