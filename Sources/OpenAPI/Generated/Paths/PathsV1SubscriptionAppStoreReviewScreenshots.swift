// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionAppStoreReviewScreenshots: SubscriptionAppStoreReviewScreenshots {
		SubscriptionAppStoreReviewScreenshots(path: path + "/subscriptionAppStoreReviewScreenshots")
	}

	public struct SubscriptionAppStoreReviewScreenshots {
		/// Path: `/v1/subscriptionAppStoreReviewScreenshots`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.SubscriptionAppStoreReviewScreenshotCreateRequest) -> Request<AppStoreConnectSwiftSDK.SubscriptionAppStoreReviewScreenshotResponse> {
			.post(path, body: body)
		}
	}
}
