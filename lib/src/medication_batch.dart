part of '../fhir_dart.dart';

/// Details about packaged medications
/// Information that only applies to packages (not products).
class MedicationBatch extends BackboneElement implements FhirResource {
  /// When batch will expire
  /// When this specific batch of product will expire.
  final String? expirationDate;

  /// Identifier assigned to batch
  /// The assigned lot number of a batch of the specified product.
  final String? lotNumber;
  MedicationBatch({
    this.expirationDate,
    super.fhirExtension,
    super.id,
    this.lotNumber,
    super.modifierExtension,
  });

  @override
  factory MedicationBatch.fromJson(Map<String, dynamic> json) {
    return MedicationBatch(
      expirationDate: json['expirationDate'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      lotNumber: json['lotNumber'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'expirationDate': expirationDate,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'lotNumber': lotNumber,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  MedicationBatch copyWith({
    String? expirationDate,
    List<Extension>? fhirExtension,
    String? id,
    String? lotNumber,
    List<Extension>? modifierExtension,
  }) {
    return MedicationBatch(
      expirationDate: expirationDate ?? this.expirationDate,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      lotNumber: lotNumber ?? this.lotNumber,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
