part of '../fhir_dart.dart';

/// Page/Section in the Guide
/// A page / section in the implementation guide. The root page is the implementation guide home page.
/// Pages automatically become sections if they have sub-pages. By convention, the home page is called index.html.
class ImplementationGuideDefinitionPage extends BackboneElement
    implements FhirResource {
  /// A code that indicates how the page is generated.
  final String
      generation; // Possible values: 'html', 'markdown', 'xml', 'generated'
  /// Where to find that page
  /// The source address for the page.
  /// The publishing tool will autogenerate source for list (source = n/a) and inject included implementations for include (source = uri of guide to include).
  final Reference? nameReference;

  /// Where to find that page
  /// The source address for the page.
  /// The publishing tool will autogenerate source for list (source = n/a) and inject included implementations for include (source = uri of guide to include).
  final String? nameUrl;

  /// Nested Pages / Sections
  /// Nested Pages/Sections under this page.
  /// The implementation guide breadcrumbs are generated from this structure.
  final List<ImplementationGuideDefinitionPage>? page;

  /// Short title shown for navigational assistance
  /// A short title used to represent this page in navigational structures such as table of contents, bread crumbs, etc.
  final String title;
  ImplementationGuideDefinitionPage({
    super.fhirExtension,
    required this.generation,
    super.id,
    super.modifierExtension,
    this.nameReference,
    this.nameUrl,
    this.page,
    required this.title,
  });

  @override
  factory ImplementationGuideDefinitionPage.fromJson(
      Map<String, dynamic> json) {
    return ImplementationGuideDefinitionPage(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      generation: json['generation'] as String,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      nameReference: json['nameReference'] != null
          ? Reference.fromJson(json['nameReference'] as Map<String, dynamic>)
          : null,
      nameUrl: json['nameUrl'] as String?,
      page: (json['page'] as List<dynamic>?)
          ?.map((e) => ImplementationGuideDefinitionPage.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'generation': generation,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'nameReference': nameReference?.toJson(),
        'nameUrl': nameUrl,
        'page': page?.map((e) => e.toJson()).toList(),
        'title': title,
      };

  @override
  ImplementationGuideDefinitionPage copyWith({
    List<Extension>? fhirExtension,
    String? generation,
    String? id,
    List<Extension>? modifierExtension,
    Reference? nameReference,
    String? nameUrl,
    List<ImplementationGuideDefinitionPage>? page,
    String? title,
  }) {
    return ImplementationGuideDefinitionPage(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      generation: generation ?? this.generation,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      nameReference: nameReference ?? this.nameReference,
      nameUrl: nameUrl ?? this.nameUrl,
      page: page ?? this.page,
      title: title ?? this.title,
    );
  }
}
