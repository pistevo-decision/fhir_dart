part of '../fhir_dart.dart';

/// This element is sliced - slices follow
/// Indicates that the element is sliced into a set of alternative definitions (i.e. in a structure definition, there are multiple different constraints on a single element in the base resource). Slicing can be used in any resource that has cardinality ..* on the base resource, or any resource with a choice of types. The set of slices is any elements that come after this in the element sequence that have the same path, until a shorter path occurs (the shorter path terminates the set).
/// The first element in the sequence, the one that carries the slicing, is the definition that applies to all the slices. This is based on the unconstrained element, but can apply any constraints as appropriate. This may include the common constraints on the children of the element.
class ElementDefinitionSlicing extends Element implements FhirResource {
  /// Text description of how slicing works (or not)
  /// A human-readable text description of how the slicing works. If there is no discriminator, this is required to be present to provide whatever information is possible about how the slices can be differentiated.
  /// If it's really not possible to differentiate them, the design should be re-evaluated to make the content usable.
  final String? description;

  /// Element values that are used to distinguish the slices
  /// Designates which child elements are used to discriminate between the slices when processing an instance. If one or more discriminators are provided, the value of the child elements in the instance data SHALL completely distinguish which slice the element in the resource matches based on the allowed values for those elements in each of the slices.
  /// If there is no discriminator, the content is hard to process, so this should be avoided.
  final List<ElementDefinitionSlicingDiscriminator>? discriminator;

  /// If elements must be in same order as slices
  /// If the matching elements have to occur in the same order as defined in the profile.
  /// Order should only be required when it is a pressing concern for presentation. Profile authors should consider making the order a feature of the rules about the narrative, not the rules about the data - requiring ordered data makes the profile much less re-usable.
  final bool? ordered;

  /// Whether additional slices are allowed or not. When the slices are ordered, profile authors can also say that additional slices are only allowed at the end.
  /// Allowing additional elements makes for a much for flexible template - it's open for use in wider contexts, but also means that the content of the resource is not closed, and applications have to decide how to handle content not described by the profile.
  final String rules; // Possible values: 'closed', 'open', 'openAtEnd'
  ElementDefinitionSlicing({
    this.description,
    this.discriminator,
    super.fhirExtension,
    super.id,
    this.ordered,
    required this.rules,
  });

  @override
  factory ElementDefinitionSlicing.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionSlicing(
      description: json['description'] as String?,
      discriminator: (json['discriminator'] as List<dynamic>?)
          ?.map((e) => ElementDefinitionSlicingDiscriminator.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      ordered: json['ordered'] as bool?,
      rules: json['rules'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'discriminator': discriminator?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'ordered': ordered,
        'rules': rules,
      };

  @override
  ElementDefinitionSlicing copyWith({
    String? description,
    List<ElementDefinitionSlicingDiscriminator>? discriminator,
    List<Extension>? fhirExtension,
    String? id,
    bool? ordered,
    String? rules,
  }) {
    return ElementDefinitionSlicing(
      description: description ?? this.description,
      discriminator: discriminator ?? this.discriminator,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      ordered: ordered ?? this.ordered,
      rules: rules ?? this.rules,
    );
  }
}
