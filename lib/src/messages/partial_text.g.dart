// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialText _$PartialTextFromJson(Map<String, dynamic> json) => PartialText(
      metadata: json['metadata'] as Map<String, dynamic>?,
      previewData: json['preview_data'] == null
          ? null
          : PreviewData.fromJson(json['preview_data'] as Map<String, dynamic>),
      repliedMessage: json['replied_message'] == null
          ? null
          : Message.fromJson(json['replied_message'] as Map<String, dynamic>),
      text: json['text'] as String,
    );

Map<String, dynamic> _$PartialTextToJson(PartialText instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('preview_data', instance.previewData?.toJson());
  writeNotNull('replied_message', instance.repliedMessage?.toJson());
  val['text'] = instance.text;
  return val;
}
