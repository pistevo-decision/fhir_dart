part of '../fhir_dart.dart';

/// Batch numbering.
class MedicinalProductPackagedBatchIdentifier extends BackboneElement
    implements FhirResource {
  /// A number appearing on the immediate packaging (and not the outer packaging).
  final Identifier? immediatePackaging;

  /// A number appearing on the outer packaging of a specific batch.
  final Identifier outerPackaging;
  MedicinalProductPackagedBatchIdentifier({
    super.fhirExtension,
    super.id,
    this.immediatePackaging,
    super.modifierExtension,
    required this.outerPackaging,
  });

  @override
  factory MedicinalProductPackagedBatchIdentifier.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductPackagedBatchIdentifier(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      immediatePackaging: json['immediatePackaging'] != null
          ? Identifier.fromJson(
              json['immediatePackaging'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      outerPackaging:
          Identifier.fromJson(json['outerPackaging'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'immediatePackaging': immediatePackaging?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'outerPackaging': outerPackaging.toJson(),
      };

  @override
  MedicinalProductPackagedBatchIdentifier copyWith({
    List<Extension>? fhirExtension,
    String? id,
    Identifier? immediatePackaging,
    List<Extension>? modifierExtension,
    Identifier? outerPackaging,
  }) {
    return MedicinalProductPackagedBatchIdentifier(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      immediatePackaging: immediatePackaging ?? this.immediatePackaging,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outerPackaging: outerPackaging ?? this.outerPackaging,
    );
  }
}
