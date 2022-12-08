// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionIntroductoryOffers: SubscriptionIntroductoryOffers {
		SubscriptionIntroductoryOffers(path: path + "/subscriptionIntroductoryOffers")
	}

	public struct SubscriptionIntroductoryOffers {
		/// Path: `/v1/subscriptionIntroductoryOffers`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.SubscriptionIntroductoryOfferCreateRequest) -> Request<AppStoreConnectSwiftSDK.SubscriptionIntroductoryOfferResponse> {
			.post(path, body: body)
		}
	}
}
