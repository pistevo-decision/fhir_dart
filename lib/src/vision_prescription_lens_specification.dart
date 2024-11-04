part of '../fhir_dart.dart';

/// Vision lens authorization
/// Contain the details of  the individual lens specifications and serves as the authorization for the fullfillment by certified professionals.
class VisionPrescriptionLensSpecification extends BackboneElement
    implements FhirResource {
  /// Added power for multifocal levels
  /// Power adjustment for multifocal lenses measured in dioptres (0.25 units).
  final num? add;

  /// Lens meridian which contain no power for astigmatism
  /// Adjustment for astigmatism measured in integer degrees.
  /// The limits are +180 and -180 degrees.
  final int? axis;

  /// Contact lens back curvature
  /// Back curvature measured in millimetres.
  final num? backCurve;

  /// Brand required
  /// Brand recommendations or restrictions.
  final String? brand;

  /// Color required
  /// Special color or pattern.
  final String? color;

  /// Lens power for astigmatism
  /// Power adjustment for astigmatism measured in dioptres (0.25 units).
  final num? cylinder;

  /// Contact lens diameter measured in millimetres.
  final num? diameter;

  /// Lens wear duration
  /// The recommended maximum wear period for the lens.
  final Quantity? duration;

  /// right | left
  /// The eye for which the lens specification applies.
  /// May also appear as OD (oculus dexter) for the right eye and OS (oculus siniter) for the left eye.
  final String eye; // Possible values: 'right', 'left'
  /// Notes for coatings
  /// Notes for special requirements such as coatings and lens materials.
  final List<Annotation>? note;

  /// Contact lens power measured in dioptres (0.25 units).
  final num? power;

  /// Eye alignment compensation
  /// Allows for adjustment on two axis.
  final List<VisionPrescriptionLensSpecificationPrism>? prism;

  /// Product to be supplied
  /// Identifies the type of vision correction product which is required for the patient.
  final CodeableConcept product;

  /// Power of the lens
  /// Lens power measured in dioptres (0.25 units).
  /// The value is negative for near-sighted and positive for far sighted.
  /// Often insurance will not cover a lens with power between +75 and -75.
  final num? sphere;
  VisionPrescriptionLensSpecification({
    this.add,
    this.axis,
    this.backCurve,
    this.brand,
    this.color,
    this.cylinder,
    this.diameter,
    this.duration,
    super.fhirExtension,
    required this.eye,
    super.id,
    super.modifierExtension,
    this.note,
    this.power,
    this.prism,
    required this.product,
    this.sphere,
  });

  @override
  factory VisionPrescriptionLensSpecification.fromJson(
      Map<String, dynamic> json) {
    return VisionPrescriptionLensSpecification(
      add: json['add'] as num?,
      axis: json['axis'] as int?,
      backCurve: json['backCurve'] as num?,
      brand: json['brand'] as String?,
      color: json['color'] as String?,
      cylinder: json['cylinder'] as num?,
      diameter: json['diameter'] as num?,
      duration: json['duration'] != null
          ? Quantity.fromJson(json['duration'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      eye: json['eye'] as String,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      power: json['power'] as num?,
      prism: (json['prism'] as List<dynamic>?)
          ?.map((e) => VisionPrescriptionLensSpecificationPrism.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      product:
          CodeableConcept.fromJson(json['product'] as Map<String, dynamic>),
      sphere: json['sphere'] as num?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'add': add,
        'axis': axis,
        'backCurve': backCurve,
        'brand': brand,
        'color': color,
        'cylinder': cylinder,
        'diameter': diameter,
        'duration': duration?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'eye': eye,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'power': power,
        'prism': prism?.map((e) => e.toJson()).toList(),
        'product': product.toJson(),
        'sphere': sphere,
      };

  @override
  VisionPrescriptionLensSpecification copyWith({
    num? add,
    int? axis,
    num? backCurve,
    String? brand,
    String? color,
    num? cylinder,
    num? diameter,
    Quantity? duration,
    List<Extension>? fhirExtension,
    String? eye,
    String? id,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    num? power,
    List<VisionPrescriptionLensSpecificationPrism>? prism,
    CodeableConcept? product,
    num? sphere,
  }) {
    return VisionPrescriptionLensSpecification(
      add: add ?? this.add,
      axis: axis ?? this.axis,
      backCurve: backCurve ?? this.backCurve,
      brand: brand ?? this.brand,
      color: color ?? this.color,
      cylinder: cylinder ?? this.cylinder,
      diameter: diameter ?? this.diameter,
      duration: duration ?? this.duration,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      eye: eye ?? this.eye,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      power: power ?? this.power,
      prism: prism ?? this.prism,
      product: product ?? this.product,
      sphere: sphere ?? this.sphere,
    );
  }
}
