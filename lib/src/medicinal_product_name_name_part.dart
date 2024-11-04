part of '../fhir_dart.dart';

/// Coding words or phrases of the name.
class MedicinalProductNameNamePart extends BackboneElement
    implements FhirResource {
  /// A fragment of a product name.
  final String fhirPart;

  /// Idenifying type for this part of the name (e.g. strength part).
  final Coding type;
  MedicinalProductNameNamePart({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.fhirPart,
    required this.type,
  });

  @override
  factory MedicinalProductNameNamePart.fromJson(Map<String, dynamic> json) {
    return MedicinalProductNameNamePart(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirPart: json['part'] as String,
      type: Coding.fromJson(json['type'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'part': fhirPart,
        'type': type.toJson(),
      };

  @override
  MedicinalProductNameNamePart copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? fhirPart,
    Coding? type,
  }) {
    return MedicinalProductNameNamePart(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      fhirPart: fhirPart ?? this.fhirPart,
      type: type ?? this.type,
    );
  }
}
