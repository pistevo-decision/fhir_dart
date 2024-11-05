part of '../fhir_dart.dart';

/// Characteristics e.g. a products onset of action.
class MedicinalProductPharmaceuticalCharacteristics extends BackboneElement
    implements FhirResource {
  /// A coded characteristic.
  final CodeableConcept code;

  /// The status of characteristic e.g. assigned or pending.
  final CodeableConcept? status;
  MedicinalProductPharmaceuticalCharacteristics({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.status,
  });

  @override
  factory MedicinalProductPharmaceuticalCharacteristics.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductPharmaceuticalCharacteristics(
      code: CodeableConcept.fromJson(
          (json['code'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              (json['status'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'status': status?.toJson(),
      };

  @override
  MedicinalProductPharmaceuticalCharacteristics copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? status,
  }) {
    return MedicinalProductPharmaceuticalCharacteristics(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
    );
  }
}
