// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipAppStoreReviewDetails {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appClipAppStoreReviewDetails/{id}`
		public let path: String

		public func get(fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]? = nil, include: [Include]? = nil) -> Request<AppStoreConnectSwiftSDK.AppClipAppStoreReviewDetailResponse> {
			.get(path, query: makeGetQuery(fieldsAppClipAppStoreReviewDetails, include))
		}

		private func makeGetQuery(_ fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsAppClipAppStoreReviewDetails, forKey: "fields[appClipAppStoreReviewDetails]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsAppClipAppStoreReviewDetails: String, Codable, CaseIterable {
			case appClipDefaultExperience
			case invocationURLs = "invocationUrls"
		}

		public enum Include: String, Codable, CaseIterable {
			case appClipDefaultExperience
		}

		public func patch(_ body: AppStoreConnectSwiftSDK.AppClipAppStoreReviewDetailUpdateRequest) -> Request<AppStoreConnectSwiftSDK.AppClipAppStoreReviewDetailResponse> {
			.patch(path, body: body)
		}
	}
}
