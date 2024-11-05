part of '../fhir_dart.dart';

/// Attests to accuracy of composition
/// A participant who has attested to the accuracy of the composition/document.
/// Only list each attester once.
class CompositionAttester extends BackboneElement implements FhirResource {
  /// The type of attestation the authenticator offers.
  final String
      mode; // Possible values: 'personal', 'professional', 'legal', 'official'
  /// Who attested the composition in the specified way.
  final Reference? party;

  /// When the composition was attested by the party.
  final String? time;
  CompositionAttester({
    super.fhirExtension,
    super.id,
    required this.mode,
    super.modifierExtension,
    this.party,
    this.time,
  });

  @override
  factory CompositionAttester.fromJson(Map<String, dynamic> json) {
    return CompositionAttester(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      mode: json['mode'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      party: json['party'] != null
          ? Reference.fromJson((json['party'] as Map).cast<String, dynamic>())
          : null,
      time: json['time'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'mode': mode,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'party': party?.toJson(),
        'time': time,
      };

  @override
  CompositionAttester copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? mode,
    List<Extension>? modifierExtension,
    Reference? party,
    String? time,
  }) {
    return CompositionAttester(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      party: party ?? this.party,
      time: time ?? this.time,
    );
  }
}
