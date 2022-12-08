// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPreviewSets {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appPreviewSets/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.AppPreviewSetResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
			public var include: [Include]?
			public var fieldsAppPreviews: [FieldsAppPreviews]?
			public var limitAppPreviews: Int?

			public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appPreviews
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case previewType
			}

			public enum Include: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appPreviews
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
			}

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

			public init(fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, include: [Include]? = nil, fieldsAppPreviews: [FieldsAppPreviews]? = nil, limitAppPreviews: Int? = nil) {
				self.fieldsAppPreviewSets = fieldsAppPreviewSets
				self.include = include
				self.fieldsAppPreviews = fieldsAppPreviews
				self.limitAppPreviews = limitAppPreviews
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppPreviews, forKey: "fields[appPreviews]")
				encoder.encode(limitAppPreviews, forKey: "limit[appPreviews]")
				return encoder.items
			}
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
