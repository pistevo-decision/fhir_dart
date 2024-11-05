part of '../fhir_dart.dart';

/// Protection for the Term
/// Security labels that protect the handling of information about the term and its elements, which may be specifically identified..
class ContractTermSecurityLabel extends BackboneElement
    implements FhirResource {
  /// Applicable Policy
  /// Security label privacy tag that species the applicable privacy and security policies governing this term and/or term elements.
  final List<Coding>? category;

  /// Confidentiality Protection
  /// Security label privacy tag that species the level of confidentiality protection required for this term and/or term elements.
  final Coding classification;

  /// Handling Instructions
  /// Security label privacy tag that species the manner in which term and/or term elements are to be protected.
  final List<Coding>? control;

  /// Link to Security Labels
  /// Number used to link this term or term element to the applicable Security Label.
  final List<int>? number;
  ContractTermSecurityLabel({
    this.category,
    required this.classification,
    this.control,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.number,
  });

  @override
  factory ContractTermSecurityLabel.fromJson(Map<String, dynamic> json) {
    return ContractTermSecurityLabel(
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      classification: Coding.fromJson(
          (json['classification'] as Map).cast<String, dynamic>()),
      control: (json['control'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      number: (json['number'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'category': category?.map((e) => e.toJson()).toList(),
        'classification': classification.toJson(),
        'control': control?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'number': number?.map((e) => e).toList(),
      };

  @override
  ContractTermSecurityLabel copyWith({
    List<Coding>? category,
    Coding? classification,
    List<Coding>? control,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<int>? number,
  }) {
    return ContractTermSecurityLabel(
      category: category ?? this.category,
      classification: classification ?? this.classification,
      control: control ?? this.control,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
    );
  }
}
