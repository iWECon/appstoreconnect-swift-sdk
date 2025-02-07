// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPreOrders {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appPreOrders/{id}`
		public let path: String

		public func get(fieldsAppPreOrders: [FieldsAppPreOrders]? = nil, include: [Include]? = nil) -> Request<AppStoreConnectSwiftSDK.AppPreOrderResponse> {
			.get(path, query: makeGetQuery(fieldsAppPreOrders, include))
		}

		private func makeGetQuery(_ fieldsAppPreOrders: [FieldsAppPreOrders]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsAppPreOrders, forKey: "fields[appPreOrders]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsAppPreOrders: String, Codable, CaseIterable {
			case app
			case appReleaseDate
			case preOrderAvailableDate
		}

		public enum Include: String, Codable, CaseIterable {
			case app
		}

		public func patch(_ body: AppStoreConnectSwiftSDK.AppPreOrderUpdateRequest) -> Request<AppStoreConnectSwiftSDK.AppPreOrderResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
