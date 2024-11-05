part of '../fhir_dart.dart';

/// Constraints to the base Consent.policyRule
/// An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
class ConsentProvision extends BackboneElement implements FhirResource {
  /// Actions controlled by this rule
  /// Actions controlled by this Rule.
  /// Note that this is the direct action (not the grounds for the action covered in the purpose element). At present, the only action in the understood and tested scope of this resource is 'read'.
  final List<CodeableConcept>? action;

  /// Who|what controlled by this rule (or group, by role)
  /// Who or what is controlled by this rule. Use group to identify a set of actors by some property they share (e.g. 'admitting officers').
  final List<ConsentProvisionActor>? actor;

  /// e.g. Resource Type, Profile, CDA, etc.
  /// The class of information covered by this rule. The type can be a FHIR resource type, a profile on a type, or a CDA document, or some other type that indicates what sort of information the consent relates to.
  /// Multiple types are or'ed together. The intention of the contentType element is that the codes refer to profiles or document types defined in a standard or an implementation guide somewhere.
  final List<Coding>? fhirClass;

  /// e.g. LOINC or SNOMED CT code, etc. in the content
  /// If this code is found in an instance, then the rule applies.
  /// Typical use of this is a Document code with class = CDA.
  final List<CodeableConcept>? code;

  /// Data controlled by this rule
  /// The resources controlled by this rule if specific resources are referenced.
  final List<ConsentProvisionData>? data;

  /// Timeframe for data controlled by this rule
  /// Clinical or Operational Relevant period of time that bounds the data controlled by this rule.
  /// This has a different sense to the Consent.period - that is when the consent agreement holds. This is the time period of the data that is controlled by the agreement.
  final Period? dataPeriod;

  /// Timeframe for this rule
  /// The timeframe in this rule is valid.
  final Period? period;

  /// Nested Exception Rules
  /// Rules which provide exceptions to the base rule or subrules.
  final List<ConsentProvision>? provision;

  /// Context of activities covered by this rule
  /// The context of the activities a user is taking - why the user is accessing the data - that are controlled by this rule.
  /// When the purpose of use tag is on the data, access request purpose of use shall not conflict.
  final List<Coding>? purpose;

  /// Security Labels that define affected resources
  /// A security label, comprised of 0..* security label fields (Privacy tags), which define which resources are controlled by this exception.
  /// If the consent specifies a security label of "R" then it applies to all resources that are labeled "R" or lower. E.g. for Confidentiality, it's a high water mark. For other kinds of security labels, subsumption logic applies. When the purpose of use tag is on the data, access request purpose of use shall not conflict.
  final List<Coding>? securityLabel;

  /// deny | permit
  /// Action  to take - permit or deny - when the rule conditions are met.  Not permitted in root rule, required in all nested rules.
  final String? type; // Possible values: 'deny', 'permit'
  ConsentProvision({
    this.action,
    this.actor,
    this.fhirClass,
    this.code,
    this.data,
    this.dataPeriod,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.period,
    this.provision,
    this.purpose,
    this.securityLabel,
    this.type,
  });

  @override
  factory ConsentProvision.fromJson(Map<String, dynamic> json) {
    return ConsentProvision(
      action: (json['action'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      actor: (json['actor'] as List<dynamic>?)
          ?.map((e) => ConsentProvisionActor.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirClass: (json['class'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              ConsentProvisionData.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dataPeriod: json['dataPeriod'] != null
          ? Period.fromJson((json['dataPeriod'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      provision: (json['provision'] as List<dynamic>?)
          ?.map((e) =>
              ConsentProvision.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      purpose: (json['purpose'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'action': action?.map((e) => e.toJson()).toList(),
        'actor': actor?.map((e) => e.toJson()).toList(),
        'class': fhirClass?.map((e) => e.toJson()).toList(),
        'code': code?.map((e) => e.toJson()).toList(),
        'data': data?.map((e) => e.toJson()).toList(),
        'dataPeriod': dataPeriod?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'provision': provision?.map((e) => e.toJson()).toList(),
        'purpose': purpose?.map((e) => e.toJson()).toList(),
        'securityLabel': securityLabel?.map((e) => e.toJson()).toList(),
        'type': type,
      };

  @override
  ConsentProvision copyWith({
    List<CodeableConcept>? action,
    List<ConsentProvisionActor>? actor,
    List<Coding>? fhirClass,
    List<CodeableConcept>? code,
    List<ConsentProvisionData>? data,
    Period? dataPeriod,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
    List<ConsentProvision>? provision,
    List<Coding>? purpose,
    List<Coding>? securityLabel,
    String? type,
  }) {
    return ConsentProvision(
      action: action ?? this.action,
      actor: actor ?? this.actor,
      fhirClass: fhirClass ?? this.fhirClass,
      code: code ?? this.code,
      data: data ?? this.data,
      dataPeriod: dataPeriod ?? this.dataPeriod,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      provision: provision ?? this.provision,
      purpose: purpose ?? this.purpose,
      securityLabel: securityLabel ?? this.securityLabel,
      type: type ?? this.type,
    );
  }
}
