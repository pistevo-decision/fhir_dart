part of '../fhir_dart.dart';

 /// Who or what is in group
 /// Identifies the resource instances that are members of the group.
class GroupMember extends BackboneElement implements FhirResource {
   /// Reference to the group member
   /// A reference to the entity that is a member of the group. Must be consistent with Group.type. If the entity is another group, then the type must be the same.
  final Reference entity;
   /// If member is no longer in group
   /// A flag to indicate that the member is no longer in the group, but previously may have been a member.
  final bool? inactive;
   /// Period member belonged to the group
   /// The period that the member was in the group, if known.
  final Period? period;
  GroupMember({
    required this.entity,
    super.fhirExtension,
    super.id,
    this.inactive,
    super.modifierExtension,
    this.period,
  });
  
  @override
  factory GroupMember.fromJson(Map<String, dynamic> json) {
    return GroupMember(
      entity: Reference.fromJson(json['entity'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      inactive: json['inactive'] as bool?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'entity': entity.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'inactive': inactive,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'period': period?.toJson(),
    };
  
  @override
  GroupMember copyWith({
    Reference? entity,
    List<Extension>? fhirExtension,
    String? id,
    bool? inactive,
    List<Extension>? modifierExtension,
    Period? period,
  }) {
    return GroupMember(
      entity: entity ?? this.entity,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      inactive: inactive ?? this.inactive,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
    );
  }
}
