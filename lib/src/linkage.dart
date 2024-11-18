part of '../fhir_dart.dart';

/// Identifies two or more records (resource instances) that refer to the same real-world "occurrence".
class Linkage extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Linkage';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Whether this linkage assertion is active or not
  /// Indicates whether the asserted set of linkages are considered to be "in effect".
  /// If false, any asserted linkages should not be considered current/relevant/applicable.
  final bool? active;

  /// Who is responsible for linkages
  /// Identifies the user or organization responsible for asserting the linkages as well as the user or organization who establishes the context in which the nature of each linkage is evaluated.
  final Reference? author;

  /// Item to be linked
  /// Identifies which record considered as the reference to the same real-world occurrence as well as how the items should be evaluated within the collection of linked items.
  final List<LinkageItem> item;
  Linkage({
    this.active,
    this.author,
    super.contained,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    required this.item,
    super.language,
    super.meta,
    super.modifierExtension,
    super.text,
  });

  @override
  factory Linkage.fromJson(Map<String, dynamic> json) {
    return Linkage(
      active: json['active'] as bool?,
      author: json['author'] != null
          ? Reference.fromJson((json['author'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      item: (json['item'] as List<dynamic>)
          .map((e) => LinkageItem.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'active': active,
        'author': author?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'item': item.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  Linkage copyWith({
    bool? active,
    Reference? author,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    List<LinkageItem>? item,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Narrative? text,
  }) {
    return Linkage(
      active: active ?? this.active,
      author: author ?? this.author,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      item: item ?? this.item,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      text: text ?? this.text,
    );
  }
}
