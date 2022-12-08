// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Users.WithID.Relationships {
	public var visibleApps: VisibleApps {
		VisibleApps(path: path + "/visibleApps")
	}

	public struct VisibleApps {
		/// Path: `/v1/users/{id}/relationships/visibleApps`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnectSwiftSDK.UserVisibleAppsLinkagesResponse> {
			.get(path, query: makeGetQuery(limit))
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func post(_ body: AppStoreConnectSwiftSDK.UserVisibleAppsLinkagesRequest) -> Request<Void> {
			.post(path, body: body)
		}

		public func patch(_ body: AppStoreConnectSwiftSDK.UserVisibleAppsLinkagesRequest) -> Request<Void> {
			.patch(path, body: body)
		}

		public func delete(_ body: AppStoreConnectSwiftSDK.UserVisibleAppsLinkagesRequest) -> Request<Void> {
			.delete(path, body: body)
		}
	}
}
