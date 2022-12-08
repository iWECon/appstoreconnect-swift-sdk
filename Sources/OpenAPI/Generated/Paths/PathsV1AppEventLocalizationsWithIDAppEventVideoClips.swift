// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEventLocalizations.WithID {
	public var appEventVideoClips: AppEventVideoClips {
		AppEventVideoClips(path: path + "/appEventVideoClips")
	}

	public struct AppEventVideoClips {
		/// Path: `/v1/appEventLocalizations/{id}/appEventVideoClips`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.AppEventVideoClipsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppEventVideoClips: [FieldsAppEventVideoClips]?
			public var fieldsAppEventLocalizations: [FieldsAppEventLocalizations]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppEventVideoClips: String, Codable, CaseIterable {
				case appEventAssetType
				case appEventLocalization
				case assetDeliveryState
				case fileName
				case fileSize
				case previewFrameTimeCode
				case previewImage
				case uploadOperations
				case uploaded
				case videoURL = "videoUrl"
			}

			public enum FieldsAppEventLocalizations: String, Codable, CaseIterable {
				case appEvent
				case appEventScreenshots
				case appEventVideoClips
				case locale
				case longDescription
				case name
				case shortDescription
			}

			public enum Include: String, Codable, CaseIterable {
				case appEventLocalization
			}

			public init(fieldsAppEventVideoClips: [FieldsAppEventVideoClips]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppEventVideoClips = fieldsAppEventVideoClips
				self.fieldsAppEventLocalizations = fieldsAppEventLocalizations
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppEventVideoClips, forKey: "fields[appEventVideoClips]")
				encoder.encode(fieldsAppEventLocalizations, forKey: "fields[appEventLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
