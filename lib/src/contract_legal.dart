part of '../fhir_dart.dart';

/// Contract Legal Language
/// List of Legal expressions or representations of this Contract.
class ContractLegal extends BackboneElement implements FhirResource {
  /// Contract Legal Text
  /// Contract legal text in human renderable form.
  final Attachment? contentAttachment;

  /// Contract Legal Text
  /// Contract legal text in human renderable form.
  final Reference? contentReference;
  ContractLegal({
    this.contentAttachment,
    this.contentReference,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory ContractLegal.fromJson(Map<String, dynamic> json) {
    return ContractLegal(
      contentAttachment: json['contentAttachment'] != null
          ? Attachment.fromJson(
              (json['contentAttachment'] as Map).cast<String, dynamic>())
          : null,
      contentReference: json['contentReference'] != null
          ? Reference.fromJson(
              (json['contentReference'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contentAttachment': contentAttachment?.toJson(),
        'contentReference': contentReference?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ContractLegal copyWith({
    Attachment? contentAttachment,
    Reference? contentReference,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return ContractLegal(
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
