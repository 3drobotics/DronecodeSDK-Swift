// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: core.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Mavsdk_Rpc_Core_SubscribeConnectionStateRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Mavsdk_Rpc_Core_ConnectionStateResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Connection state
  var connectionState: Mavsdk_Rpc_Core_ConnectionState {
    get {return _storage._connectionState ?? Mavsdk_Rpc_Core_ConnectionState()}
    set {_uniqueStorage()._connectionState = newValue}
  }
  /// Returns true if `connectionState` has been explicitly set.
  var hasConnectionState: Bool {return _storage._connectionState != nil}
  /// Clears the value of `connectionState`. Subsequent reads from it will return its default value.
  mutating func clearConnectionState() {_uniqueStorage()._connectionState = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Mavsdk_Rpc_Core_ListRunningPluginsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Mavsdk_Rpc_Core_ListRunningPluginsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Plugin info
  var pluginInfo: [Mavsdk_Rpc_Core_PluginInfo] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Connection state type.
struct Mavsdk_Rpc_Core_ConnectionState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// UUID of the vehicle
  var uuid: UInt64 = 0

  /// Whether the vehicle got connected or disconnected
  var isConnected: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Plugin info type.
struct Mavsdk_Rpc_Core_PluginInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Name of the plugin
  var name: String = String()

  /// Address where the plugin is running
  var address: String = String()

  /// Port where the plugin is running
  var port: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "mavsdk.rpc.core"

extension Mavsdk_Rpc_Core_SubscribeConnectionStateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SubscribeConnectionStateRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Core_SubscribeConnectionStateRequest, rhs: Mavsdk_Rpc_Core_SubscribeConnectionStateRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Core_ConnectionStateResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ConnectionStateResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "connection_state"),
  ]

  fileprivate class _StorageClass {
    var _connectionState: Mavsdk_Rpc_Core_ConnectionState? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _connectionState = source._connectionState
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._connectionState)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._connectionState {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Core_ConnectionStateResponse, rhs: Mavsdk_Rpc_Core_ConnectionStateResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._connectionState != rhs_storage._connectionState {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Core_ListRunningPluginsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ListRunningPluginsRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Core_ListRunningPluginsRequest, rhs: Mavsdk_Rpc_Core_ListRunningPluginsRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Core_ListRunningPluginsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ListRunningPluginsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "plugin_info"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.pluginInfo)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.pluginInfo.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.pluginInfo, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Core_ListRunningPluginsResponse, rhs: Mavsdk_Rpc_Core_ListRunningPluginsResponse) -> Bool {
    if lhs.pluginInfo != rhs.pluginInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Core_ConnectionState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ConnectionState"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .standard(proto: "is_connected"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.uuid)
      case 2: try decoder.decodeSingularBoolField(value: &self.isConnected)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.uuid != 0 {
      try visitor.visitSingularUInt64Field(value: self.uuid, fieldNumber: 1)
    }
    if self.isConnected != false {
      try visitor.visitSingularBoolField(value: self.isConnected, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Core_ConnectionState, rhs: Mavsdk_Rpc_Core_ConnectionState) -> Bool {
    if lhs.uuid != rhs.uuid {return false}
    if lhs.isConnected != rhs.isConnected {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Core_PluginInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PluginInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "address"),
    3: .same(proto: "port"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.address)
      case 3: try decoder.decodeSingularInt32Field(value: &self.port)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 2)
    }
    if self.port != 0 {
      try visitor.visitSingularInt32Field(value: self.port, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Core_PluginInfo, rhs: Mavsdk_Rpc_Core_PluginInfo) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.address != rhs.address {return false}
    if lhs.port != rhs.port {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
