part of '../fhir_dart.dart';

 /// Base StructureDefinition for ContactPoint Type: Details for all kinds of technology mediated contact points for a person or organization, including telephone, email, etc.
 /// Need to track phone, fax, mobile, sms numbers, email addresses, twitter tags, etc.
class ContactPoint extends Element implements FhirResource {
   /// Time period when the contact point was/is in use.
  final Period? period;
   /// Specify preferred order of use (1 = highest)
   /// Specifies a preferred order in which to use a set of contacts. ContactPoints with lower rank values are more preferred than those with higher rank values.
   /// Note that rank does not necessarily follow the order in which the contacts are represented in the instance.
  final int? rank;
   /// Telecommunications form for contact point - what communications system is required to make use of the contact.
  final String? system; // Possible values: 'phone', 'fax', 'email', 'pager', 'url', 'sms', 'other'
   /// Identifies the purpose for the contact point.
   /// Applications can assume that a contact is current unless it explicitly says that it is temporary or old.
  final String? use; // Possible values: 'home', 'work', 'temp', 'old', 'mobile'
   /// The actual contact point details, in a form that is meaningful to the designated communication system (i.e. phone number or email address).
   /// Additional text data such as phone extension numbers, or notes about use of the contact are sometimes included in the value.
  final String? value;
  ContactPoint({
    super.fhirExtension,
    super.id,
    this.period,
    this.rank,
    this.system,
    this.use,
    this.value,
  });
  
  @override
  factory ContactPoint.fromJson(Map<String, dynamic> json) {
    return ContactPoint(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      rank: json['rank'] as int?,
      system: json['system'] as String?,
      use: json['use'] as String?,
      value: json['value'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'period': period?.toJson(),
      'rank': rank,
      'system': system,
      'use': use,
      'value': value,
    };
  
  @override
  ContactPoint copyWith({
    List<Extension>? fhirExtension,
    String? id,
    Period? period,
    int? rank,
    String? system,
    String? use,
    String? value,
  }) {
    return ContactPoint(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      period: period ?? this.period,
      rank: rank ?? this.rank,
      system: system ?? this.system,
      use: use ?? this.use,
      value: value ?? this.value,
    );
  }
}
