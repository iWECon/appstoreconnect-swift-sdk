// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersionLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appStoreVersionLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.AppStoreVersionLocalizationResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?
			public var include: [Include]?
			public var fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?
			public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
			public var limitAppPreviewSets: Int?
			public var limitAppScreenshotSets: Int?

			public enum FieldsAppStoreVersionLocalizations: String, Codable, CaseIterable {
				case appPreviewSets
				case appScreenshotSets
				case appStoreVersion
				case description
				case keywords
				case locale
				case marketingURL = "marketingUrl"
				case promotionalText
				case supportURL = "supportUrl"
				case whatsNew
			}

			public enum Include: String, Codable, CaseIterable {
				case appPreviewSets
				case appScreenshotSets
				case appStoreVersion
			}

			public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appScreenshots
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case screenshotDisplayType
			}

			public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appPreviews
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case previewType
			}

			public init(fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, include: [Include]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, limitAppPreviewSets: Int? = nil, limitAppScreenshotSets: Int? = nil) {
				self.fieldsAppStoreVersionLocalizations = fieldsAppStoreVersionLocalizations
				self.include = include
				self.fieldsAppScreenshotSets = fieldsAppScreenshotSets
				self.fieldsAppPreviewSets = fieldsAppPreviewSets
				self.limitAppPreviewSets = limitAppPreviewSets
				self.limitAppScreenshotSets = limitAppScreenshotSets
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
				encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
				encoder.encode(limitAppPreviewSets, forKey: "limit[appPreviewSets]")
				encoder.encode(limitAppScreenshotSets, forKey: "limit[appScreenshotSets]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnectSwiftSDK.AppStoreVersionLocalizationUpdateRequest) -> Request<AppStoreConnectSwiftSDK.AppStoreVersionLocalizationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
