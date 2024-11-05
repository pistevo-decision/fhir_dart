part of '../fhir_dart.dart';

/// Base StructureDefinition for Identifier Type: An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business identifiers.
/// Need to be able to identify things with confidence and be sure that the identification is not subject to misinterpretation.
class Identifier extends Element implements FhirResource {
  /// Organization that issued id (may be just text)
  /// Organization that issued/manages the identifier.
  /// The Identifier.assigner may omit the .reference element and only contain a .display element reflecting the name or other textual information about the assigning organization.
  final Reference? assigner;

  /// Time period when id is/was valid for use
  /// Time period during which identifier is/was valid for use.
  final Period? period;

  /// The namespace for the identifier value
  /// Establishes the namespace for the value - that is, a URL that describes a set values that are unique.
  /// Identifier.system is always case sensitive.
  final String? system;

  /// Description of identifier
  /// A coded type for the identifier that can be used to determine which identifier to use for a specific purpose.
  /// This element deals only with general categories of identifiers.  It SHOULD not be used for codes that correspond 1..1 with the Identifier.system. Some identifiers may fall into multiple categories due to common usage.   Where the system is known, a type is unnecessary because the type is always part of the system definition. However systems often need to handle identifiers where the system is not known. There is not a 1:1 relationship between type and system, since many different systems have the same type.
  final CodeableConcept? type;

  /// The purpose of this identifier.
  /// Applications can assume that an identifier is permanent unless it explicitly says that it is temporary.
  final String?
      use; // Possible values: 'usual', 'official', 'temp', 'secondary', 'old'
  /// The value that is unique
  /// The portion of the identifier typically relevant to the user and which is unique within the context of the system.
  /// If the value is a full URI, then the system SHALL be urn:ietf:rfc:3986.  The value's primary purpose is computational mapping.  As a result, it may be normalized for comparison purposes (e.g. removing non-significant whitespace, dashes, etc.)  A value formatted for human display can be conveyed using the [Rendered Value extension](extension-rendered-value.html). Identifier.value is to be treated as case sensitive unless knowledge of the Identifier.system allows the processer to be confident that non-case-sensitive processing is safe.
  final String? value;
  Identifier({
    this.assigner,
    super.fhirExtension,
    super.id,
    this.period,
    this.system,
    this.type,
    this.use,
    this.value,
  });

  @override
  factory Identifier.fromJson(Map<String, dynamic> json) {
    return Identifier(
      assigner: json['assigner'] != null
          ? Reference.fromJson(
              (json['assigner'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      system: json['system'] as String?,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      use: json['use'] as String?,
      value: json['value'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'assigner': assigner?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'period': period?.toJson(),
        'system': system,
        'type': type?.toJson(),
        'use': use,
        'value': value,
      };

  @override
  Identifier copyWith({
    Reference? assigner,
    List<Extension>? fhirExtension,
    String? id,
    Period? period,
    String? system,
    CodeableConcept? type,
    String? use,
    String? value,
  }) {
    return Identifier(
      assigner: assigner ?? this.assigner,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      period: period ?? this.period,
      system: system ?? this.system,
      type: type ?? this.type,
      use: use ?? this.use,
      value: value ?? this.value,
    );
  }
}
