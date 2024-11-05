part of '../fhir_dart.dart';

/// Todo.
class SubstancePolymerMonomerSetStartingMaterial extends BackboneElement
    implements FhirResource {
  /// Todo.
  final SubstanceAmount? amount;

  /// Todo.
  final bool? isDefining;

  /// Todo.
  final CodeableConcept? material;

  /// Todo.
  final CodeableConcept? type;
  SubstancePolymerMonomerSetStartingMaterial({
    this.amount,
    super.fhirExtension,
    super.id,
    this.isDefining,
    this.material,
    super.modifierExtension,
    this.type,
  });

  @override
  factory SubstancePolymerMonomerSetStartingMaterial.fromJson(
      Map<String, dynamic> json) {
    return SubstancePolymerMonomerSetStartingMaterial(
      amount: json['amount'] != null
          ? SubstanceAmount.fromJson(
              (json['amount'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      isDefining: json['isDefining'] as bool?,
      material: json['material'] != null
          ? CodeableConcept.fromJson(
              (json['material'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amount': amount?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'isDefining': isDefining,
        'material': material?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
      };

  @override
  SubstancePolymerMonomerSetStartingMaterial copyWith({
    SubstanceAmount? amount,
    List<Extension>? fhirExtension,
    String? id,
    bool? isDefining,
    CodeableConcept? material,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return SubstancePolymerMonomerSetStartingMaterial(
      amount: amount ?? this.amount,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      isDefining: isDefining ?? this.isDefining,
      material: material ?? this.material,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
