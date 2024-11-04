part of '../fhir_dart.dart';

/// Structural variant inner.
class MolecularSequenceStructureVariantInner extends BackboneElement
    implements FhirResource {
  /// Structural variant inner end. If the coordinate system is 0-based then end is exclusive and does not include the last position. If the coordinate system is 1-base, then end is inclusive and includes the last position.
  final int? end;

  /// Structural variant inner start. If the coordinate system is either 0-based or 1-based, then start position is inclusive.
  final int? start;
  MolecularSequenceStructureVariantInner({
    this.end,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.start,
  });

  @override
  factory MolecularSequenceStructureVariantInner.fromJson(
      Map<String, dynamic> json) {
    return MolecularSequenceStructureVariantInner(
      end: json['end'] as int?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      start: json['start'] as int?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'end': end,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'start': start,
      };

  @override
  MolecularSequenceStructureVariantInner copyWith({
    int? end,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    int? start,
  }) {
    return MolecularSequenceStructureVariantInner(
      end: end ?? this.end,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
    );
  }
}
