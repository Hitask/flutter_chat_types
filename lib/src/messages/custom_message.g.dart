// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomMessage _$CustomMessageFromJson(Map<String, dynamic> json) =>
    CustomMessage(
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: json['created_at'] as int?,
      id: json['id'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
      remoteId: json['remote_id'] as String?,
      repliedMessage: json['replied_message'] == null
          ? null
          : Message.fromJson(json['replied_message'] as Map<String, dynamic>),
      roomId: json['room_id'] as String?,
      showStatus: json['show_status'] as bool?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      type: $enumDecodeNullable(_$MessageTypeEnumMap, json['type']),
      updatedAt: json['updated_at'] as int?,
    );

Map<String, dynamic> _$CustomMessageToJson(CustomMessage instance) {
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
