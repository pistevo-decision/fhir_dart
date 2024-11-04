part of '../fhir_dart.dart';

/// Note concerning processing
/// A note that describes or explains the processing in a human readable form.
class PaymentReconciliationProcessNote extends BackboneElement
    implements FhirResource {
  /// Note explanatory text
  /// The explanation or description associated with the processing.
  final String? text;

  /// The business purpose of the note text.
  final String? type; // Possible values: 'display', 'print', 'printoper'
  PaymentReconciliationProcessNote({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.text,
    this.type,
  });

  @override
  factory PaymentReconciliationProcessNote.fromJson(Map<String, dynamic> json) {
    return PaymentReconciliationProcessNote(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      type: json['type'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'text': text,
        'type': type,
      };

  @override
  PaymentReconciliationProcessNote copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? text,
    String? type,
  }) {
    return PaymentReconciliationProcessNote(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
