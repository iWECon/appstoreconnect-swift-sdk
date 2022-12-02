// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var devices: Devices {
		Devices(path: path + "/devices")
	}

	public struct Devices {
		/// Path: `/v1/devices`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.DevicesResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterName: [String]?
			public var filterPlatform: [FilterPlatform]?
			public var filterStatus: [FilterStatus]?
			public var filterUdid: [String]?
			public var filterID: [String]?
			public var sort: [Sort]?
			public var fieldsDevices: [FieldsDevices]?
			public var limit: Int?

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
			}

			public enum FilterStatus: String, Codable, CaseIterable {
				case enabled = "ENABLED"
				case disabled = "DISABLED"
                case processing = "PROCESSING"
			}

			public enum Sort: String, Codable, CaseIterable {
				case id
				case minusid = "-id"
				case name
				case minusname = "-name"
				case platform
				case minusplatform = "-platform"
				case status
				case minusstatus = "-status"
				case udid
				case minusudid = "-udid"
			}

			public enum FieldsDevices: String, Codable, CaseIterable {
				case addedDate
				case deviceClass
				case model
				case name
				case platform
				case status
				case udid
			}

			public init(filterName: [String]? = nil, filterPlatform: [FilterPlatform]? = nil, filterStatus: [FilterStatus]? = nil, filterUdid: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsDevices: [FieldsDevices]? = nil, limit: Int? = nil) {
				self.filterName = filterName
				self.filterPlatform = filterPlatform
				self.filterStatus = filterStatus
				self.filterUdid = filterUdid
				self.filterID = filterID
				self.sort = sort
				self.fieldsDevices = fieldsDevices
				self.limit = limit
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterName, forKey: "filter[name]")
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterStatus, forKey: "filter[status]")
				encoder.encode(filterUdid, forKey: "filter[udid]")
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsDevices, forKey: "fields[devices]")
				encoder.encode(limit, forKey: "limit")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.DeviceCreateRequest) -> Request<AppStoreConnect_Swift_SDK.DeviceResponse> {
			.post(path, body: body)
		}
	}
}
