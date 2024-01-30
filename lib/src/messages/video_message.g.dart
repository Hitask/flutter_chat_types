// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoMessage _$VideoMessageFromJson(Map<String, dynamic> json) => VideoMessage(
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: json['created_at'] as int?,
      height: (json['height'] as num?)?.toDouble(),
      id: json['id'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
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
      width: (json['width'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$VideoMessageToJson(VideoMessage instance) {
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
  writeNotNull('height', instance.height);
  val['name'] = instance.name;
  val['size'] = instance.size;
  val['uri'] = instance.uri;
  writeNotNull('width', instance.width);
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
