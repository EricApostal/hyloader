// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'patch_steps.dart';

class PatchStepMapper extends ClassMapperBase<PatchStep> {
  PatchStepMapper._();

  static PatchStepMapper? _instance;
  static PatchStepMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PatchStepMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PatchStep';

  static int _$from(PatchStep v) => v.from;
  static const Field<PatchStep, int> _f$from = Field('from', _$from);
  static String _$pwr(PatchStep v) => v.pwr;
  static const Field<PatchStep, String> _f$pwr = Field('pwr', _$pwr);
  static String _$sig(PatchStep v) => v.sig;
  static const Field<PatchStep, String> _f$sig = Field('sig', _$sig);
  static int _$to(PatchStep v) => v.to;
  static const Field<PatchStep, int> _f$to = Field('to', _$to);

  @override
  final MappableFields<PatchStep> fields = const {
    #from: _f$from,
    #pwr: _f$pwr,
    #sig: _f$sig,
    #to: _f$to,
  };

  static PatchStep _instantiate(DecodingData data) {
    return PatchStep(
      from: data.dec(_f$from),
      pwr: data.dec(_f$pwr),
      sig: data.dec(_f$sig),
      to: data.dec(_f$to),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PatchStep fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PatchStep>(map);
  }

  static PatchStep fromJson(String json) {
    return ensureInitialized().decodeJson<PatchStep>(json);
  }
}

mixin PatchStepMappable {
  String toJson() {
    return PatchStepMapper.ensureInitialized().encodeJson<PatchStep>(
      this as PatchStep,
    );
  }

  Map<String, dynamic> toMap() {
    return PatchStepMapper.ensureInitialized().encodeMap<PatchStep>(
      this as PatchStep,
    );
  }

  PatchStepCopyWith<PatchStep, PatchStep, PatchStep> get copyWith =>
      _PatchStepCopyWithImpl<PatchStep, PatchStep>(
        this as PatchStep,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PatchStepMapper.ensureInitialized().stringifyValue(
      this as PatchStep,
    );
  }

  @override
  bool operator ==(Object other) {
    return PatchStepMapper.ensureInitialized().equalsValue(
      this as PatchStep,
      other,
    );
  }

  @override
  int get hashCode {
    return PatchStepMapper.ensureInitialized().hashValue(this as PatchStep);
  }
}

extension PatchStepValueCopy<$R, $Out> on ObjectCopyWith<$R, PatchStep, $Out> {
  PatchStepCopyWith<$R, PatchStep, $Out> get $asPatchStep =>
      $base.as((v, t, t2) => _PatchStepCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PatchStepCopyWith<$R, $In extends PatchStep, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? from, String? pwr, String? sig, int? to});
  PatchStepCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PatchStepCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PatchStep, $Out>
    implements PatchStepCopyWith<$R, PatchStep, $Out> {
  _PatchStepCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PatchStep> $mapper =
      PatchStepMapper.ensureInitialized();
  @override
  $R call({int? from, String? pwr, String? sig, int? to}) => $apply(
    FieldCopyWithData({
      if (from != null) #from: from,
      if (pwr != null) #pwr: pwr,
      if (sig != null) #sig: sig,
      if (to != null) #to: to,
    }),
  );
  @override
  PatchStep $make(CopyWithData data) => PatchStep(
    from: data.get(#from, or: $value.from),
    pwr: data.get(#pwr, or: $value.pwr),
    sig: data.get(#sig, or: $value.sig),
    to: data.get(#to, or: $value.to),
  );

  @override
  PatchStepCopyWith<$R2, PatchStep, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PatchStepCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

