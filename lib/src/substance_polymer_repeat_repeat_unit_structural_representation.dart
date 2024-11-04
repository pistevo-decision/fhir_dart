part of '../fhir_dart.dart';

/// Todo.
class SubstancePolymerRepeatRepeatUnitStructuralRepresentation
    extends BackboneElement implements FhirResource {
  /// Todo.
  final Attachment? attachment;

  /// Todo.
  final String? representation;

  /// Todo.
  final CodeableConcept? type;
  SubstancePolymerRepeatRepeatUnitStructuralRepresentation({
    this.attachment,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.representation,
    this.type,
  });

  @override
  factory SubstancePolymerRepeatRepeatUnitStructuralRepresentation.fromJson(
      Map<String, dynamic> json) {
    return SubstancePolymerRepeatRepeatUnitStructuralRepresentation(
      attachment: json['attachment'] != null
          ? Attachment.fromJson(json['attachment'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      representation: json['representation'] as String?,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'attachment': attachment?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'representation': representation,
        'type': type?.toJson(),
      };

  @override
  SubstancePolymerRepeatRepeatUnitStructuralRepresentation copyWith({
    Attachment? attachment,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? representation,
    CodeableConcept? type,
  }) {
    return SubstancePolymerRepeatRepeatUnitStructuralRepresentation(
      attachment: attachment ?? this.attachment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      representation: representation ?? this.representation,
      type: type ?? this.type,
    );
  }
}
