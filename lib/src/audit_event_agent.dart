part of '../fhir_dart.dart';

/// Actor involved in the event
/// An actor taking an active role in the event or activity that is logged.
/// Several agents may be associated (i.e. have some responsibility for an activity) with an event or activity.
/// For example, an activity may be initiated by one user for other users or involve more than one user. However, only one user may be the initiator/requestor for the activity.
class AuditEventAgent extends BackboneElement implements FhirResource {
  /// Alternative User identity
  /// Alternative agent Identifier. For a human, this should be a user identifier text string from authentication system. This identifier would be one known to a common authentication system (e.g. single sign-on), if available.
  final String? altId;

  /// Where the event occurred.
  final Reference? location;

  /// Type of media involved. Used when the event is about exporting/importing onto media.
  final Coding? media;

  /// Human friendly name for the agent
  /// Human-meaningful name for the agent.
  final String? name;

  /// Logical network location for application activity, if the activity has a network location.
  final AuditEventAgentNetwork? network;

  /// Policy that authorized event
  /// The policy or plan that authorized the activity being recorded. Typically, a single activity may have multiple applicable policies, such as patient consent, guarantor funding, etc. The policy would also indicate the security token used.
  /// For example: Where an OAuth token authorizes, the unique identifier from the OAuth token is placed into the policy element Where a policy engine (e.g. XACML) holds policy logic, the unique policy identifier is placed into the policy element.
  final List<String>? policy;

  /// Reason given for this user
  /// The reason (purpose of use), specific to this agent, that was used during the event being recorded.
  /// Use AuditEvent.agent.purposeOfUse when you know that is specific to the agent, otherwise use AuditEvent.purposeOfEvent. For example, during a machine-to-machine transfer it might not be obvious to the audit system who caused the event, but it does know why.
  final List<CodeableConcept>? purposeOfUse;

  /// Whether user is initiator
  /// Indicator that the user is or is not the requestor, or initiator, for the event being audited.
  /// There can only be one initiator. If the initiator is not clear, then do not choose any one agent as the initiator.
  final bool requestor;

  /// Agent role in the event
  /// The security role that the user was acting under, that come from local codes defined by the access control security system (e.g. RBAC, ABAC) used in the local context.
  /// Should be roles relevant to the event. Should  not be an exhaustive list of roles.
  final List<CodeableConcept>? role;

  /// How agent participated
  /// Specification of the participation type the user plays when performing the event.
  final CodeableConcept? type;

  /// Identifier of who
  /// Reference to who this agent is that was involved in the event.
  /// Where a User ID is available it will go into who.identifier.
  final Reference? who;
  AuditEventAgent({
    this.altId,
    super.fhirExtension,
    super.id,
    this.location,
    this.media,
    super.modifierExtension,
    this.name,
    this.network,
    this.policy,
    this.purposeOfUse,
    required this.requestor,
    this.role,
    this.type,
    this.who,
  });

  @override
  factory AuditEventAgent.fromJson(Map<String, dynamic> json) {
    return AuditEventAgent(
      altId: json['altId'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      location: json['location'] != null
          ? Reference.fromJson(
              (json['location'] as Map).cast<String, dynamic>())
          : null,
      media: json['media'] != null
          ? Coding.fromJson((json['media'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      network: json['network'] != null
          ? AuditEventAgentNetwork.fromJson(
              (json['network'] as Map).cast<String, dynamic>())
          : null,
      policy:
          (json['policy'] as List<dynamic>?)?.map((e) => e as String).toList(),
      purposeOfUse: (json['purposeOfUse'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      requestor: json['requestor'] as bool,
      role: (json['role'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      who: json['who'] != null
          ? Reference.fromJson((json['who'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'altId': altId,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'location': location?.toJson(),
        'media': media?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'network': network?.toJson(),
        'policy': policy?.map((e) => e).toList(),
        'purposeOfUse': purposeOfUse?.map((e) => e.toJson()).toList(),
        'requestor': requestor,
        'role': role?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
        'who': who?.toJson(),
      };

  @override
  AuditEventAgent copyWith({
    String? altId,
    List<Extension>? fhirExtension,
    String? id,
    Reference? location,
    Coding? media,
    List<Extension>? modifierExtension,
    String? name,
    AuditEventAgentNetwork? network,
    List<String>? policy,
    List<CodeableConcept>? purposeOfUse,
    bool? requestor,
    List<CodeableConcept>? role,
    CodeableConcept? type,
    Reference? who,
  }) {
    return AuditEventAgent(
      altId: altId ?? this.altId,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      location: location ?? this.location,
      media: media ?? this.media,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      network: network ?? this.network,
      policy: policy ?? this.policy,
      purposeOfUse: purposeOfUse ?? this.purposeOfUse,
      requestor: requestor ?? this.requestor,
      role: role ?? this.role,
      type: type ?? this.type,
      who: who ?? this.who,
    );
  }
}
