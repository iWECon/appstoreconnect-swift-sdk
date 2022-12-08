// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.PromotedPurchases.WithID {
	public var promotionImages: PromotionImages {
		PromotionImages(path: path + "/promotionImages")
	}

	public struct PromotionImages {
		/// Path: `/v1/promotedPurchases/{id}/promotionImages`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.PromotedPurchaseImagesResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
			public var fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
				case app
				case enabled
				case inAppPurchaseV2
				case promotionImages
				case state
				case subscription
				case visibleForAllUsers
			}

			public enum FieldsPromotedPurchaseImages: String, Codable, CaseIterable {
				case assetToken
				case assetType
				case fileName
				case fileSize
				case imageAsset
				case promotedPurchase
				case sourceFileChecksum
				case state
				case uploadOperations
				case uploaded
			}

			public enum Include: String, Codable, CaseIterable {
				case promotedPurchase
			}

			public init(fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsPromotedPurchases = fieldsPromotedPurchases
				self.fieldsPromotedPurchaseImages = fieldsPromotedPurchaseImages
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
				encoder.encode(fieldsPromotedPurchaseImages, forKey: "fields[promotedPurchaseImages]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
