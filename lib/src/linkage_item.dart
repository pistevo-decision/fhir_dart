part of '../fhir_dart.dart';

 /// Item to be linked
 /// Identifies which record considered as the reference to the same real-world occurrence as well as how the items should be evaluated within the collection of linked items.
class LinkageItem extends BackboneElement implements FhirResource {
   /// Resource being linked
   /// The resource instance being linked as part of the group.
  final Reference resource;
   /// Distinguishes which item is "source of truth" (if any) and which items are no longer considered to be current representations.
  final String type; // Possible values: 'source', 'alternate', 'historical'
  LinkageItem({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.resource,
    required this.type,
  });
  
  @override
  factory LinkageItem.fromJson(Map<String, dynamic> json) {
    return LinkageItem(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      resource: Reference.fromJson(json['resource'] as Map<String, dynamic>),
      type: json['type'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'resource': resource.toJson(),
      'type': type,
    };
  
  @override
  LinkageItem copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? resource,
    String? type,
  }) {
    return LinkageItem(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      resource: resource ?? this.resource,
      type: type ?? this.type,
    );
  }
}
