part of '../fhir_dart.dart';

 /// Data type and Profile for this element
 /// The data type or resource that the value of this element is permitted to be.
 /// The Type of the element can be left blank in a differential constraint, in which case the type is inherited from the resource. Abstract types are not permitted to appear as a type when multiple types are listed.  (I.e. Abstract types cannot be part of a choice).
class ElementDefinitionType extends Element implements FhirResource {
   /// If the type is a reference to another resource, how the resource is or can be aggregated - is it a contained resource, or a reference, and if the context is a bundle, is it included in the bundle.
   /// See [Aggregation Rules](elementdefinition.html#aggregation) for further clarification.
  final List<String>? aggregation; // Possible values: 'contained', 'referenced', 'bundled'
   /// Data type or Resource (reference to definition)
   /// URL of Data type or Resource that is a(or the) type used for this element. References are URLs that are relative to http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only allowed in logical models.
   /// If the element is a reference to another resource, this element contains "Reference", and the targetProfile element defines what resources can be referenced. The targetProfile may be a reference to the general definition of a resource (e.g. http://hl7.org/fhir/StructureDefinition/Patient).
  final String code;
   /// Profiles (StructureDefinition or IG) - one must apply
   /// Identifies a profile structure or implementation Guide that applies to the datatype this element refers to. If any profiles are specified, then the content must conform to at least one of them. The URL can be a local reference - to a contained StructureDefinition, or a reference to another StructureDefinition or Implementation Guide by a canonical URL. When an implementation guide is specified, the type SHALL conform to at least one profile defined in the implementation guide.
   /// It is possible to profile  backbone element (e.g. part of a resource), using the [profile-element](extension-elementdefinition-profile-element.html) extension.
  final List<String>? profile;
   /// Profile (StructureDefinition or IG) on the Reference/canonical target - one must apply
   /// Used when the type is "Reference" or "canonical", and identifies a profile structure or implementation Guide that applies to the target of the reference this element refers to. If any profiles are specified, then the content must conform to at least one of them. The URL can be a local reference - to a contained StructureDefinition, or a reference to another StructureDefinition or Implementation Guide by a canonical URL. When an implementation guide is specified, the target resource SHALL conform to at least one profile defined in the implementation guide.
  final List<String>? targetProfile;
   /// Whether this reference needs to be version specific or version independent, or whether either can be used.
   /// The base specification never makes a rule as to which form is allowed, but implementation guides may do this. See [Aggregation Rules](elementdefinition.html#aggregation) for further clarification.
  final String? versioning; // Possible values: 'either', 'independent', 'specific'
  ElementDefinitionType({
    this.aggregation,
    required this.code,
    super.fhirExtension,
    super.id,
    this.profile,
    this.targetProfile,
    this.versioning,
  });
  
  @override
  factory ElementDefinitionType.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionType(
      aggregation: (json['aggregation'] as List<dynamic>?)?.map((e) => e as String).toList(),
      code: json['code'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      profile: (json['profile'] as List<dynamic>?)?.map((e) => e as String).toList(),
      targetProfile: (json['targetProfile'] as List<dynamic>?)?.map((e) => e as String).toList(),
      versioning: json['versioning'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'aggregation': aggregation?.map((e) => e).toList(),
      'code': code,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'profile': profile?.map((e) => e).toList(),
      'targetProfile': targetProfile?.map((e) => e).toList(),
      'versioning': versioning,
    };
  
  @override
  ElementDefinitionType copyWith({
    List<String>? aggregation,
    String? code,
    List<Extension>? fhirExtension,
    String? id,
    List<String>? profile,
    List<String>? targetProfile,
    String? versioning,
  }) {
    return ElementDefinitionType(
      aggregation: aggregation ?? this.aggregation,
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      profile: profile ?? this.profile,
      targetProfile: targetProfile ?? this.targetProfile,
      versioning: versioning ?? this.versioning,
    );
  }
}
