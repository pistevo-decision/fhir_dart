part of '../fhir_dart.dart';

/// Data controlled by this rule
/// The resources controlled by this rule if specific resources are referenced.
class ConsentProvisionData extends BackboneElement implements FhirResource {
  /// How the resource reference is interpreted when testing consent restrictions.
  final String
      meaning; // Possible values: 'instance', 'related', 'dependents', 'authoredby'
  /// The actual data reference
  /// A reference to a specific resource that defines which resources are covered by this consent.
  final Reference reference;
  ConsentProvisionData({
    super.fhirExtension,
    super.id,
    required this.meaning,
    super.modifierExtension,
    required this.reference,
  });

  @override
  factory ConsentProvisionData.fromJson(Map<String, dynamic> json) {
    return ConsentProvisionData(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      meaning: json['meaning'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reference: Reference.fromJson(
          (json['reference'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'meaning': meaning,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'reference': reference.toJson(),
      };

  @override
  ConsentProvisionData copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? meaning,
    List<Extension>? modifierExtension,
    Reference? reference,
  }) {
    return ConsentProvisionData(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      meaning: meaning ?? this.meaning,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
    );
  }
}
