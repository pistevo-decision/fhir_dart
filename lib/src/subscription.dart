part of '../fhir_dart.dart';

 /// The subscription resource is used to define a push-based subscription from a server to another system. Once a subscription is registered with the server, the server checks every resource that is created or updated, and if the resource matches the given criteria, it sends a message on the defined "channel" so that another system can take an appropriate action.
class Subscription extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Subscription';
   /// The channel on which to report matches to the criteria
   /// Details where to send notifications when resources are received that meet the criteria.
  final SubscriptionChannel channel;
   /// Contact details for source (e.g. troubleshooting)
   /// Contact details for a human to contact about the subscription. The primary use of this for system administrator troubleshooting.
  final List<ContactPoint>? contact;
   /// Rule for server push
   /// The rules that the server should use to determine when to generate notifications for this subscription.
   /// The rules are search criteria (without the [base] part). Like Bundle.entry.request.url, it has no leading "/".
  final String criteria;
   /// When to automatically delete the subscription
   /// The time for the server to turn the subscription off.
   /// The server is permitted to deviate from this time but should observe it.
  final String? end;
   /// Latest error note
   /// A record of the last error that occurred when the server processed a notification.
  final String? error;
   /// Description of why this subscription was created
   /// A description of why this subscription is defined.
  final String reason;
   /// The status of the subscription, which marks the server state for managing the subscription.
   /// A client can only submit subscription resources in the requested or off state. Only the server can  move a subscription from requested to active, and then to error. Either the server or the client can turn a subscription off.
   /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String status; // Possible values: 'requested', 'active', 'error', 'off'
  Subscription({
    required this.channel,
    this.contact,
    super.contained,
    required this.criteria,
    this.end,
    this.error,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.reason,
    required this.status,
    super.text,
  });
  
  @override
  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
      channel: SubscriptionChannel.fromJson(json['channel'] as Map<String, dynamic>),
      contact: (json['contact'] as List<dynamic>?)?.map((e) => ContactPoint.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      criteria: json['criteria'] as String,
      end: json['end'] as String?,
      error: json['error'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      reason: json['reason'] as String,
      status: json['status'] as String,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'channel': channel.toJson(),
      'contact': contact?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'criteria': criteria,
      'end': end,
      'error': error,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'reason': reason,
      'status': status,
      'text': text?.toJson(),
    };
  
  @override
  Subscription copyWith({
    SubscriptionChannel? channel,
    List<ContactPoint>? contact,
    List<Resource>? contained,
    String? criteria,
    String? end,
    String? error,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? reason,
    String? status,
    Narrative? text,
  }) {
    return Subscription(
      channel: channel ?? this.channel,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      criteria: criteria ?? this.criteria,
      end: end ?? this.end,
      error: error ?? this.error,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reason: reason ?? this.reason,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
