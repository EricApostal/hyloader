// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'binary.dart';

class BinaryMapper extends ClassMapperBase<Binary> {
  BinaryMapper._();

  static BinaryMapper? _instance;
  static BinaryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BinaryMapper._());
      OperatingSystemMapper.ensureInitialized();
      ArchitectureMapper.ensureInitialized();
      ImageTypeMapper.ensureInitialized();
      HeapSizeMapper.ensureInitialized();
      CLibMapper.ensureInitialized();
      AdoptiumJvmImplMapper.ensureInitialized();
      PackageMapper.ensureInitialized();
      InstallerMapper.ensureInitialized();
      ProjectMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Binary';

  static OperatingSystem _$os(Binary v) => v.os;
  static const Field<Binary, OperatingSystem> _f$os = Field('os', _$os);
  static Architecture _$architecture(Binary v) => v.architecture;
  static const Field<Binary, Architecture> _f$architecture = Field(
    'architecture',
    _$architecture,
  );
  static ImageType _$imageType(Binary v) => v.imageType;
  static const Field<Binary, ImageType> _f$imageType = Field(
    'imageType',
    _$imageType,
    key: r'image_type',
  );
  static HeapSize _$heapSize(Binary v) => v.heapSize;
  static const Field<Binary, HeapSize> _f$heapSize = Field(
    'heapSize',
    _$heapSize,
    key: r'heap_size',
  );
  static String _$updatedAt(Binary v) => v.updatedAt;
  static const Field<Binary, String> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static CLib? _$cLib(Binary v) => v.cLib;
  static const Field<Binary, CLib> _f$cLib = Field(
    'cLib',
    _$cLib,
    key: r'c_lib',
    opt: true,
  );
  static AdoptiumJvmImpl? _$jvmImpl(Binary v) => v.jvmImpl;
  static const Field<Binary, AdoptiumJvmImpl> _f$jvmImpl = Field(
    'jvmImpl',
    _$jvmImpl,
    key: r'jvm_impl',
    opt: true,
  );
  static Package? _$package(Binary v) => v.package;
  static const Field<Binary, Package> _f$package = Field(
    'package',
    _$package,
    opt: true,
  );
  static Installer? _$installer(Binary v) => v.installer;
  static const Field<Binary, Installer> _f$installer = Field(
    'installer',
    _$installer,
    opt: true,
  );
  static int? _$downloadCount(Binary v) => v.downloadCount;
  static const Field<Binary, int> _f$downloadCount = Field(
    'downloadCount',
    _$downloadCount,
    key: r'download_count',
    opt: true,
  );
  static String? _$scmRef(Binary v) => v.scmRef;
  static const Field<Binary, String> _f$scmRef = Field(
    'scmRef',
    _$scmRef,
    key: r'scm_ref',
    opt: true,
  );
  static Project? _$project(Binary v) => v.project;
  static const Field<Binary, Project> _f$project = Field(
    'project',
    _$project,
    key: r'Project',
    opt: true,
  );

  @override
  final MappableFields<Binary> fields = const {
    #os: _f$os,
    #architecture: _f$architecture,
    #imageType: _f$imageType,
    #heapSize: _f$heapSize,
    #updatedAt: _f$updatedAt,
    #cLib: _f$cLib,
    #jvmImpl: _f$jvmImpl,
    #package: _f$package,
    #installer: _f$installer,
    #downloadCount: _f$downloadCount,
    #scmRef: _f$scmRef,
    #project: _f$project,
  };

  static Binary _instantiate(DecodingData data) {
    return Binary(
      os: data.dec(_f$os),
      architecture: data.dec(_f$architecture),
      imageType: data.dec(_f$imageType),
      heapSize: data.dec(_f$heapSize),
      updatedAt: data.dec(_f$updatedAt),
      cLib: data.dec(_f$cLib),
      jvmImpl: data.dec(_f$jvmImpl),
      package: data.dec(_f$package),
      installer: data.dec(_f$installer),
      downloadCount: data.dec(_f$downloadCount),
      scmRef: data.dec(_f$scmRef),
      project: data.dec(_f$project),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Binary fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Binary>(map);
  }

  static Binary fromJson(String json) {
    return ensureInitialized().decodeJson<Binary>(json);
  }
}

mixin BinaryMappable {
  String toJson() {
    return BinaryMapper.ensureInitialized().encodeJson<Binary>(this as Binary);
  }

  Map<String, dynamic> toMap() {
    return BinaryMapper.ensureInitialized().encodeMap<Binary>(this as Binary);
  }

  BinaryCopyWith<Binary, Binary, Binary> get copyWith =>
      _BinaryCopyWithImpl<Binary, Binary>(this as Binary, $identity, $identity);
  @override
  String toString() {
    return BinaryMapper.ensureInitialized().stringifyValue(this as Binary);
  }

  @override
  bool operator ==(Object other) {
    return BinaryMapper.ensureInitialized().equalsValue(this as Binary, other);
  }

  @override
  int get hashCode {
    return BinaryMapper.ensureInitialized().hashValue(this as Binary);
  }
}

extension BinaryValueCopy<$R, $Out> on ObjectCopyWith<$R, Binary, $Out> {
  BinaryCopyWith<$R, Binary, $Out> get $asBinary =>
      $base.as((v, t, t2) => _BinaryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BinaryCopyWith<$R, $In extends Binary, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PackageCopyWith<$R, Package, Package>? get package;
  InstallerCopyWith<$R, Installer, Installer>? get installer;
  $R call({
    OperatingSystem? os,
    Architecture? architecture,
    ImageType? imageType,
    HeapSize? heapSize,
    String? updatedAt,
    CLib? cLib,
    AdoptiumJvmImpl? jvmImpl,
    Package? package,
    Installer? installer,
    int? downloadCount,
    String? scmRef,
    Project? project,
  });
  BinaryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BinaryCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Binary, $Out>
    implements BinaryCopyWith<$R, Binary, $Out> {
  _BinaryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Binary> $mapper = BinaryMapper.ensureInitialized();
  @override
  PackageCopyWith<$R, Package, Package>? get package =>
      $value.package?.copyWith.$chain((v) => call(package: v));
  @override
  InstallerCopyWith<$R, Installer, Installer>? get installer =>
      $value.installer?.copyWith.$chain((v) => call(installer: v));
  @override
  $R call({
    OperatingSystem? os,
    Architecture? architecture,
    ImageType? imageType,
    HeapSize? heapSize,
    String? updatedAt,
    Object? cLib = $none,
    Object? jvmImpl = $none,
    Object? package = $none,
    Object? installer = $none,
    Object? downloadCount = $none,
    Object? scmRef = $none,
    Object? project = $none,
  }) => $apply(
    FieldCopyWithData({
      if (os != null) #os: os,
      if (architecture != null) #architecture: architecture,
      if (imageType != null) #imageType: imageType,
      if (heapSize != null) #heapSize: heapSize,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (cLib != $none) #cLib: cLib,
      if (jvmImpl != $none) #jvmImpl: jvmImpl,
      if (package != $none) #package: package,
      if (installer != $none) #installer: installer,
      if (downloadCount != $none) #downloadCount: downloadCount,
      if (scmRef != $none) #scmRef: scmRef,
      if (project != $none) #project: project,
    }),
  );
  @override
  Binary $make(CopyWithData data) => Binary(
    os: data.get(#os, or: $value.os),
    architecture: data.get(#architecture, or: $value.architecture),
    imageType: data.get(#imageType, or: $value.imageType),
    heapSize: data.get(#heapSize, or: $value.heapSize),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    cLib: data.get(#cLib, or: $value.cLib),
    jvmImpl: data.get(#jvmImpl, or: $value.jvmImpl),
    package: data.get(#package, or: $value.package),
    installer: data.get(#installer, or: $value.installer),
    downloadCount: data.get(#downloadCount, or: $value.downloadCount),
    scmRef: data.get(#scmRef, or: $value.scmRef),
    project: data.get(#project, or: $value.project),
  );

  @override
  BinaryCopyWith<$R2, Binary, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BinaryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

