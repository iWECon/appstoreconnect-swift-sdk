// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreReviewAttachments {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appStoreReviewAttachments/{id}`
		public let path: String

		public func get(fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments]? = nil, include: [Include]? = nil) -> Request<AppStoreConnectSwiftSDK.AppStoreReviewAttachmentResponse> {
			.get(path, query: makeGetQuery(fieldsAppStoreReviewAttachments, include))
		}

		private func makeGetQuery(_ fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsAppStoreReviewAttachments, forKey: "fields[appStoreReviewAttachments]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsAppStoreReviewAttachments: String, Codable, CaseIterable {
			case appStoreReviewDetail
			case assetDeliveryState
			case fileName
			case fileSize
			case sourceFileChecksum
			case uploadOperations
			case uploaded
		}

		public enum Include: String, Codable, CaseIterable {
			case appStoreReviewDetail
		}

		public func patch(_ body: AppStoreConnectSwiftSDK.AppStoreReviewAttachmentUpdateRequest) -> Request<AppStoreConnectSwiftSDK.AppStoreReviewAttachmentResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
