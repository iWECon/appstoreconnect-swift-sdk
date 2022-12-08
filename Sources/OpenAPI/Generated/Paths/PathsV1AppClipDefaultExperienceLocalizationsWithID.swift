// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipDefaultExperienceLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appClipDefaultExperienceLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.AppClipDefaultExperienceLocalizationResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]?
			public var include: [Include]?
			public var fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]?

			public enum FieldsAppClipDefaultExperienceLocalizations: String, Codable, CaseIterable {
				case appClipDefaultExperience
				case appClipHeaderImage
				case locale
				case subtitle
			}

			public enum Include: String, Codable, CaseIterable {
				case appClipDefaultExperience
				case appClipHeaderImage
			}

			public enum FieldsAppClipHeaderImages: String, Codable, CaseIterable {
				case appClipDefaultExperienceLocalization
				case assetDeliveryState
				case fileName
				case fileSize
				case imageAsset
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public init(fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]? = nil, include: [Include]? = nil, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]? = nil) {
				self.fieldsAppClipDefaultExperienceLocalizations = fieldsAppClipDefaultExperienceLocalizations
				self.include = include
				self.fieldsAppClipHeaderImages = fieldsAppClipHeaderImages
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppClipDefaultExperienceLocalizations, forKey: "fields[appClipDefaultExperienceLocalizations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppClipHeaderImages, forKey: "fields[appClipHeaderImages]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnectSwiftSDK.AppClipDefaultExperienceLocalizationUpdateRequest) -> Request<AppStoreConnectSwiftSDK.AppClipDefaultExperienceLocalizationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
