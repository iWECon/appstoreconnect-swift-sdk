// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaTesters.WithID.Relationships {
	public var betaGroups: BetaGroups {
		BetaGroups(path: path + "/betaGroups")
	}

	public struct BetaGroups {
		/// Path: `/v1/betaTesters/{id}/relationships/betaGroups`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnectSwiftSDK.BetaTesterBetaGroupsLinkagesResponse> {
			.get(path, query: makeGetQuery(limit))
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func post(_ body: AppStoreConnectSwiftSDK.BetaTesterBetaGroupsLinkagesRequest) -> Request<Void> {
			.post(path, body: body)
		}

		public func delete(_ body: AppStoreConnectSwiftSDK.BetaTesterBetaGroupsLinkagesRequest) -> Request<Void> {
			.delete(path, body: body)
		}
	}
}
