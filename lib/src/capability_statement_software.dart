part of '../fhir_dart.dart';

 /// Software that is covered by this capability statement.  It is used when the capability statement describes the capabilities of a particular software version, independent of an installation.
class CapabilityStatementSoftware extends BackboneElement implements FhirResource {
   /// A name the software is known by
   /// Name the software is known by.
  final String name;
   /// Date this version was released
   /// Date this version of the software was released.
  final String? releaseDate;
   /// Version covered by this statement
   /// The version identifier for the software covered by this statement.
   /// If possible, a version should be specified, as statements are likely to be different for different versions of software.
  final String? version;
  CapabilityStatementSoftware({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    this.releaseDate,
    this.version,
  });
  
  @override
  factory CapabilityStatementSoftware.fromJson(Map<String, dynamic> json) {
    return CapabilityStatementSoftware(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String,
      releaseDate: json['releaseDate'] as String?,
      version: json['version'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'releaseDate': releaseDate,
      'version': version,
    };
  
  @override
  CapabilityStatementSoftware copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    String? releaseDate,
    String? version,
  }) {
    return CapabilityStatementSoftware(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      releaseDate: releaseDate ?? this.releaseDate,
      version: version ?? this.version,
    );
  }
}
