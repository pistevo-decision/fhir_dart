part of '../fhir_dart.dart';

/// If both Group.characteristic and Group.member are present, then the members are the individuals who were found who met the characteristic.  It's possible that there might be other candidate members who meet the characteristic and aren't (yet) in the list.  All members SHALL have the listed characteristics.
/// Represents a defined collection of entities that may be discussed or acted upon collectively but which are not expected to act collectively, and are not formally or legally recognized; i.e. a collection of entities that isn't an Organization.
class Group extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Group';

  /// Whether this group's record is in active use
  /// Indicates whether the record for the group is available for use or is merely being retained for historical purposes.
  final bool? active;

  /// Descriptive or actual
  /// If true, indicates that the resource refers to a specific group of real individuals.  If false, the group defines a set of intended individuals.
  final bool actual;

  /// Include / Exclude group members by Trait
  /// Identifies traits whose presence r absence is shared by members of the group.
  /// All the identified characteristics must be true for an entity to a member of the group.
  final List<GroupCharacteristic>? characteristic;

  /// Kind of Group members
  /// Provides a specific type of resource the group includes; e.g. "cow", "syringe", etc.
  /// This would generally be omitted for Person resources.
  final CodeableConcept? code;

  /// Unique id
  /// A unique business identifier for this group.
  final List<Identifier>? identifier;

  /// Entity that is the custodian of the Group's definition
  /// Entity responsible for defining and maintaining Group characteristics and/or registered members.
  /// This does not strictly align with ownership of a herd or flock, but may suffice to represent that relationship in simple cases. More complex cases will require an extension.
  final Reference? managingEntity;

  /// Who or what is in group
  /// Identifies the resource instances that are members of the group.
  final List<GroupMember>? member;

  /// Label for Group
  /// A label assigned to the group for human identification and communication.
  final String? name;

  /// Number of members
  /// A count of the number of resource instances that are part of the group.
  /// Note that the quantity may be less than the number of members if some of the members are not active.
  final int? quantity;

  /// Identifies the broad classification of the kind of resources the group includes.
  /// Group members SHALL be of the appropriate resource type (Patient for person or animal; or Practitioner, Device, Medication or Substance for the other types.).
  final String
      type; // Possible values: 'person', 'animal', 'practitioner', 'device', 'medication', 'substance'
  Group({
    this.active,
    required this.actual,
    this.characteristic,
    this.code,
    super.contained,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.managingEntity,
    this.member,
    super.meta,
    super.modifierExtension,
    this.name,
    this.quantity,
    super.text,
    required this.type,
  });

  @override
  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      active: json['active'] as bool?,
      actual: json['actual'] as bool,
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map((e) =>
              GroupCharacteristic.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      managingEntity: json['managingEntity'] != null
          ? Reference.fromJson(
              (json['managingEntity'] as Map).cast<String, dynamic>())
          : null,
      member: (json['member'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      quantity: json['quantity'] as int?,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'active': active,
        'actual': actual,
        'characteristic': characteristic?.map((e) => e.toJson()).toList(),
        'code': code?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'managingEntity': managingEntity?.toJson(),
        'member': member?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'quantity': quantity,
        'text': text?.toJson(),
        'type': type,
      };

  @override
  Group copyWith({
    bool? active,
    bool? actual,
    List<GroupCharacteristic>? characteristic,
    CodeableConcept? code,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Reference? managingEntity,
    List<GroupMember>? member,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    int? quantity,
    Narrative? text,
    String? type,
  }) {
    return Group(
      active: active ?? this.active,
      actual: actual ?? this.actual,
      characteristic: characteristic ?? this.characteristic,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      managingEntity: managingEntity ?? this.managingEntity,
      member: member ?? this.member,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
