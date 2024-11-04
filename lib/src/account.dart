part of '../fhir_dart.dart';

/// A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges for a patient, cost centers, etc.
class Account extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Account';

  /// The party(s) that are responsible for covering the payment of this account, and what order should they be applied to the account.
  /// Typically. this may be some form of insurance, internal charges, or self-pay.
  /// Local or jurisdictional business rules may determine which coverage covers which types of billable items charged to the account, and in which order.
  /// Where the order is important, a local/jurisdictional extension may be defined to specify the order for the type of charge.
  final List<AccountCoverage>? coverage;

  /// Explanation of purpose/use
  /// Provides additional information about what the account tracks and how it is used.
  final String? description;

  /// The parties ultimately responsible for balancing the Account
  /// The parties responsible for balancing the account if other payment options fall short.
  final List<AccountGuarantor>? guarantor;

  /// Account number
  /// Unique identifier used to reference the account.  Might or might not be intended for human use (e.g. credit card number).
  final List<Identifier>? identifier;

  /// Human-readable label
  /// Name used for the account when displaying it to humans in reports, etc.
  final String? name;

  /// Entity managing the Account
  /// Indicates the service area, hospital, department, etc. with responsibility for managing the Account.
  final Reference? owner;

  /// Reference to a parent Account.
  final Reference? partOf;

  /// Transaction window
  /// The date range of services associated with this account.
  /// It is possible for transactions to be posted outside the service period, as long as the service was provided within the defined service period.
  final Period? servicePeriod;

  /// Indicates whether the account is presently used/usable or not.
  /// This element is labeled as a modifier because the status contains the codes inactive and entered-in-error that mark the Account as not currently valid.
  final String
      status; // Possible values: 'active', 'inactive', 'entered-in-error', 'on-hold', 'unknown'
  /// The entity that caused the expenses
  /// Identifies the entity which incurs the expenses. While the immediate recipients of services or goods might be entities related to the subject, the expenses were ultimately incurred by the subject of the Account.
  /// Accounts can be applied to non-patients for tracking other non-patient related activities, such as group services (patients not tracked, and costs charged to another body), or might not be allocated.
  final List<Reference>? subject;

  /// E.g. patient, expense, depreciation
  /// Categorizes the account for reporting and searching purposes.
  final CodeableConcept? type;
  Account({
    super.contained,
    this.coverage,
    this.description,
    super.fhirExtension,
    this.guarantor,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.owner,
    this.partOf,
    this.servicePeriod,
    required this.status,
    this.subject,
    super.text,
    this.type,
  });

  @override
  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      coverage: (json['coverage'] as List<dynamic>?)
          ?.map((e) => AccountCoverage.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      guarantor: (json['guarantor'] as List<dynamic>?)
          ?.map((e) => AccountGuarantor.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      owner: json['owner'] != null
          ? Reference.fromJson(json['owner'] as Map<String, dynamic>)
          : null,
      partOf: json['partOf'] != null
          ? Reference.fromJson(json['partOf'] as Map<String, dynamic>)
          : null,
      servicePeriod: json['servicePeriod'] != null
          ? Period.fromJson(json['servicePeriod'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      subject: (json['subject'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contained': contained?.map((e) => e.toJson()).toList(),
        'coverage': coverage?.map((e) => e.toJson()).toList(),
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'guarantor': guarantor?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'owner': owner?.toJson(),
        'partOf': partOf?.toJson(),
        'servicePeriod': servicePeriod?.toJson(),
        'status': status,
        'subject': subject?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'type': type?.toJson(),
      };

  @override
  Account copyWith({
    List<Resource>? contained,
    List<AccountCoverage>? coverage,
    String? description,
    List<Extension>? fhirExtension,
    List<AccountGuarantor>? guarantor,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    Reference? owner,
    Reference? partOf,
    Period? servicePeriod,
    String? status,
    List<Reference>? subject,
    Narrative? text,
    CodeableConcept? type,
  }) {
    return Account(
      contained: contained ?? this.contained,
      coverage: coverage ?? this.coverage,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      guarantor: guarantor ?? this.guarantor,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      owner: owner ?? this.owner,
      partOf: partOf ?? this.partOf,
      servicePeriod: servicePeriod ?? this.servicePeriod,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
