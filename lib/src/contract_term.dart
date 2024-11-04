part of '../fhir_dart.dart';

 /// Contract Term List
 /// One or more Contract Provisions, which may be related and conveyed as a group, and may contain nested groups.
class ContractTerm extends BackboneElement implements FhirResource {
   /// Entity being ascribed responsibility
   /// An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking place.
   /// Several agents may be associated (i.e. has some responsibility for an activity) with an activity and vice-versa.
   /// For example, in cases of actions initiated by one user for other users, or in events that involve more than one user, hardware device, software, or system process. However, only one user may be the initiator/requestor for the event.
  final List<ContractTermAction>? action;
   /// Contract Term Effective Time
   /// Relevant time or time-period when this Contract Provision is applicable.
  final Period? applies;
   /// Contract Term Asset List.
  final List<ContractTermAsset>? asset;
   /// Nested Contract Term Group
   /// Nested group of Contract Provisions.
  final List<ContractTerm>? group;
   /// Contract Term Number
   /// Unique identifier for this particular Contract Provision.
  final Identifier? identifier;
   /// Contract Term Issue Date Time
   /// When this Contract Provision was issued.
  final String? issued;
   /// Context of the Contract term
   /// The matter of concern in the context of this provision of the agrement.
  final ContractTermOffer offer;
   /// Protection for the Term
   /// Security labels that protect the handling of information about the term and its elements, which may be specifically identified..
  final List<ContractTermSecurityLabel>? securityLabel;
   /// Contract Term Type specific classification
   /// A specialized legal clause or condition based on overarching contract type.
  final CodeableConcept? subType;
   /// Term Statement
   /// Statement of a provision in a policy or a contract.
  final String? text;
   /// Term Concern
   /// The entity that the term applies to.
  final CodeableConcept? topicCodeableConcept;
   /// Term Concern
   /// The entity that the term applies to.
  final Reference? topicReference;
   /// Contract Term Type or Form
   /// A legal clause or condition contained within a contract that requires one or both parties to perform a particular requirement by some specified time or prevents one or both parties from performing a particular requirement by some specified time.
  final CodeableConcept? type;
  ContractTerm({
    this.action,
    this.applies,
    this.asset,
    super.fhirExtension,
    this.group,
    super.id,
    this.identifier,
    this.issued,
    super.modifierExtension,
    required this.offer,
    this.securityLabel,
    this.subType,
    this.text,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
  });
  
  @override
  factory ContractTerm.fromJson(Map<String, dynamic> json) {
    return ContractTerm(
      action: (json['action'] as List<dynamic>?)?.map((e) => ContractTermAction.fromJson(e as Map<String, dynamic>)).toList(),
      applies: json['applies'] != null ? Period.fromJson(json['applies'] as Map<String, dynamic>) : null,
      asset: (json['asset'] as List<dynamic>?)?.map((e) => ContractTermAsset.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      group: (json['group'] as List<dynamic>?)?.map((e) => ContractTerm.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      issued: json['issued'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      offer: ContractTermOffer.fromJson(json['offer'] as Map<String, dynamic>),
      securityLabel: (json['securityLabel'] as List<dynamic>?)?.map((e) => ContractTermSecurityLabel.fromJson(e as Map<String, dynamic>)).toList(),
      subType: json['subType'] != null ? CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>) : null,
      text: json['text'] as String?,
      topicCodeableConcept: json['topicCodeableConcept'] != null ? CodeableConcept.fromJson(json['topicCodeableConcept'] as Map<String, dynamic>) : null,
      topicReference: json['topicReference'] != null ? Reference.fromJson(json['topicReference'] as Map<String, dynamic>) : null,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'action': action?.map((e) => e.toJson()).toList(),
      'applies': applies?.toJson(),
      'asset': asset?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'group': group?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.toJson(),
      'issued': issued,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'offer': offer.toJson(),
      'securityLabel': securityLabel?.map((e) => e.toJson()).toList(),
      'subType': subType?.toJson(),
      'text': text,
      'topicCodeableConcept': topicCodeableConcept?.toJson(),
      'topicReference': topicReference?.toJson(),
      'type': type?.toJson(),
    };
  
  @override
  ContractTerm copyWith({
    List<ContractTermAction>? action,
    Period? applies,
    List<ContractTermAsset>? asset,
    List<Extension>? fhirExtension,
    List<ContractTerm>? group,
    String? id,
    Identifier? identifier,
    String? issued,
    List<Extension>? modifierExtension,
    ContractTermOffer? offer,
    List<ContractTermSecurityLabel>? securityLabel,
    CodeableConcept? subType,
    String? text,
    CodeableConcept? topicCodeableConcept,
    Reference? topicReference,
    CodeableConcept? type,
  }) {
    return ContractTerm(
      action: action ?? this.action,
      applies: applies ?? this.applies,
      asset: asset ?? this.asset,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      group: group ?? this.group,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      issued: issued ?? this.issued,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      offer: offer ?? this.offer,
      securityLabel: securityLabel ?? this.securityLabel,
      subType: subType ?? this.subType,
      text: text ?? this.text,
      topicCodeableConcept: topicCodeableConcept ?? this.topicCodeableConcept,
      topicReference: topicReference ?? this.topicReference,
      type: type ?? this.type,
    );
  }
}
