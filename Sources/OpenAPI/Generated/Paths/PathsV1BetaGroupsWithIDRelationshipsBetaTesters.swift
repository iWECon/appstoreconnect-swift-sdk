// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaGroups.WithID.Relationships {
	public var betaTesters: BetaTesters {
		BetaTesters(path: path + "/betaTesters")
	}

	public struct BetaTesters {
		/// Path: `/v1/betaGroups/{id}/relationships/betaTesters`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnectSwiftSDK.BetaGroupBetaTestersLinkagesResponse> {
			.get(path, query: makeGetQuery(limit))
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func post(_ body: AppStoreConnectSwiftSDK.BetaGroupBetaTestersLinkagesRequest) -> Request<Void> {
			.post(path, body: body)
		}

		public func delete(_ body: AppStoreConnectSwiftSDK.BetaGroupBetaTestersLinkagesRequest) -> Request<Void> {
			.delete(path, body: body)
		}
	}
}
