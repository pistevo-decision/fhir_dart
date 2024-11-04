part of '../fhir_dart.dart';

 /// The channel on which to report matches to the criteria
 /// Details where to send notifications when resources are received that meet the criteria.
class SubscriptionChannel extends BackboneElement implements FhirResource {
   /// Where the channel points to
   /// The url that describes the actual end-point to send messages to.
   /// For rest-hook, and websocket, the end-point must be an http: or https: URL; for email, a mailto: url, for sms, a tel: url, and for message the endpoint can be in any form of url the server understands (usually, http: or mllp:). The URI is allowed to be relative; in which case, it is relative to the server end-point (since there may be more than one, clients should avoid using relative URIs).
  final String? endpoint;
   /// Usage depends on the channel type
   /// Additional headers / information to send as part of the notification.
   /// Exactly what these mean depend on the channel type. They can convey additional information to the recipient and/or meet security requirements; for example, support of multiple headers in the outgoing notifications for rest-hook type subscriptions.
  final List<String>? header;
   /// MIME type to send, or omit for no payload
   /// The mime type to send the payload in - either application/fhir+xml, or application/fhir+json. If the payload is not present, then there is no payload in the notification, just a notification. The mime type "text/plain" may also be used for Email and SMS subscriptions.
   /// Sending the payload has obvious security implications. The server is responsible for ensuring that the content is appropriately secured.
  final String? payload;
   /// The type of channel to send notifications on.
  final String type; // Possible values: 'rest-hook', 'websocket', 'email', 'sms', 'message'
  SubscriptionChannel({
    this.endpoint,
    super.fhirExtension,
    this.header,
    super.id,
    super.modifierExtension,
    this.payload,
    required this.type,
  });
  
  @override
  factory SubscriptionChannel.fromJson(Map<String, dynamic> json) {
    return SubscriptionChannel(
      endpoint: json['endpoint'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      header: (json['header'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      payload: json['payload'] as String?,
      type: json['type'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'endpoint': endpoint,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'header': header?.map((e) => e).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'payload': payload,
      'type': type,
    };
  
  @override
  SubscriptionChannel copyWith({
    String? endpoint,
    List<Extension>? fhirExtension,
    List<String>? header,
    String? id,
    List<Extension>? modifierExtension,
    String? payload,
    String? type,
  }) {
    return SubscriptionChannel(
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      header: header ?? this.header,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      payload: payload ?? this.payload,
      type: type ?? this.type,
    );
  }
}
