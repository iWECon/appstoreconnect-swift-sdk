// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var promotedPurchaseImages: PromotedPurchaseImages {
		PromotedPurchaseImages(path: path + "/promotedPurchaseImages")
	}

	public struct PromotedPurchaseImages {
		/// Path: `/v1/promotedPurchaseImages`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.PromotedPurchaseImageCreateRequest) -> Request<AppStoreConnectSwiftSDK.PromotedPurchaseImageResponse> {
			.post(path, body: body)
		}
	}
}
