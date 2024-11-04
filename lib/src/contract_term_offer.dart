part of '../fhir_dart.dart';

/// Context of the Contract term
/// The matter of concern in the context of this provision of the agrement.
class ContractTermOffer extends BackboneElement implements FhirResource {
  /// Response to offer text.
  final List<ContractTermOfferAnswer>? answer;

  /// Accepting party choice
  /// Type of choice made by accepting party with respect to an offer made by an offeror/ grantee.
  final CodeableConcept? decision;

  /// How decision is conveyed
  /// How the decision about a Contract was conveyed.
  final List<CodeableConcept>? decisionMode;

  /// Offer business ID
  /// Unique identifier for this particular Contract Provision.
  final List<Identifier>? identifier;

  /// Pointer to text
  /// The id of the clause or question text of the offer in the referenced questionnaire/response.
  final List<String>? linkId;

  /// Offer Recipient.
  final List<ContractTermOfferParty>? party;

  /// Offer restriction numbers
  /// Security labels that protects the offer.
  final List<int>? securityLabelNumber;

  /// Human readable offer text
  /// Human readable form of this Contract Offer.
  final String? text;

  /// Negotiable offer asset
  /// The owner of an asset has the residual control rights over the asset: the right to decide all usages of the asset in any way not inconsistent with a prior contract, custom, or law (Hart, 1995, p. 30).
  /// The Contract.topic may be an application for or offer of a policy or service (e.g., uri to a consent directive form or a health insurance policy), which becomes the Contract once accepted by both the grantor and grantee.
  /// The Contract Resource may function simply as the computable representation of the executed contract, which may be the attached to the Contract Resource as the “binding” or as the “friendly” electronic form.  For example, a Contract Resource may be automatically populated with the values expressed in a related QuestionnaireResponse.
  /// However, the Contract Resource may be considered the legally binding contract if it is the only “executed” form of this contract, and includes the signatures as *The Contract Resource may function as the computable representation of an application or offer in a pre-executed Contract if the grantor has not entered any values.  In this case, it is populated with values in a “legal” form of the application or offer or by the values in an associated Questionnaire.  If the grantor has filled in the legal form or the associated Questionnaire Response, then these values are used to populate a pre-executed Contract Resource.
  /// If the Contract.topic is considered an application or offer, then the policy is often required to be attached as the “legal” basis for the application to ensure “informed consent” to the contract, and that any discrepancy between the application and the policy are interpreted against the policy.  Implementers should check organizational and jurisdictional policies to determine the relationship among multiple representations of a contract pre- and post-execution.
  final Reference? topic;

  /// Contract Offer Type or Form
  /// Type of Contract Provision such as specific requirements, purposes for actions, obligations, prohibitions, e.g. life time maximum benefit.
  final CodeableConcept? type;
  ContractTermOffer({
    this.answer,
    this.decision,
    this.decisionMode,
    super.fhirExtension,
    super.id,
    this.identifier,
    this.linkId,
    super.modifierExtension,
    this.party,
    this.securityLabelNumber,
    this.text,
    this.topic,
    this.type,
  });

  @override
  factory ContractTermOffer.fromJson(Map<String, dynamic> json) {
    return ContractTermOffer(
      answer: (json['answer'] as List<dynamic>?)
          ?.map((e) =>
              ContractTermOfferAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      decision: json['decision'] != null
          ? CodeableConcept.fromJson(json['decision'] as Map<String, dynamic>)
          : null,
      decisionMode: (json['decisionMode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      linkId:
          (json['linkId'] as List<dynamic>?)?.map((e) => e as String).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      party: (json['party'] as List<dynamic>?)
          ?.map(
              (e) => ContractTermOfferParty.fromJson(e as Map<String, dynamic>))
          .toList(),
      securityLabelNumber: (json['securityLabelNumber'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      text: json['text'] as String?,
      topic: json['topic'] != null
          ? Reference.fromJson(json['topic'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'answer': answer?.map((e) => e.toJson()).toList(),
        'decision': decision?.toJson(),
        'decisionMode': decisionMode?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'linkId': linkId?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'party': party?.map((e) => e.toJson()).toList(),
        'securityLabelNumber': securityLabelNumber?.map((e) => e).toList(),
        'text': text,
        'topic': topic?.toJson(),
        'type': type?.toJson(),
      };

  @override
  ContractTermOffer copyWith({
    List<ContractTermOfferAnswer>? answer,
    CodeableConcept? decision,
    List<CodeableConcept>? decisionMode,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    List<String>? linkId,
    List<Extension>? modifierExtension,
    List<ContractTermOfferParty>? party,
    List<int>? securityLabelNumber,
    String? text,
    Reference? topic,
    CodeableConcept? type,
  }) {
    return ContractTermOffer(
      answer: answer ?? this.answer,
      decision: decision ?? this.decision,
      decisionMode: decisionMode ?? this.decisionMode,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      linkId: linkId ?? this.linkId,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      party: party ?? this.party,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      text: text ?? this.text,
      topic: topic ?? this.topic,
      type: type ?? this.type,
    );
  }
}
