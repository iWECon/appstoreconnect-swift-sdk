// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPreviewSets.WithID {
	public var appPreviews: AppPreviews {
		AppPreviews(path: path + "/appPreviews")
	}

	public struct AppPreviews {
		/// Path: `/v1/appPreviewSets/{id}/appPreviews`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.AppPreviewsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppPreviews: [FieldsAppPreviews]?
			public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppPreviews: String, Codable, CaseIterable {
				case appPreviewSet
				case assetDeliveryState
				case fileName
				case fileSize
				case mimeType
				case previewFrameTimeCode
				case previewImage
				case sourceFileChecksum
				case uploadOperations
				case uploaded
				case videoURL = "videoUrl"
			}

			public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appPreviews
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case previewType
			}

			public enum Include: String, Codable, CaseIterable {
				case appPreviewSet
			}

			public init(fieldsAppPreviews: [FieldsAppPreviews]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppPreviews = fieldsAppPreviews
				self.fieldsAppPreviewSets = fieldsAppPreviewSets
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppPreviews, forKey: "fields[appPreviews]")
				encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
