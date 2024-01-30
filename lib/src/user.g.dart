// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      createdAt: json['created_at'] as int?,
      firstName: json['first_name'] as String?,
      id: json['id'] as String,
      imageUrl: json['image_url'] as String?,
      lastName: json['last_name'] as String?,
      lastSeen: json['last_seen'] as int?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      updatedAt: json['updated_at'] as int?,
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull('first_name', instance.firstName);
  val['id'] = instance.id;
  writeNotNull('image_url', instance.imageUrl);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('last_seen', instance.lastSeen);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('role', _$RoleEnumMap[instance.role]);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.agent: 'agent',
  Role.moderator: 'moderator',
  Role.user: 'user',
};
