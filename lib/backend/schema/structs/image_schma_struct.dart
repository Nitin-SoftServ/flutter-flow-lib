// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageSchmaStruct extends BaseStruct {
  ImageSchmaStruct({
    String? image,
    String? link,
  })  : _image = image,
        _link = link;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  static ImageSchmaStruct fromMap(Map<String, dynamic> data) =>
      ImageSchmaStruct(
        image: data['image'] as String?,
        link: data['link'] as String?,
      );

  static ImageSchmaStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageSchmaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'link': _link,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageSchmaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageSchmaStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageSchmaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageSchmaStruct &&
        image == other.image &&
        link == other.link;
  }

  @override
  int get hashCode => const ListEquality().hash([image, link]);
}

ImageSchmaStruct createImageSchmaStruct({
  String? image,
  String? link,
}) =>
    ImageSchmaStruct(
      image: image,
      link: link,
    );
