// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionSubmissions: SubscriptionSubmissions {
		SubscriptionSubmissions(path: path + "/subscriptionSubmissions")
	}

	public struct SubscriptionSubmissions {
		/// Path: `/v1/subscriptionSubmissions`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.SubscriptionSubmissionCreateRequest) -> Request<AppStoreConnectSwiftSDK.SubscriptionSubmissionResponse> {
			.post(path, body: body)
		}
	}
}
