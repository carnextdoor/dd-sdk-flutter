// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ddrum_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RumViewEvent _$RumViewEventFromJson(Map json) => RumViewEvent(
      dd: RumViewEventDd.fromJson(
          Map<String, dynamic>.from(json['_dd'] as Map)),
      application: RumApplication.fromJson(
          Map<String, dynamic>.from(json['application'] as Map)),
      connectivity: json['connectivity'] == null
          ? null
          : RumConnectivity.fromJson(
              Map<String, dynamic>.from(json['connectivity'] as Map)),
      context: attributesFromJson(json['context'] as Map?),
      date: json['date'] as int,
      device: json['device'] == null
          ? null
          : RumDevice.fromJson(
              Map<String, dynamic>.from(json['device'] as Map)),
      os: json['os'] == null
          ? null
          : RumOperatingSystem.fromJson(
              Map<String, dynamic>.from(json['os'] as Map)),
      service: json['service'] as String,
      session: RumSession.fromJson(
          Map<String, dynamic>.from(json['session'] as Map)),
      usr: json['usr'] == null
          ? null
          : RumUser.fromJson(Map<String, dynamic>.from(json['usr'] as Map)),
      version: json['version'] as String,
      view: RumViewDetails.fromJson(
          Map<String, dynamic>.from(json['view'] as Map)),
    );

Map<String, dynamic> _$RumViewEventToJson(RumViewEvent instance) {
  final val = <String, dynamic>{
    '_dd': instance.dd.toJson(),
    'application': instance.application.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('connectivity', instance.connectivity?.toJson());
  val['context'] = instance.context;
  val['date'] = instance.date;
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('os', instance.os?.toJson());
  val['service'] = instance.service;
  val['session'] = instance.session.toJson();
  writeNotNull('usr', instance.usr?.toJson());
  val['version'] = instance.version;
  val['view'] = instance.view.toJson();
  return val;
}

RumViewEventDd _$RumViewEventDdFromJson(Map json) => RumViewEventDd(
      documentVersion: json['document_version'] as int,
      formatVersion: json['format_version'] as int,
    );

Map<String, dynamic> _$RumViewEventDdToJson(RumViewEventDd instance) =>
    <String, dynamic>{
      'document_version': instance.documentVersion,
      'format_version': instance.formatVersion,
    };

RumApplication _$RumApplicationFromJson(Map json) => RumApplication(
      id: json['id'] as String,
    );

Map<String, dynamic> _$RumApplicationToJson(RumApplication instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

RumConnectivity _$RumConnectivityFromJson(Map json) => RumConnectivity(
      cellular: json['cellular'] == null
          ? null
          : RumCellular.fromJson(
              Map<String, dynamic>.from(json['cellular'] as Map)),
      interfaces: (json['interfaces'] as List<dynamic>)
          .map((e) => $enumDecode(_$RumConnectivityInterfacesEnumMap, e))
          .toList(),
      status: $enumDecode(_$RumConnectivityStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$RumConnectivityToJson(RumConnectivity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cellular', instance.cellular?.toJson());
  val['interfaces'] = instance.interfaces
      .map((e) => _$RumConnectivityInterfacesEnumMap[e]!)
      .toList();
  val['status'] = _$RumConnectivityStatusEnumMap[instance.status]!;
  return val;
}

const _$RumConnectivityInterfacesEnumMap = {
  RumConnectivityInterfaces.bluetooth: 'bluetooth',
  RumConnectivityInterfaces.cellular: 'cellular',
  RumConnectivityInterfaces.ethernet: 'ethernet',
  RumConnectivityInterfaces.wifi: 'wifi',
  RumConnectivityInterfaces.wimax: 'wimax',
  RumConnectivityInterfaces.mixed: 'mixed',
  RumConnectivityInterfaces.other: 'other',
  RumConnectivityInterfaces.unknown: 'unknown',
  RumConnectivityInterfaces.none: 'none',
};

const _$RumConnectivityStatusEnumMap = {
  RumConnectivityStatus.connected: 'connected',
  RumConnectivityStatus.notConnected: 'not_connected',
  RumConnectivityStatus.maybe: 'maybe',
};

RumCellular _$RumCellularFromJson(Map<String, dynamic> json) => RumCellular(
      carrierName: json['carrierName'] as String,
      technology: json['technology'] as String,
    );

Map<String, dynamic> _$RumCellularToJson(RumCellular instance) =>
    <String, dynamic>{
      'carrierName': instance.carrierName,
      'technology': instance.technology,
    };

RumSession _$RumSessionFromJson(Map json) => RumSession(
      hasReplay: json['has_replay'] as bool?,
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$RumSessionToJson(RumSession instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('has_replay', instance.hasReplay);
  val['id'] = instance.id;
  val['type'] = instance.type;
  return val;
}

RumDevice _$RumDeviceFromJson(Map json) => RumDevice(
      architecture: json['architecture'] as String?,
      brand: json['brand'] as String?,
      model: json['model'] as String?,
      name: json['name'] as String?,
      type: $enumDecode(_$RumDeviceTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$RumDeviceToJson(RumDevice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('architecture', instance.architecture);
  writeNotNull('brand', instance.brand);
  writeNotNull('model', instance.model);
  writeNotNull('name', instance.name);
  val['type'] = _$RumDeviceTypeEnumMap[instance.type]!;
  return val;
}

const _$RumDeviceTypeEnumMap = {
  RumDeviceType.mobile: 'mobile',
  RumDeviceType.desktop: 'desktop',
  RumDeviceType.tablet: 'tablet',
  RumDeviceType.tv: 'tv',
  RumDeviceType.gamingConsole: 'gaming_console',
  RumDeviceType.bot: 'bot',
  RumDeviceType.other: 'other',
};

RumOperatingSystem _$RumOperatingSystemFromJson(Map json) => RumOperatingSystem(
      name: json['name'] as String,
      version: json['version'] as String,
      versionMajor: json['version_major'] as String,
    );

Map<String, dynamic> _$RumOperatingSystemToJson(RumOperatingSystem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'version_major': instance.versionMajor,
    };

RumUser _$RumUserFromJson(Map json) => RumUser(
      email: json['email'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      usrInfo: json['usr_info'] == null
          ? const {}
          : attributesFromJson(json['usr_info'] as Map?),
    );

Map<String, dynamic> _$RumUserToJson(RumUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  val['usr_info'] = instance.usrInfo;
  return val;
}

RumViewDetails _$RumViewDetailsFromJson(Map json) => RumViewDetails(
      action:
          RumCount.fromJson(Map<String, dynamic>.from(json['action'] as Map)),
      cpuTicksCount: (json['cpu_ticks_count'] as num?)?.toDouble(),
      cpuTicksPerSecond: (json['cpu_ticks_per_second'] as num?)?.toDouble(),
      crash: RumCount.fromJson(Map<String, dynamic>.from(json['crash'] as Map)),
      customTimings: (json['custom_timings'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e as int),
      ),
      error: RumCount.fromJson(Map<String, dynamic>.from(json['error'] as Map)),
      flutterBuildTime: json['flutter_build_time'] == null
          ? null
          : RumPerformanceMetric.fromJson(
              Map<String, dynamic>.from(json['flutter_build_time'] as Map)),
      flutterRasterTime: json['flutter_raster_time'] == null
          ? null
          : RumPerformanceMetric.fromJson(
              Map<String, dynamic>.from(json['flutter_raster_time'] as Map)),
      frozenFrame: json['frozen_frame'] == null
          ? null
          : RumCount.fromJson(
              Map<String, dynamic>.from(json['frozen_frame'] as Map)),
      frustration: json['frustration'] == null
          ? null
          : RumCount.fromJson(
              Map<String, dynamic>.from(json['frustration'] as Map)),
      id: json['id'] as String,
      isActive: json['is_active'] as bool?,
      isSlowRendered: json['is_slow_rendered'] as bool?,
      longTask: json['long_task'] == null
          ? null
          : RumCount.fromJson(
              Map<String, dynamic>.from(json['long_task'] as Map)),
      memoryAverage: (json['memory_average'] as num?)?.toDouble(),
      memoryMax: (json['memory_max'] as num?)?.toDouble(),
      name: json['name'] as String?,
      referrer: json['referrer'] as String?,
      refreshRateAverage: (json['refresh_rate_average'] as num?)?.toDouble(),
      refreshRateMin: (json['refresh_rate_min'] as num?)?.toDouble(),
      resource:
          RumCount.fromJson(Map<String, dynamic>.from(json['resource'] as Map)),
      timeSpent: json['time_spent'] as int,
      url: json['url'] as String,
    );

Map<String, dynamic> _$RumViewDetailsToJson(RumViewDetails instance) {
  final val = <String, dynamic>{
    'action': instance.action.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cpu_ticks_count', instance.cpuTicksCount);
  writeNotNull('cpu_ticks_per_second', instance.cpuTicksPerSecond);
  val['crash'] = instance.crash.toJson();
  writeNotNull('custom_timings', instance.customTimings);
  val['error'] = instance.error.toJson();
  writeNotNull('flutter_build_time', instance.flutterBuildTime?.toJson());
  writeNotNull('flutter_raster_time', instance.flutterRasterTime?.toJson());
  writeNotNull('frozen_frame', instance.frozenFrame?.toJson());
  writeNotNull('frustration', instance.frustration?.toJson());
  val['id'] = instance.id;
  writeNotNull('is_active', instance.isActive);
  writeNotNull('is_slow_rendered', instance.isSlowRendered);
  writeNotNull('long_task', instance.longTask?.toJson());
  writeNotNull('memory_average', instance.memoryAverage);
  writeNotNull('memory_max', instance.memoryMax);
  writeNotNull('name', instance.name);
  writeNotNull('referrer', instance.referrer);
  writeNotNull('refresh_rate_average', instance.refreshRateAverage);
  writeNotNull('refresh_rate_min', instance.refreshRateMin);
  val['resource'] = instance.resource.toJson();
  val['time_spent'] = instance.timeSpent;
  val['url'] = instance.url;
  return val;
}

RumCount _$RumCountFromJson(Map json) => RumCount(
      count: json['count'] as int,
    );

Map<String, dynamic> _$RumCountToJson(RumCount instance) => <String, dynamic>{
      'count': instance.count,
    };

RumPerformanceMetric _$RumPerformanceMetricFromJson(Map json) =>
    RumPerformanceMetric(
      average: (json['average'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      metricMax: (json['metric_max'] as num?)?.toDouble(),
      min: (json['min'] as num).toDouble(),
    );

Map<String, dynamic> _$RumPerformanceMetricToJson(
    RumPerformanceMetric instance) {
  final val = <String, dynamic>{
    'average': instance.average,
    'max': instance.max,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metric_max', instance.metricMax);
  val['min'] = instance.min;
  return val;
}

RumActionEvent _$RumActionEventFromJson(Map json) => RumActionEvent(
      action:
          RumAction.fromJson(Map<String, dynamic>.from(json['action'] as Map)),
      application: RumApplication.fromJson(
          Map<String, dynamic>.from(json['application'] as Map)),
      connectivity: json['connectivity'] == null
          ? null
          : RumConnectivity.fromJson(
              Map<String, dynamic>.from(json['connectivity'] as Map)),
      date: json['date'] as int,
      device: json['device'] == null
          ? null
          : RumDevice.fromJson(
              Map<String, dynamic>.from(json['device'] as Map)),
      os: json['os'] == null
          ? null
          : RumOperatingSystem.fromJson(
              Map<String, dynamic>.from(json['os'] as Map)),
      service: json['service'] as String?,
      session: RumSession.fromJson(
          Map<String, dynamic>.from(json['session'] as Map)),
      usr: json['usr'] == null
          ? null
          : RumUser.fromJson(Map<String, dynamic>.from(json['usr'] as Map)),
      version: json['version'] as String?,
      view: RumViewSummary.fromJson(
          Map<String, dynamic>.from(json['view'] as Map)),
      context: attributesFromJson(json['context'] as Map?),
    );

Map<String, dynamic> _$RumActionEventToJson(RumActionEvent instance) {
  final val = <String, dynamic>{
    'action': instance.action.toJson(),
    'application': instance.application.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('connectivity', instance.connectivity?.toJson());
  val['date'] = instance.date;
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('os', instance.os?.toJson());
  writeNotNull('service', instance.service);
  val['session'] = instance.session.toJson();
  writeNotNull('usr', instance.usr?.toJson());
  writeNotNull('version', instance.version);
  val['view'] = instance.view.toJson();
  val['context'] = instance.context;
  return val;
}

RumAction _$RumActionFromJson(Map json) => RumAction(
      crash: json['crash'] == null
          ? null
          : RumCount.fromJson(Map<String, dynamic>.from(json['crash'] as Map)),
      error: json['error'] == null
          ? null
          : RumCount.fromJson(Map<String, dynamic>.from(json['error'] as Map)),
      frustration: json['frustration'] == null
          ? null
          : RumActionFrustration.fromJson(
              Map<String, dynamic>.from(json['frustration'] as Map)),
      id: json['id'] as String?,
      loadingTime: json['loading_time'] as int?,
      longTask: json['long_task'] == null
          ? null
          : RumCount.fromJson(
              Map<String, dynamic>.from(json['long_task'] as Map)),
      resource: json['resource'] == null
          ? null
          : RumCount.fromJson(
              Map<String, dynamic>.from(json['resource'] as Map)),
      target: json['target'] == null
          ? null
          : RumActionTarget.fromJson(
              Map<String, dynamic>.from(json['target'] as Map)),
      type: $enumDecode(_$RumActionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$RumActionToJson(RumAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('crash', instance.crash?.toJson());
  writeNotNull('error', instance.error?.toJson());
  writeNotNull('frustration', instance.frustration?.toJson());
  writeNotNull('id', instance.id);
  writeNotNull('loading_time', instance.loadingTime);
  writeNotNull('long_task', instance.longTask?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  writeNotNull('target', instance.target?.toJson());
  val['type'] = _$RumActionTypeEnumMap[instance.type]!;
  return val;
}

const _$RumActionTypeEnumMap = {
  RumActionType.custom: 'custom',
  RumActionType.click: 'click',
  RumActionType.tap: 'tap',
  RumActionType.scroll: 'scroll',
  RumActionType.swipe: 'swipe',
  RumActionType.applicationStart: 'application_start',
  RumActionType.back: 'back',
};

RumActionTarget _$RumActionTargetFromJson(Map<String, dynamic> json) =>
    RumActionTarget(
      name: json['name'] as String,
    );

Map<String, dynamic> _$RumActionTargetToJson(RumActionTarget instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

RumViewSummary _$RumViewSummaryFromJson(Map json) => RumViewSummary(
      id: json['id'] as String,
      inForeground: json['in_foreground'] as bool?,
      name: json['name'] as String?,
      referrer: json['referrer'] as String?,
      url: json['url'] as String,
    );

Map<String, dynamic> _$RumViewSummaryToJson(RumViewSummary instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('in_foreground', instance.inForeground);
  writeNotNull('name', instance.name);
  writeNotNull('referrer', instance.referrer);
  val['url'] = instance.url;
  return val;
}

RumActionFrustration _$RumActionFrustrationFromJson(Map json) =>
    RumActionFrustration(
      type: (json['type'] as List<dynamic>)
          .map((e) => $enumDecode(_$RumFrustrationTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$RumActionFrustrationToJson(
        RumActionFrustration instance) =>
    <String, dynamic>{
      'type':
          instance.type.map((e) => _$RumFrustrationTypeEnumMap[e]!).toList(),
    };

const _$RumFrustrationTypeEnumMap = {
  RumFrustrationType.rageClick: 'rage_click',
  RumFrustrationType.deadClick: 'dead_click',
  RumFrustrationType.errorClick: 'error_click',
  RumFrustrationType.rageTap: 'rage_tap',
  RumFrustrationType.errorTap: 'error_tap',
};

RumResource _$RumResourceFromJson(Map json) => RumResource(
      duration: json['duration'] as int,
      id: json['id'] as String?,
      method: json['method'] as String,
      size: json['size'] as int?,
      statusCode: json['status_code'] as int?,
      type: $enumDecode(_$RumResourceTypeEnumMap, json['type']),
      url: json['url'] as String,
    );

Map<String, dynamic> _$RumResourceToJson(RumResource instance) {
  final val = <String, dynamic>{
    'duration': instance.duration,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['method'] = instance.method;
  writeNotNull('size', instance.size);
  writeNotNull('status_code', instance.statusCode);
  val['type'] = _$RumResourceTypeEnumMap[instance.type]!;
  val['url'] = instance.url;
  return val;
}

const _$RumResourceTypeEnumMap = {
  RumResourceType.document: 'document',
  RumResourceType.image: 'image',
  RumResourceType.xhr: 'xhr',
  RumResourceType.beacon: 'beacon',
  RumResourceType.css: 'css',
  RumResourceType.fetch: 'fetch',
  RumResourceType.font: 'font',
  RumResourceType.js: 'js',
  RumResourceType.media: 'media',
  RumResourceType.other: 'other',
  RumResourceType.native: 'native',
};

RumResourceEvent _$RumResourceEventFromJson(Map json) => RumResourceEvent(
      action: json['action'] == null
          ? null
          : RumActionId.fromJson(
              Map<String, dynamic>.from(json['action'] as Map)),
      application: RumApplication.fromJson(
          Map<String, dynamic>.from(json['application'] as Map)),
      connectivity: json['connectivity'] == null
          ? null
          : RumConnectivity.fromJson(
              Map<String, dynamic>.from(json['connectivity'] as Map)),
      date: json['date'] as int,
      device: json['device'] == null
          ? null
          : RumDevice.fromJson(
              Map<String, dynamic>.from(json['device'] as Map)),
      os: json['os'] == null
          ? null
          : RumOperatingSystem.fromJson(
              Map<String, dynamic>.from(json['os'] as Map)),
      service: json['service'] as String?,
      resource: RumResource.fromJson(
          Map<String, dynamic>.from(json['resource'] as Map)),
      usr: json['usr'] == null
          ? null
          : RumUser.fromJson(Map<String, dynamic>.from(json['usr'] as Map)),
      version: json['version'] as String?,
      view: json['view'] == null
          ? null
          : RumViewSummary.fromJson(
              Map<String, dynamic>.from(json['view'] as Map)),
      context: attributesFromJson(json['context'] as Map?),
    );

Map<String, dynamic> _$RumResourceEventToJson(RumResourceEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action?.toJson());
  val['application'] = instance.application.toJson();
  writeNotNull('connectivity', instance.connectivity?.toJson());
  val['date'] = instance.date;
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('os', instance.os?.toJson());
  val['resource'] = instance.resource.toJson();
  writeNotNull('service', instance.service);
  writeNotNull('usr', instance.usr?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('view', instance.view?.toJson());
  val['context'] = instance.context;
  return val;
}

RumErrorEvent _$RumErrorEventFromJson(Map json) => RumErrorEvent(
      action: json['action'] == null
          ? null
          : RumActionId.fromJson(
              Map<String, dynamic>.from(json['action'] as Map)),
      application: RumApplication.fromJson(
          Map<String, dynamic>.from(json['application'] as Map)),
      connectivity: json['connectivity'] == null
          ? null
          : RumConnectivity.fromJson(
              Map<String, dynamic>.from(json['connectivity'] as Map)),
      date: json['date'] as int,
      device: json['device'] == null
          ? null
          : RumDevice.fromJson(
              Map<String, dynamic>.from(json['device'] as Map)),
      error: RumError.fromJson(Map<String, dynamic>.from(json['error'] as Map)),
      os: json['os'] == null
          ? null
          : RumOperatingSystem.fromJson(
              Map<String, dynamic>.from(json['os'] as Map)),
      service: json['service'] as String?,
      session: RumSession.fromJson(
          Map<String, dynamic>.from(json['session'] as Map)),
      usr: json['usr'] == null
          ? null
          : RumUser.fromJson(Map<String, dynamic>.from(json['usr'] as Map)),
      version: json['version'] as String?,
      view: RumViewSummary.fromJson(
          Map<String, dynamic>.from(json['view'] as Map)),
      context: attributesFromJson(json['context'] as Map?),
    );

Map<String, dynamic> _$RumErrorEventToJson(RumErrorEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action?.toJson());
  val['application'] = instance.application.toJson();
  writeNotNull('connectivity', instance.connectivity?.toJson());
  val['date'] = instance.date;
  writeNotNull('device', instance.device?.toJson());
  val['error'] = instance.error.toJson();
  writeNotNull('os', instance.os?.toJson());
  writeNotNull('service', instance.service);
  val['session'] = instance.session.toJson();
  writeNotNull('usr', instance.usr?.toJson());
  writeNotNull('version', instance.version);
  val['view'] = instance.view.toJson();
  val['context'] = instance.context;
  return val;
}

RumActionId _$RumActionIdFromJson(Map json) => RumActionId(
      id: actionListFromJson(json['id']),
    );

Map<String, dynamic> _$RumActionIdToJson(RumActionId instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

RumError _$RumErrorFromJson(Map json) => RumError(
      causes: (json['causes'] as List<dynamic>?)
          ?.map((e) =>
              RumErrorCause.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      handling:
          $enumDecodeNullable(_$RumErrorHandlingEnumMap, json['handling']),
      handlingStack: json['handling_stack'] as String?,
      id: json['id'] as String?,
      isCrash: json['is_crash'] as bool?,
      message: json['message'] as String,
      resource: json['resource'] == null
          ? null
          : RumResourceSummary.fromJson(
              Map<String, dynamic>.from(json['resource'] as Map)),
      source: $enumDecode(_$RumErrorSourceEnumMap, json['source']),
      sourceType: json['source_type'] as String?,
      stack: json['stack'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$RumErrorToJson(RumError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('causes', instance.causes?.map((e) => e.toJson()).toList());
  writeNotNull('handling', _$RumErrorHandlingEnumMap[instance.handling]);
  writeNotNull('handling_stack', instance.handlingStack);
  writeNotNull('id', instance.id);
  writeNotNull('is_crash', instance.isCrash);
  val['message'] = instance.message;
  writeNotNull('resource', instance.resource?.toJson());
  val['source'] = _$RumErrorSourceEnumMap[instance.source]!;
  writeNotNull('source_type', instance.sourceType);
  writeNotNull('stack', instance.stack);
  writeNotNull('type', instance.type);
  return val;
}

const _$RumErrorHandlingEnumMap = {
  RumErrorHandling.handled: 'handled',
  RumErrorHandling.unhandled: 'unhandled',
};

const _$RumErrorSourceEnumMap = {
  RumErrorSource.source: 'source',
  RumErrorSource.network: 'network',
  RumErrorSource.webview: 'webview',
  RumErrorSource.console: 'console',
  RumErrorSource.custom: 'custom',
};

RumErrorCause _$RumErrorCauseFromJson(Map json) => RumErrorCause(
      message: json['message'] as String,
      source: $enumDecode(_$RumErrorSourceEnumMap, json['source']),
      stack: json['stack'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$RumErrorCauseToJson(RumErrorCause instance) {
  final val = <String, dynamic>{
    'message': instance.message,
    'source': _$RumErrorSourceEnumMap[instance.source]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stack', instance.stack);
  writeNotNull('type', instance.type);
  return val;
}

RumResourceSummary _$RumResourceSummaryFromJson(Map json) => RumResourceSummary(
      method: json['method'] as String,
      statusCode: json['status_code'] as int,
      url: json['url'] as String,
    );

Map<String, dynamic> _$RumResourceSummaryToJson(RumResourceSummary instance) =>
    <String, dynamic>{
      'method': instance.method,
      'status_code': instance.statusCode,
      'url': instance.url,
    };

RumLongTaskEvent _$RumLongTaskEventFromJson(Map json) => RumLongTaskEvent(
      action: json['action'] == null
          ? null
          : RumActionId.fromJson(
              Map<String, dynamic>.from(json['action'] as Map)),
      application: RumApplication.fromJson(
          Map<String, dynamic>.from(json['application'] as Map)),
      connectivity: json['connectivity'] == null
          ? null
          : RumConnectivity.fromJson(
              Map<String, dynamic>.from(json['connectivity'] as Map)),
      date: json['date'] as int,
      device: json['device'] == null
          ? null
          : RumDevice.fromJson(
              Map<String, dynamic>.from(json['device'] as Map)),
      longTask: RumLongTask.fromJson(
          Map<String, dynamic>.from(json['long_task'] as Map)),
      os: json['os'] == null
          ? null
          : RumOperatingSystem.fromJson(
              Map<String, dynamic>.from(json['os'] as Map)),
      service: json['service'] as String?,
      session: RumSession.fromJson(
          Map<String, dynamic>.from(json['session'] as Map)),
      usr: json['usr'] == null
          ? null
          : RumUser.fromJson(Map<String, dynamic>.from(json['usr'] as Map)),
      version: json['version'] as String?,
      view: RumViewSummary.fromJson(
          Map<String, dynamic>.from(json['view'] as Map)),
      context: attributesFromJson(json['context'] as Map?),
    );

Map<String, dynamic> _$RumLongTaskEventToJson(RumLongTaskEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action?.toJson());
  val['application'] = instance.application.toJson();
  writeNotNull('connectivity', instance.connectivity?.toJson());
  val['date'] = instance.date;
  writeNotNull('device', instance.device?.toJson());
  val['long_task'] = instance.longTask.toJson();
  writeNotNull('os', instance.os?.toJson());
  writeNotNull('service', instance.service);
  val['session'] = instance.session.toJson();
  writeNotNull('usr', instance.usr?.toJson());
  writeNotNull('version', instance.version);
  val['view'] = instance.view.toJson();
  val['context'] = instance.context;
  return val;
}

RumLongTask _$RumLongTaskFromJson(Map json) => RumLongTask(
      duration: json['duration'] as int,
      id: json['id'] as String?,
      isFrozenFrame: json['is_frozen_frame'] as bool?,
    );

Map<String, dynamic> _$RumLongTaskToJson(RumLongTask instance) {
  final val = <String, dynamic>{
    'duration': instance.duration,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('is_frozen_frame', instance.isFrozenFrame);
  return val;
}
