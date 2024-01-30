import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../message.dart';

part 'partial_audio.g.dart';

/// A class that represents partial audio message.
@JsonSerializable()
@immutable
class PartialAudio {
  /// Creates a partial audio message with all variables audio can have.
  /// Use [AudioMessage] to create a full message.
  /// You can use [AudioMessage.fromPartial] constructor to create a full
  /// message from a partial one.
  const PartialAudio({
    required this.duration,
    this.metadata,
    this.mimeType,
    required this.name,
    this.repliedMessage,
    required this.size,
    required this.uri,
    this.waveForm,
  });

  /// Creates a partial audio message from a map (decoded JSON).
  factory PartialAudio.fromJson(Map<String, dynamic> json) =>
      _$PartialAudioFromJson(json);

  /// The length of the audio.
  final Duration duration;

  /// Additional custom metadata or attributes related to the message.
  final Map<String, dynamic>? metadata;

  /// Media type of the audio file.
  @JsonKey(name: 'mime_type')
  final String? mimeType;

  /// The name of the audio.
  final String name;

  /// Message that is being replied to with the current message.
  @JsonKey(name: 'replied_message')
  final Message? repliedMessage;

  /// Size of the audio in bytes.
  final num size;

  /// The audio file source (either a remote URL or a local resource).
  final String uri;

  /// Wave form represented as a list of decibel levels.
  @JsonKey(name: 'waveform')
  final List<double>? waveForm;

  /// Converts a partial audio message to the map representation, encodable to JSON.
  Map<String, dynamic> toJson() => _$PartialAudioToJson(this);
}
