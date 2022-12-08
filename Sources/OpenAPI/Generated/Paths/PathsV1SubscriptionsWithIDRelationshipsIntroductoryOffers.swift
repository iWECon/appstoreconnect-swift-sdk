// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID.Relationships {
	public var introductoryOffers: IntroductoryOffers {
		IntroductoryOffers(path: path + "/introductoryOffers")
	}

	public struct IntroductoryOffers {
		/// Path: `/v1/subscriptions/{id}/relationships/introductoryOffers`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnectSwiftSDK.SubscriptionIntroductoryOffersLinkagesResponse> {
			.get(path, query: makeGetQuery(limit))
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func delete(_ body: AppStoreConnectSwiftSDK.SubscriptionIntroductoryOffersLinkagesRequest) -> Request<Void> {
			.delete(path, body: body)
		}
	}
}
