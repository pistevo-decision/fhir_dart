part of '../fhir_dart.dart';

/// Link to a resource that concerns the same actual person.
class PersonLink extends BackboneElement implements FhirResource {
  /// Level of assurance that this link is associated with the target resource.
  final String?
      assurance; // Possible values: 'level1', 'level2', 'level3', 'level4'
  /// The resource to which this actual person is associated.
  final Reference target;
  PersonLink({
    this.assurance,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.target,
  });

  @override
  factory PersonLink.fromJson(Map<String, dynamic> json) {
    return PersonLink(
      assurance: json['assurance'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      target:
          Reference.fromJson((json['target'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'assurance': assurance,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'target': target.toJson(),
      };

  @override
  PersonLink copyWith({
    String? assurance,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? target,
  }) {
    return PersonLink(
      assurance: assurance ?? this.assurance,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
    );
  }
}
