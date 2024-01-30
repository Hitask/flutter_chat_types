// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioMessage _$AudioMessageFromJson(Map<String, dynamic> json) => AudioMessage(
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: json['created_at'] as int?,
      duration: Duration(microseconds: json['duration'] as int),
      id: json['id'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
      mimeType: json['mime_type'] as String?,
      name: json['name'] as String,
      remoteId: json['remote_id'] as String?,
      repliedMessage: json['replied_message'] == null
          ? null
          : Message.fromJson(json['replied_message'] as Map<String, dynamic>),
      roomId: json['room_id'] as String?,
      showStatus: json['show_status'] as bool?,
      size: json['size'] as num,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      type: $enumDecodeNullable(_$MessageTypeEnumMap, json['type']),
      updatedAt: json['updated_at'] as int?,
      uri: json['uri'] as String,
      waveForm: (json['waveform'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$AudioMessageToJson(AudioMessage instance) {
  final val = <String, dynamic>{
    'author': instance.author.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  val['id'] = instance.id;
  writeNotNull('metadata', instance.metadata);
  writeNotNull('remote_id', instance.remoteId);
  writeNotNull('replied_message', instance.repliedMessage?.toJson());
  writeNotNull('room_id', instance.roomId);
  writeNotNull('show_status', instance.showStatus);
  writeNotNull('status', _$StatusEnumMap[instance.status]);
  val['type'] = _$MessageTypeEnumMap[instance.type]!;
  writeNotNull('updated_at', instance.updatedAt);
  val['duration'] = instance.duration.inMicroseconds;
  writeNotNull('mime_type', instance.mimeType);
  val['name'] = instance.name;
  val['size'] = instance.size;
  val['uri'] = instance.uri;
  writeNotNull('waveform', instance.waveForm);
  return val;
}

const _$StatusEnumMap = {
  Status.delivered: 'delivered',
  Status.error: 'error',
  Status.seen: 'seen',
  Status.sending: 'sending',
  Status.sent: 'sent',
};

const _$MessageTypeEnumMap = {
  MessageType.audio: 'audio',
  MessageType.custom: 'custom',
  MessageType.file: 'file',
  MessageType.image: 'image',
  MessageType.system: 'system',
  MessageType.text: 'text',
  MessageType.unsupported: 'unsupported',
  MessageType.video: 'video',
};
