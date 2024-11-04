part of '../fhir_dart.dart';

/// Contact for the product
/// The contact for the health insurance product for a certain purpose.
/// Where multiple contacts for the same purpose are provided there is a standard extension that can be used to determine which one is the preferred contact to use.
class InsurancePlanContact extends BackboneElement implements FhirResource {
  /// Visiting or postal addresses for the contact.
  final Address? address;

  /// A name associated with the contact.
  final HumanName? name;

  /// The type of contact
  /// Indicates a purpose for which the contact can be reached.
  final CodeableConcept? purpose;

  /// Contact details (telephone, email, etc.)  for a contact
  /// A contact detail (e.g. a telephone number or an email address) by which the party may be contacted.
  final List<ContactPoint>? telecom;
  InsurancePlanContact({
    this.address,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
    this.purpose,
    this.telecom,
  });

  @override
  factory InsurancePlanContact.fromJson(Map<String, dynamic> json) {
    return InsurancePlanContact(
      address: json['address'] != null
          ? Address.fromJson(json['address'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] != null
          ? HumanName.fromJson(json['name'] as Map<String, dynamic>)
          : null,
      purpose: json['purpose'] != null
          ? CodeableConcept.fromJson(json['purpose'] as Map<String, dynamic>)
          : null,
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map((e) => ContactPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'address': address?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name?.toJson(),
        'purpose': purpose?.toJson(),
        'telecom': telecom?.map((e) => e.toJson()).toList(),
      };

  @override
  InsurancePlanContact copyWith({
    Address? address,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    HumanName? name,
    CodeableConcept? purpose,
    List<ContactPoint>? telecom,
  }) {
    return InsurancePlanContact(
      address: address ?? this.address,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      purpose: purpose ?? this.purpose,
      telecom: telecom ?? this.telecom,
    );
  }
}
