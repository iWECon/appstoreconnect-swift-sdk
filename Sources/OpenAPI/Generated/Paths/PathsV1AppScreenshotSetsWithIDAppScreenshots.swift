// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppScreenshotSets.WithID {
	public var appScreenshots: AppScreenshots {
		AppScreenshots(path: path + "/appScreenshots")
	}

	public struct AppScreenshots {
		/// Path: `/v1/appScreenshotSets/{id}/appScreenshots`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.AppScreenshotsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?
			public var fieldsAppScreenshots: [FieldsAppScreenshots]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appScreenshots
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case screenshotDisplayType
			}

			public enum FieldsAppScreenshots: String, Codable, CaseIterable {
				case appScreenshotSet
				case assetDeliveryState
				case assetToken
				case assetType
				case fileName
				case fileSize
				case imageAsset
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public enum Include: String, Codable, CaseIterable {
				case appScreenshotSet
			}

			public init(fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppScreenshotSets = fieldsAppScreenshotSets
				self.fieldsAppScreenshots = fieldsAppScreenshots
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
				encoder.encode(fieldsAppScreenshots, forKey: "fields[appScreenshots]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
