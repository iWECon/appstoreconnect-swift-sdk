// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptions: Subscriptions {
		Subscriptions(path: path + "/subscriptions")
	}

	public struct Subscriptions {
		/// Path: `/v1/subscriptions`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.SubscriptionCreateRequest) -> Request<AppStoreConnectSwiftSDK.SubscriptionResponse> {
			.post(path, body: body)
		}
	}
}
