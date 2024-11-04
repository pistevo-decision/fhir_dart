part of '../fhir_dart.dart';

 /// Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
class Contract extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Contract';
   /// Acronym or short name
   /// Alternative representation of the title for this Contract definition, derivative, or instance in any legal state., e.g., a domain specific contract number related to legislation.
  final List<String>? alias;
   /// Effective time
   /// Relevant time or time-period when this Contract is applicable.
  final Period? applies;
   /// Source of Contract
   /// The individual or organization that authored the Contract definition, derivative, or instance in any legal state.
  final Reference? author;
   /// Authority under which this Contract has standing
   /// A formally or informally recognized grouping of people, principals, organizations, or jurisdictions formed for the purpose of achieving some form of collective action such as the promulgation, administration and enforcement of contracts and policies.
  final List<Reference>? authority;
   /// Contract precursor content
   /// Precusory content developed with a focus and intent of supporting the formation a Contract instance, which may be associated with and transformable into a Contract.
  final ContractContentDefinition? contentDefinition;
   /// Content derived from the basal information
   /// The minimal content derived from the basal information source at a specific stage in its lifecycle.
  final CodeableConcept? contentDerivative;
   /// A sphere of control governed by an authoritative jurisdiction, organization, or person
   /// Recognized governance framework or system operating with a circumscribed scope in accordance with specified principles, policies, processes or procedures for managing rights, actions, or behaviors of parties or principals relative to resources.
  final List<Reference>? domain;
   /// Contract cessation cause
   /// Event resulting in discontinuation or termination of this Contract instance by one or more parties to the contract.
  final CodeableConcept? expirationType;
   /// Contract Friendly Language
   /// The "patient friendly language" versionof the Contract in whole or in parts. "Patient friendly language" means the representation of the Contract and Contract Provisions in a manner that is readily accessible and understandable by a layperson in accordance with best practices for communication styles that ensure that those agreeing to or signing the Contract understand the roles, actions, obligations, responsibilities, and implication of the agreement.
  final List<ContractFriendly>? friendly;
   /// Contract number
   /// Unique identifier for this Contract or a derivative that references a Source Contract.
  final List<Identifier>? identifier;
   /// Source Contract Definition
   /// The URL pointing to a FHIR-defined Contract Definition that is adhered to in whole or part by this Contract.
  final Reference? instantiatesCanonical;
   /// External Contract Definition
   /// The URL pointing to an externally maintained definition that is adhered to in whole or in part by this Contract.
  final String? instantiatesUri;
   /// When this Contract was issued
   /// When this  Contract was issued.
  final String? issued;
   /// Contract Legal Language
   /// List of Legal expressions or representations of this Contract.
  final List<ContractLegal>? legal;
   /// Binding Contract
   /// Legally binding Contract: This is the signed and legally recognized representation of the Contract, which is considered the "source of truth" and which would be the basis for legal action related to enforcement of this Contract.
  final Attachment? legallyBindingAttachment;
   /// Binding Contract
   /// Legally binding Contract: This is the signed and legally recognized representation of the Contract, which is considered the "source of truth" and which would be the basis for legal action related to enforcement of this Contract.
  final Reference? legallyBindingReference;
   /// Negotiation status
   /// Legal states of the formation of a legal instrument, which is a formally executed written document that can be formally attributed to its author, records and formally expresses a legally enforceable act, process, or contractual duty, obligation, or right, and therefore evidences that act, process, or agreement.
  final CodeableConcept? legalState;
   /// Computer friendly designation
   /// A natural language name identifying this Contract definition, derivative, or instance in any legal state. Provides additional information about its content. This name should be usable as an identifier for the module by machine processing applications such as code generation.
   /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;
   /// Key event in Contract History
   /// Links to Provenance records for past versions of this Contract definition, derivative, or instance, which identify key state transitions or updates that are likely to be relevant to a user looking at the current version of the Contract.  The Provence.entity indicates the target that was changed in the update. http://build.fhir.org/provenance-definitions.html#Provenance.entity.
  final List<Reference>? relevantHistory;
   /// Computable Contract Language
   /// List of Computable Policy Rule Language Representations of this Contract.
  final List<ContractRule>? rule;
   /// Range of Legal Concerns
   /// A selector of legal concerns for this Contract definition, derivative, or instance in any legal state.
  final CodeableConcept? scope;
   /// Contract Signatory
   /// Parties with legal standing in the Contract, including the principal parties, the grantor(s) and grantee(s), which are any person or organization bound by the contract, and any ancillary parties, which facilitate the execution of the contract such as a notary or witness.
   /// Signers who are principal parties to the contract are bound by the Contract.activity related to the Contract.topic, and the Contract.term(s), which either extend or restrict the overall action on the topic by, for example, stipulating specific policies or obligations constraining actions, action reason, or agents with respect to some or all of the topic.
   /// For example, specifying how policies or obligations shall constrain actions and action reasons permitted or denied on all or a subset of the Contract.topic (e.g., all or a portion of property being transferred by the contract), agents (e.g., who can resell, assign interests, or alter the property being transferred by the contract), actions, and action reasons; or with respect to Contract.terms, stipulating, extending, or limiting the Contract.period of applicability or valuation of items under consideration.
  final List<ContractSigner>? signer;
   /// Specific Location
   /// Sites in which the contract is complied with,  exercised, or in force.
  final List<Reference>? site;
   /// The status of the resource instance.
   /// This element is labeled as a modifier because the status contains codes that mark the contract as not currently valid or active.
  final String? status; // Possible values: 'amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated'
   /// Contract Target Entity
   /// The target entity impacted by or of interest to parties to the agreement.
   /// The Contract.subject is an entity that has some role with respect to the Contract.topic and Contract.topic.term, which is of focal interest to the parties to the contract and likely impacted in a significant way by the Contract.action/Contract.action.reason and the Contract.term.action/Contract.action.reason. 
   /// In many cases, the Contract.subject is a Contract.signer if the subject is an adult; has a legal interest in the contract; and incompetent to participate in the contract agreement.
  final List<Reference>? subject;
   /// Subordinate Friendly name
   /// An explanatory or alternate user-friendly title for this Contract definition, derivative, or instance in any legal state.t giving additional information about its content.
  final String? subtitle;
   /// Subtype within the context of type
   /// Sub-category for the Contract that distinguishes the kinds of systems that would be interested in the Contract within the context of the Contract's scope.
  final List<CodeableConcept>? subType;
   /// Extra Information
   /// Information that may be needed by/relevant to the performer in their execution of this term action.
  final List<Reference>? supportingInfo;
   /// Contract Term List
   /// One or more Contract Provisions, which may be related and conveyed as a group, and may contain nested groups.
  final List<ContractTerm>? term;
   /// Human Friendly name
   /// A short, descriptive, user-friendly title for this Contract definition, derivative, or instance in any legal state.t giving additional information about its content.
  final String? title;
   /// Focus of contract interest
   /// Narrows the range of legal concerns to focus on the achievement of specific contractual objectives.
  final CodeableConcept? topicCodeableConcept;
   /// Focus of contract interest
   /// Narrows the range of legal concerns to focus on the achievement of specific contractual objectives.
  final Reference? topicReference;
   /// Legal instrument category
   /// A high-level category for the legal instrument, whether constructed as a Contract definition, derivative, or instance in any legal state.  Provides additional information about its content within the context of the Contract's scope to distinguish the kinds of systems that would be interested in the contract.
  final CodeableConcept? type;
   /// Basal definition
   /// Canonical identifier for this contract, represented as a URI (globally unique).
   /// Used in a domain that uses a supplied contract repository.
  final String? url;
   /// Business edition
   /// An edition identifier used for business purposes to label business significant variants.
   /// Note -  This is a business versionId, not a resource version id (see discussion http://build.fhir.org/resource.html#versions) 
   /// Comments - There may be different contract instances that have the same identifier but different versions. The version can be appended to the url in a reference to allow a reference to a particular business version of the plan definition with the format [url]|[version].
  final String? version;
  Contract({
    this.alias,
    this.applies,
    this.author,
    this.authority,
    super.contained,
    this.contentDefinition,
    this.contentDerivative,
    this.domain,
    this.expirationType,
    super.fhirExtension,
    this.friendly,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.issued,
    super.language,
    this.legal,
    this.legallyBindingAttachment,
    this.legallyBindingReference,
    this.legalState,
    super.meta,
    super.modifierExtension,
    this.name,
    this.relevantHistory,
    this.rule,
    this.scope,
    this.signer,
    this.site,
    this.status,
    this.subject,
    this.subtitle,
    this.subType,
    this.supportingInfo,
    this.term,
    super.text,
    this.title,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.url,
    this.version,
  });
  
  @override
  factory Contract.fromJson(Map<String, dynamic> json) {
    return Contract(
      alias: (json['alias'] as List<dynamic>?)?.map((e) => e as String).toList(),
      applies: json['applies'] != null ? Period.fromJson(json['applies'] as Map<String, dynamic>) : null,
      author: json['author'] != null ? Reference.fromJson(json['author'] as Map<String, dynamic>) : null,
      authority: (json['authority'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      contentDefinition: json['contentDefinition'] != null ? ContractContentDefinition.fromJson(json['contentDefinition'] as Map<String, dynamic>) : null,
      contentDerivative: json['contentDerivative'] != null ? CodeableConcept.fromJson(json['contentDerivative'] as Map<String, dynamic>) : null,
      domain: (json['domain'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      expirationType: json['expirationType'] != null ? CodeableConcept.fromJson(json['expirationType'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      friendly: (json['friendly'] as List<dynamic>?)?.map((e) => ContractFriendly.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      instantiatesCanonical: json['instantiatesCanonical'] != null ? Reference.fromJson(json['instantiatesCanonical'] as Map<String, dynamic>) : null,
      instantiatesUri: json['instantiatesUri'] as String?,
      issued: json['issued'] as String?,
      language: json['language'] as String?,
      legal: (json['legal'] as List<dynamic>?)?.map((e) => ContractLegal.fromJson(e as Map<String, dynamic>)).toList(),
      legallyBindingAttachment: json['legallyBindingAttachment'] != null ? Attachment.fromJson(json['legallyBindingAttachment'] as Map<String, dynamic>) : null,
      legallyBindingReference: json['legallyBindingReference'] != null ? Reference.fromJson(json['legallyBindingReference'] as Map<String, dynamic>) : null,
      legalState: json['legalState'] != null ? CodeableConcept.fromJson(json['legalState'] as Map<String, dynamic>) : null,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String?,
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      rule: (json['rule'] as List<dynamic>?)?.map((e) => ContractRule.fromJson(e as Map<String, dynamic>)).toList(),
      scope: json['scope'] != null ? CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>) : null,
      signer: (json['signer'] as List<dynamic>?)?.map((e) => ContractSigner.fromJson(e as Map<String, dynamic>)).toList(),
      site: (json['site'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      status: json['status'] as String?,
      subject: (json['subject'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      subtitle: json['subtitle'] as String?,
      subType: (json['subType'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      term: (json['term'] as List<dynamic>?)?.map((e) => ContractTerm.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      title: json['title'] as String?,
      topicCodeableConcept: json['topicCodeableConcept'] != null ? CodeableConcept.fromJson(json['topicCodeableConcept'] as Map<String, dynamic>) : null,
      topicReference: json['topicReference'] != null ? Reference.fromJson(json['topicReference'] as Map<String, dynamic>) : null,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
      url: json['url'] as String?,
      version: json['version'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'alias': alias?.map((e) => e).toList(),
      'applies': applies?.toJson(),
      'author': author?.toJson(),
      'authority': authority?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'contentDefinition': contentDefinition?.toJson(),
      'contentDerivative': contentDerivative?.toJson(),
      'domain': domain?.map((e) => e.toJson()).toList(),
      'expirationType': expirationType?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'friendly': friendly?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'instantiatesCanonical': instantiatesCanonical?.toJson(),
      'instantiatesUri': instantiatesUri,
      'issued': issued,
      'language': language,
      'legal': legal?.map((e) => e.toJson()).toList(),
      'legallyBindingAttachment': legallyBindingAttachment?.toJson(),
      'legallyBindingReference': legallyBindingReference?.toJson(),
      'legalState': legalState?.toJson(),
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'relevantHistory': relevantHistory?.map((e) => e.toJson()).toList(),
      'rule': rule?.map((e) => e.toJson()).toList(),
      'scope': scope?.toJson(),
      'signer': signer?.map((e) => e.toJson()).toList(),
      'site': site?.map((e) => e.toJson()).toList(),
      'status': status,
      'subject': subject?.map((e) => e.toJson()).toList(),
      'subtitle': subtitle,
      'subType': subType?.map((e) => e.toJson()).toList(),
      'supportingInfo': supportingInfo?.map((e) => e.toJson()).toList(),
      'term': term?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
      'title': title,
      'topicCodeableConcept': topicCodeableConcept?.toJson(),
      'topicReference': topicReference?.toJson(),
      'type': type?.toJson(),
      'url': url,
      'version': version,
    };
  
  @override
  Contract copyWith({
    List<String>? alias,
    Period? applies,
    Reference? author,
    List<Reference>? authority,
    List<Resource>? contained,
    ContractContentDefinition? contentDefinition,
    CodeableConcept? contentDerivative,
    List<Reference>? domain,
    CodeableConcept? expirationType,
    List<Extension>? fhirExtension,
    List<ContractFriendly>? friendly,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    Reference? instantiatesCanonical,
    String? instantiatesUri,
    String? issued,
    String? language,
    List<ContractLegal>? legal,
    Attachment? legallyBindingAttachment,
    Reference? legallyBindingReference,
    CodeableConcept? legalState,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<Reference>? relevantHistory,
    List<ContractRule>? rule,
    CodeableConcept? scope,
    List<ContractSigner>? signer,
    List<Reference>? site,
    String? status,
    List<Reference>? subject,
    String? subtitle,
    List<CodeableConcept>? subType,
    List<Reference>? supportingInfo,
    List<ContractTerm>? term,
    Narrative? text,
    String? title,
    CodeableConcept? topicCodeableConcept,
    Reference? topicReference,
    CodeableConcept? type,
    String? url,
    String? version,
  }) {
    return Contract(
      alias: alias ?? this.alias,
      applies: applies ?? this.applies,
      author: author ?? this.author,
      authority: authority ?? this.authority,
      contained: contained ?? this.contained,
      contentDefinition: contentDefinition ?? this.contentDefinition,
      contentDerivative: contentDerivative ?? this.contentDerivative,
      domain: domain ?? this.domain,
      expirationType: expirationType ?? this.expirationType,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      friendly: friendly ?? this.friendly,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instantiatesCanonical: instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      issued: issued ?? this.issued,
      language: language ?? this.language,
      legal: legal ?? this.legal,
      legallyBindingAttachment: legallyBindingAttachment ?? this.legallyBindingAttachment,
      legallyBindingReference: legallyBindingReference ?? this.legallyBindingReference,
      legalState: legalState ?? this.legalState,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      relevantHistory: relevantHistory ?? this.relevantHistory,
      rule: rule ?? this.rule,
      scope: scope ?? this.scope,
      signer: signer ?? this.signer,
      site: site ?? this.site,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      subtitle: subtitle ?? this.subtitle,
      subType: subType ?? this.subType,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      term: term ?? this.term,
      text: text ?? this.text,
      title: title ?? this.title,
      topicCodeableConcept: topicCodeableConcept ?? this.topicCodeableConcept,
      topicReference: topicReference ?? this.topicReference,
      type: type ?? this.type,
      url: url ?? this.url,
      version: version ?? this.version,
    );
  }
}
