part of '../fhir_dart.dart';

 /// Contract Signatory
 /// Parties with legal standing in the Contract, including the principal parties, the grantor(s) and grantee(s), which are any person or organization bound by the contract, and any ancillary parties, which facilitate the execution of the contract such as a notary or witness.
 /// Signers who are principal parties to the contract are bound by the Contract.activity related to the Contract.topic, and the Contract.term(s), which either extend or restrict the overall action on the topic by, for example, stipulating specific policies or obligations constraining actions, action reason, or agents with respect to some or all of the topic.
 /// For example, specifying how policies or obligations shall constrain actions and action reasons permitted or denied on all or a subset of the Contract.topic (e.g., all or a portion of property being transferred by the contract), agents (e.g., who can resell, assign interests, or alter the property being transferred by the contract), actions, and action reasons; or with respect to Contract.terms, stipulating, extending, or limiting the Contract.period of applicability or valuation of items under consideration.
class ContractSigner extends BackboneElement implements FhirResource {
   /// Contract Signatory Party
   /// Party which is a signator to this Contract.
  final Reference party;
   /// Contract Documentation Signature
   /// Legally binding Contract DSIG signature contents in Base64.
  final List<Signature> signature;
   /// Contract Signatory Role
   /// Role of this Contract signer, e.g. notary, grantee.
  final Coding type;
  ContractSigner({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.party,
    required this.signature,
    required this.type,
  });
  
  @override
  factory ContractSigner.fromJson(Map<String, dynamic> json) {
    return ContractSigner(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      party: Reference.fromJson(json['party'] as Map<String, dynamic>),
      signature: (json['signature'] as List<dynamic>).map((e) => Signature.fromJson(e as Map<String, dynamic>)).toList(),
      type: Coding.fromJson(json['type'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'party': party.toJson(),
      'signature': signature.map((e) => e.toJson()).toList(),
      'type': type.toJson(),
    };
  
  @override
  ContractSigner copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? party,
    List<Signature>? signature,
    Coding? type,
  }) {
    return ContractSigner(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      party: party ?? this.party,
      signature: signature ?? this.signature,
      type: type ?? this.type,
    );
  }
}
