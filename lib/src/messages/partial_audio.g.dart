// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialAudio _$PartialAudioFromJson(Map<String, dynamic> json) => PartialAudio(
      duration: Duration(microseconds: json['duration'] as int),
      metadata: json['metadata'] as Map<String, dynamic>?,
      mimeType: json['mime_type'] as String?,
      name: json['name'] as String,
      repliedMessage: json['replied_message'] == null
          ? null
          : Message.fromJson(json['replied_message'] as Map<String, dynamic>),
      size: json['size'] as num,
      uri: json['uri'] as String,
      waveForm: (json['waveform'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$PartialAudioToJson(PartialAudio instance) {
  final val = <String, dynamic>{
    'duration': instance.duration.inMicroseconds,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('mime_type', instance.mimeType);
  val['name'] = instance.name;
  writeNotNull('replied_message', instance.repliedMessage?.toJson());
  val['size'] = instance.size;
  val['uri'] = instance.uri;
  writeNotNull('waveform', instance.waveForm);
  return val;
}
