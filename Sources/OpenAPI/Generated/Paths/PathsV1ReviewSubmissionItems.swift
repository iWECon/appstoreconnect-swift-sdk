// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var reviewSubmissionItems: ReviewSubmissionItems {
		ReviewSubmissionItems(path: path + "/reviewSubmissionItems")
	}

	public struct ReviewSubmissionItems {
		/// Path: `/v1/reviewSubmissionItems`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.ReviewSubmissionItemCreateRequest) -> Request<AppStoreConnectSwiftSDK.ReviewSubmissionItemResponse> {
			.post(path, body: body)
		}
	}
}
