part of '../fhir_dart.dart';

 /// A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
class TestScript extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'TestScript';
   /// Contact details for the publisher
   /// Contact details to assist a user in finding and communicating with the publisher.
   /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;
   /// Use and/or publishing restrictions
   /// A copyright statement relating to the test script and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the test script.
  final String? copyright;
   /// Date last changed
   /// The date  (and optionally time) when the test script was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the test script changes.
   /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the test script. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;
   /// Natural language description of the test script
   /// A free text natural language description of the test script from a consumer's perspective.
   /// This description can be used to capture details such as why the test script was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the test script as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the test script is presumed to be the predominant language in the place the test script was created).
  final String? description;
   /// An abstract server representing a destination or receiver in a message exchange
   /// An abstract server used in operations within this test script in the destination element.
   /// The purpose of this element is to define the profile of a destination element used elsewhere in the script.  Test engines could then use the destination-profile mapping to offer a filtered list of test systems that can serve as the receiver for the interaction.
  final List<TestScriptDestination>? destination;
   /// For testing purposes, not real usage
   /// A Boolean value to indicate that this test script is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
   /// Allows filtering of test scripts that are appropriate for use versus not.
  final bool? experimental;
   /// Fixture in the test script - by reference (uri). All fixtures are required for the test script to execute.
  final List<TestScriptFixture>? fixture;
   /// Additional identifier for the test script
   /// A formal identifier that is used to identify this test script when it is represented in other formats, or referenced in a specification, model, design or an instance.
   /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this test script outside of FHIR, where it is not possible to use the logical URI.
  final Identifier? identifier;
   /// Intended jurisdiction for test script (if applicable)
   /// A legal or geographic region in which the test script is intended to be used.
   /// It may be possible for the test script to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;
   /// Required capability that is assumed to function correctly on the FHIR server being tested
   /// The required capability must exist and are assumed to function correctly on the FHIR server being tested.
  final TestScriptMetadata? metadata;
   /// Name for this test script (computer friendly)
   /// A natural language name identifying the test script. This name should be usable as an identifier for the module by machine processing applications such as code generation.
   /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String name;
   /// An abstract server representing a client or sender in a message exchange
   /// An abstract server used in operations within this test script in the origin element.
   /// The purpose of this element is to define the profile of an origin element used elsewhere in the script.  Test engines could then use the origin-profile mapping to offer a filtered list of test systems that can serve as the sender for the interaction.
  final List<TestScriptOrigin>? origin;
   /// Reference of the validation profile
   /// Reference to the profile to be used for validation.
   /// See http://build.fhir.org/resourcelist.html for complete list of resource types.
  final List<Reference>? profile;
   /// Name of the publisher (organization or individual)
   /// The name of the organization or individual that published the test script.
   /// Usually an organization but may be an individual. The publisher (or steward) of the test script is the organization or individual primarily responsible for the maintenance and upkeep of the test script. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the test script. This item SHOULD be populated unless the information is available from context.
  final String? publisher;
   /// Why this test script is defined
   /// Explanation of why this test script is needed and why it has been designed as it has.
   /// This element does not describe the usage of the test script. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this test script.
  final String? purpose;
   /// A series of required setup operations before tests are executed.
  final TestScriptSetup? setup;
   /// The status of this test script. Enables tracking the life-cycle of the content.
   /// Allows filtering of test scripts that are appropriate for use versus not.
  final String status; // Possible values: 'draft', 'active', 'retired', 'unknown'
   /// A series of required clean up steps
   /// A series of operations required to clean up after all the tests are executed (successfully or otherwise).
  final TestScriptTeardown? teardown;
   /// A test in this script.
  final List<TestScriptTest>? test;
   /// Name for this test script (human friendly)
   /// A short, descriptive, user-friendly title for the test script.
   /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;
   /// Canonical identifier for this test script, represented as a URI (globally unique)
   /// An absolute URI that is used to identify this test script when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this test script is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the test script is stored on different servers.
   /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
   /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions). 
   /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String url;
   /// The context that the content is intended to support
   /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate test script instances.
   /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;
   /// Placeholder for evaluated elements
   /// Variable is set based either on element value in response body or on header field value in the response headers.
   /// Variables would be set based either on XPath/JSONPath expressions against fixtures (static and response), or headerField evaluations against response headers. If variable evaluates to nodelist or anything other than a primitive value, then test engine would report an error.  Variables would be used to perform clean replacements in "operation.params", "operation.requestHeader.value", and "operation.url" element values during operation calls and in "assert.value" during assertion evaluations. This limits the places that test engines would need to look for placeholders "${}".  Variables are scoped to the whole script. They are NOT evaluated at declaration. They are evaluated by test engine when used for substitutions in "operation.params", "operation.requestHeader.value", and "operation.url" element values during operation calls and in "assert.value" during assertion evaluations.  See example testscript-search.xml.
  final List<TestScriptVariable>? variable;
   /// Business version of the test script
   /// The identifier that is used to identify this version of the test script when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the test script author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
   /// There may be different test script instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the test script with the format [url]|[version].
  final String? version;
  TestScript({
    this.contact,
    super.contained,
    this.copyright,
    this.date,
    this.description,
    this.destination,
    this.experimental,
    super.fhirExtension,
    this.fixture,
    super.id,
    this.identifier,
    super.implicitRules,
    this.jurisdiction,
    super.language,
    super.meta,
    this.metadata,
    super.modifierExtension,
    required this.name,
    this.origin,
    this.profile,
    this.publisher,
    this.purpose,
    this.setup,
    required this.status,
    this.teardown,
    this.test,
    super.text,
    this.title,
    required this.url,
    this.useContext,
    this.variable,
    this.version,
  });
  
  @override
  factory TestScript.fromJson(Map<String, dynamic> json) {
    return TestScript(
      contact: (json['contact'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      destination: (json['destination'] as List<dynamic>?)?.map((e) => TestScriptDestination.fromJson(e as Map<String, dynamic>)).toList(),
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      fixture: (json['fixture'] as List<dynamic>?)?.map((e) => TestScriptFixture.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      metadata: json['metadata'] != null ? TestScriptMetadata.fromJson(json['metadata'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String,
      origin: (json['origin'] as List<dynamic>?)?.map((e) => TestScriptOrigin.fromJson(e as Map<String, dynamic>)).toList(),
      profile: (json['profile'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      setup: json['setup'] != null ? TestScriptSetup.fromJson(json['setup'] as Map<String, dynamic>) : null,
      status: json['status'] as String,
      teardown: json['teardown'] != null ? TestScriptTeardown.fromJson(json['teardown'] as Map<String, dynamic>) : null,
      test: (json['test'] as List<dynamic>?)?.map((e) => TestScriptTest.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      title: json['title'] as String?,
      url: json['url'] as String,
      useContext: (json['useContext'] as List<dynamic>?)?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>)).toList(),
      variable: (json['variable'] as List<dynamic>?)?.map((e) => TestScriptVariable.fromJson(e as Map<String, dynamic>)).toList(),
      version: json['version'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contact': contact?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'copyright': copyright,
      'date': date,
      'description': description,
      'destination': destination?.map((e) => e.toJson()).toList(),
      'experimental': experimental,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'fixture': fixture?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.toJson(),
      'implicitRules': implicitRules,
      'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
      'language': language,
      'meta': meta?.toJson(),
      'metadata': metadata?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'origin': origin?.map((e) => e.toJson()).toList(),
      'profile': profile?.map((e) => e.toJson()).toList(),
      'publisher': publisher,
      'purpose': purpose,
      'setup': setup?.toJson(),
      'status': status,
      'teardown': teardown?.toJson(),
      'test': test?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
      'title': title,
      'url': url,
      'useContext': useContext?.map((e) => e.toJson()).toList(),
      'variable': variable?.map((e) => e.toJson()).toList(),
      'version': version,
    };
  
  @override
  TestScript copyWith({
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    String? description,
    List<TestScriptDestination>? destination,
    bool? experimental,
    List<Extension>? fhirExtension,
    List<TestScriptFixture>? fixture,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? language,
    Meta? meta,
    TestScriptMetadata? metadata,
    List<Extension>? modifierExtension,
    String? name,
    List<TestScriptOrigin>? origin,
    List<Reference>? profile,
    String? publisher,
    String? purpose,
    TestScriptSetup? setup,
    String? status,
    TestScriptTeardown? teardown,
    List<TestScriptTest>? test,
    Narrative? text,
    String? title,
    String? url,
    List<UsageContext>? useContext,
    List<TestScriptVariable>? variable,
    String? version,
  }) {
    return TestScript(
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      description: description ?? this.description,
      destination: destination ?? this.destination,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fixture: fixture ?? this.fixture,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      metadata: metadata ?? this.metadata,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      origin: origin ?? this.origin,
      profile: profile ?? this.profile,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      setup: setup ?? this.setup,
      status: status ?? this.status,
      teardown: teardown ?? this.teardown,
      test: test ?? this.test,
      text: text ?? this.text,
      title: title ?? this.title,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      variable: variable ?? this.variable,
      version: version ?? this.version,
    );
  }
}
