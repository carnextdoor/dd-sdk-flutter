// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ddlog_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogDevice _$LogDeviceFromJson(Map json) => LogDevice(
      architecture: json['architecture'] as String,
    );

Map<String, dynamic> _$LogDeviceToJson(LogDevice instance) => <String, dynamic>{
      'architecture': instance.architecture,
    };

LogEventDd _$LogEventDdFromJson(Map json) => LogEventDd(
      device:
          LogDevice.fromJson(Map<String, dynamic>.from(json['device'] as Map)),
    );

Map<String, dynamic> _$LogEventDdToJson(LogEventDd instance) =>
    <String, dynamic>{
      'device': instance.device.toJson(),
    };

LogEventUserInfo _$LogEventUserInfoFromJson(Map json) => LogEventUserInfo(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      extraInfo: attributesFromJson(json['extraInfo'] as Map?),
    );

Map<String, dynamic> _$LogEventUserInfoToJson(LogEventUserInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  val['extraInfo'] = instance.extraInfo;
  return val;
}

LogEventError _$LogEventErrorFromJson(Map json) => LogEventError(
      kind: json['kind'] as String?,
      message: json['message'] as String?,
      stack: json['stack'] as String?,
    );

Map<String, dynamic> _$LogEventErrorToJson(LogEventError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kind', instance.kind);
  writeNotNull('message', instance.message);
  writeNotNull('stack', instance.stack);
  return val;
}

LogEventLoggerInfo _$LogEventLoggerInfoFromJson(Map json) => LogEventLoggerInfo(
      name: json['name'] as String,
      threadName: json['thread_name'] as String?,
      version: json['version'] as String,
    );

Map<String, dynamic> _$LogEventLoggerInfoToJson(LogEventLoggerInfo instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('thread_name', instance.threadName);
  val['version'] = instance.version;
  return val;
}

LogEvent _$LogEventFromJson(Map json) => LogEvent(
      date: json['date'] as String,
      status: $enumDecode(_$LogStatusEnumMap, json['status']),
      message: json['message'] as String,
      error: json['error'] == null
          ? null
          : LogEventError.fromJson(json['error'] as Map),
      service: json['service'] as String,
      usr: json['usr'] == null
          ? null
          : LogEventUserInfo.fromJson(json['usr'] as Map),
      logger: LogEventLoggerInfo.fromJson(json['logger'] as Map),
      dd: LogEventDd.fromJson(Map<String, dynamic>.from(json['_dd'] as Map)),
      ddtags: json['ddtags'] as String,
    );

Map<String, dynamic> _$LogEventToJson(LogEvent instance) {
  final val = <String, dynamic>{
    'date': instance.date,
    'status': _$LogStatusEnumMap[instance.status]!,
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('error', instance.error?.toJson());
  val['service'] = instance.service;
  writeNotNull('usr', instance.usr?.toJson());
  val['logger'] = instance.logger.toJson();
  val['_dd'] = instance.dd.toJson();
  val['ddtags'] = instance.ddtags;
  return val;
}

const _$LogStatusEnumMap = {
  LogStatus.debug: 'debug',
  LogStatus.info: 'info',
  LogStatus.notice: 'notice',
  LogStatus.warn: 'warn',
  LogStatus.error: 'error',
  LogStatus.critical: 'critical',
  LogStatus.emergency: 'emergency',
};
