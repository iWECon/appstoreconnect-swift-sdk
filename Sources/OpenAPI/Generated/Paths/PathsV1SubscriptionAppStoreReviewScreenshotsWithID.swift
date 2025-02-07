// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionAppStoreReviewScreenshots {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionAppStoreReviewScreenshots/{id}`
		public let path: String

		public func get(fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots]? = nil, include: [Include]? = nil) -> Request<AppStoreConnectSwiftSDK.SubscriptionAppStoreReviewScreenshotResponse> {
			.get(path, query: makeGetQuery(fieldsSubscriptionAppStoreReviewScreenshots, include))
		}

		private func makeGetQuery(_ fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsSubscriptionAppStoreReviewScreenshots, forKey: "fields[subscriptionAppStoreReviewScreenshots]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsSubscriptionAppStoreReviewScreenshots: String, Codable, CaseIterable {
			case assetDeliveryState
			case assetToken
			case assetType
			case fileName
			case fileSize
			case imageAsset
			case sourceFileChecksum
			case subscription
			case uploadOperations
			case uploaded
		}

		public enum Include: String, Codable, CaseIterable {
			case subscription
		}

		public func patch(_ body: AppStoreConnectSwiftSDK.SubscriptionAppStoreReviewScreenshotUpdateRequest) -> Request<AppStoreConnectSwiftSDK.SubscriptionAppStoreReviewScreenshotResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
