part of '../fhir_dart.dart';

/// Participant in creation of this Invoice
/// Indicates who or what performed or participated in the charged service.
class InvoiceParticipant extends BackboneElement implements FhirResource {
  /// Individual who was involved
  /// The device, practitioner, etc. who performed or participated in the service.
  final Reference actor;

  /// Type of involvement in creation of this Invoice
  /// Describes the type of involvement (e.g. transcriptionist, creator etc.). If the invoice has been created automatically, the Participant may be a billing engine or another kind of device.
  final CodeableConcept? role;
  InvoiceParticipant({
    required this.actor,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.role,
  });

  @override
  factory InvoiceParticipant.fromJson(Map<String, dynamic> json) {
    return InvoiceParticipant(
      actor: Reference.fromJson(json['actor'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: json['role'] != null
          ? CodeableConcept.fromJson(json['role'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'actor': actor.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'role': role?.toJson(),
      };

  @override
  InvoiceParticipant copyWith({
    Reference? actor,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? role,
  }) {
    return InvoiceParticipant(
      actor: actor ?? this.actor,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
    );
  }
}
