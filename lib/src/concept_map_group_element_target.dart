part of '../fhir_dart.dart';

 /// Concept in target system for element
 /// A concept from the target value set that this concept maps to.
 /// Ideally there would only be one map, with equal or equivalent mapping. But multiple maps are allowed for several narrower options, or to assert that other concepts are unmatched.
class ConceptMapGroupElementTarget extends BackboneElement implements FhirResource {
   /// Code that identifies the target element
   /// Identity (code or path) or the element/item that the map refers to.
  final String? code;
   /// Description of status/issues in mapping
   /// A description of status/issues in mapping that conveys additional information not represented in  the structured data.
  final String? comment;
   /// Other elements required for this mapping (from context)
   /// A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified element can be resolved, and it has the specified value.
  final List<ConceptMapGroupElementTargetDependsOn>? dependsOn;
   /// Display for the code
   /// The display for the code. The display is only provided to help editors when editing the concept map.
   /// The display is ignored when processing the map.
  final String? display;
   /// The equivalence between the source and target concepts (counting for the dependencies and products). The equivalence is read from target to source (e.g. the target is 'wider' than the source).
   /// This element is labeled as a modifier because it may indicate that a target does not apply.
  final String equivalence; // Possible values: 'relatedto', 'equivalent', 'equal', 'wider', 'subsumes', 'narrower', 'specializes', 'inexact', 'unmatched', 'disjoint'
   /// Other concepts that this mapping also produces
   /// A set of additional outcomes from this mapping to other elements. To properly execute this mapping, the specified element must be mapped to some data element or source that is in context. The mapping may still be useful without a place for the additional data elements, but the equivalence cannot be relied on.
  final List<ConceptMapGroupElementTargetDependsOn>? product;
  ConceptMapGroupElementTarget({
    this.code,
    this.comment,
    this.dependsOn,
    this.display,
    required this.equivalence,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.product,
  });
  
  @override
  factory ConceptMapGroupElementTarget.fromJson(Map<String, dynamic> json) {
    return ConceptMapGroupElementTarget(
      code: json['code'] as String?,
      comment: json['comment'] as String?,
      dependsOn: (json['dependsOn'] as List<dynamic>?)?.map((e) => ConceptMapGroupElementTargetDependsOn.fromJson(e as Map<String, dynamic>)).toList(),
      display: json['display'] as String?,
      equivalence: json['equivalence'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      product: (json['product'] as List<dynamic>?)?.map((e) => ConceptMapGroupElementTargetDependsOn.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code,
      'comment': comment,
      'dependsOn': dependsOn?.map((e) => e.toJson()).toList(),
      'display': display,
      'equivalence': equivalence,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'product': product?.map((e) => e.toJson()).toList(),
    };
  
  @override
  ConceptMapGroupElementTarget copyWith({
    String? code,
    String? comment,
    List<ConceptMapGroupElementTargetDependsOn>? dependsOn,
    String? display,
    String? equivalence,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<ConceptMapGroupElementTargetDependsOn>? product,
  }) {
    return ConceptMapGroupElementTarget(
      code: code ?? this.code,
      comment: comment ?? this.comment,
      dependsOn: dependsOn ?? this.dependsOn,
      display: display ?? this.display,
      equivalence: equivalence ?? this.equivalence,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      product: product ?? this.product,
    );
  }
}
