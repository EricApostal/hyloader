// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'release_note.dart';

class ReleaseNoteMapper extends ClassMapperBase<ReleaseNote> {
  ReleaseNoteMapper._();

  static ReleaseNoteMapper? _instance;
  static ReleaseNoteMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReleaseNoteMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ReleaseNote';

  static String _$id(ReleaseNote v) => v.id;
  static const Field<ReleaseNote, String> _f$id = Field('id', _$id);
  static String? _$title(ReleaseNote v) => v.title;
  static const Field<ReleaseNote, String> _f$title = Field(
    'title',
    _$title,
    opt: true,
  );
  static String? _$priority(ReleaseNote v) => v.priority;
  static const Field<ReleaseNote, String> _f$priority = Field(
    'priority',
    _$priority,
    opt: true,
  );
  static String? _$component(ReleaseNote v) => v.component;
  static const Field<ReleaseNote, String> _f$component = Field(
    'component',
    _$component,
    opt: true,
  );
  static String? _$subcomponent(ReleaseNote v) => v.subcomponent;
  static const Field<ReleaseNote, String> _f$subcomponent = Field(
    'subcomponent',
    _$subcomponent,
    opt: true,
  );
  static String? _$link(ReleaseNote v) => v.link;
  static const Field<ReleaseNote, String> _f$link = Field(
    'link',
    _$link,
    opt: true,
  );
  static String? _$type(ReleaseNote v) => v.type;
  static const Field<ReleaseNote, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
  );
  static String? _$backportOf(ReleaseNote v) => v.backportOf;
  static const Field<ReleaseNote, String> _f$backportOf = Field(
    'backportOf',
    _$backportOf,
    opt: true,
  );

  @override
  final MappableFields<ReleaseNote> fields = const {
    #id: _f$id,
    #title: _f$title,
    #priority: _f$priority,
    #component: _f$component,
    #subcomponent: _f$subcomponent,
    #link: _f$link,
    #type: _f$type,
    #backportOf: _f$backportOf,
  };

  static ReleaseNote _instantiate(DecodingData data) {
    return ReleaseNote(
      id: data.dec(_f$id),
      title: data.dec(_f$title),
      priority: data.dec(_f$priority),
      component: data.dec(_f$component),
      subcomponent: data.dec(_f$subcomponent),
      link: data.dec(_f$link),
      type: data.dec(_f$type),
      backportOf: data.dec(_f$backportOf),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ReleaseNote fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReleaseNote>(map);
  }

  static ReleaseNote fromJson(String json) {
    return ensureInitialized().decodeJson<ReleaseNote>(json);
  }
}

mixin ReleaseNoteMappable {
  String toJson() {
    return ReleaseNoteMapper.ensureInitialized().encodeJson<ReleaseNote>(
      this as ReleaseNote,
    );
  }

  Map<String, dynamic> toMap() {
    return ReleaseNoteMapper.ensureInitialized().encodeMap<ReleaseNote>(
      this as ReleaseNote,
    );
  }

  ReleaseNoteCopyWith<ReleaseNote, ReleaseNote, ReleaseNote> get copyWith =>
      _ReleaseNoteCopyWithImpl<ReleaseNote, ReleaseNote>(
        this as ReleaseNote,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ReleaseNoteMapper.ensureInitialized().stringifyValue(
      this as ReleaseNote,
    );
  }

  @override
  bool operator ==(Object other) {
    return ReleaseNoteMapper.ensureInitialized().equalsValue(
      this as ReleaseNote,
      other,
    );
  }

  @override
  int get hashCode {
    return ReleaseNoteMapper.ensureInitialized().hashValue(this as ReleaseNote);
  }
}

extension ReleaseNoteValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReleaseNote, $Out> {
  ReleaseNoteCopyWith<$R, ReleaseNote, $Out> get $asReleaseNote =>
      $base.as((v, t, t2) => _ReleaseNoteCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ReleaseNoteCopyWith<$R, $In extends ReleaseNote, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? title,
    String? priority,
    String? component,
    String? subcomponent,
    String? link,
    String? type,
    String? backportOf,
  });
  ReleaseNoteCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ReleaseNoteCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReleaseNote, $Out>
    implements ReleaseNoteCopyWith<$R, ReleaseNote, $Out> {
  _ReleaseNoteCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReleaseNote> $mapper =
      ReleaseNoteMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? title = $none,
    Object? priority = $none,
    Object? component = $none,
    Object? subcomponent = $none,
    Object? link = $none,
    Object? type = $none,
    Object? backportOf = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (title != $none) #title: title,
      if (priority != $none) #priority: priority,
      if (component != $none) #component: component,
      if (subcomponent != $none) #subcomponent: subcomponent,
      if (link != $none) #link: link,
      if (type != $none) #type: type,
      if (backportOf != $none) #backportOf: backportOf,
    }),
  );
  @override
  ReleaseNote $make(CopyWithData data) => ReleaseNote(
    id: data.get(#id, or: $value.id),
    title: data.get(#title, or: $value.title),
    priority: data.get(#priority, or: $value.priority),
    component: data.get(#component, or: $value.component),
    subcomponent: data.get(#subcomponent, or: $value.subcomponent),
    link: data.get(#link, or: $value.link),
    type: data.get(#type, or: $value.type),
    backportOf: data.get(#backportOf, or: $value.backportOf),
  );

  @override
  ReleaseNoteCopyWith<$R2, ReleaseNote, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ReleaseNoteCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

