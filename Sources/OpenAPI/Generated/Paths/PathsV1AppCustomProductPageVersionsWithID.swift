// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCustomProductPageVersions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appCustomProductPageVersions/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.AppCustomProductPageVersionResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]?
			public var include: [Include]?
			public var fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]?
			public var limitAppCustomProductPageLocalizations: Int?

			public enum FieldsAppCustomProductPageVersions: String, Codable, CaseIterable {
				case appCustomProductPage
				case appCustomProductPageLocalizations
				case state
				case version
			}

			public enum Include: String, Codable, CaseIterable {
				case appCustomProductPage
				case appCustomProductPageLocalizations
			}

			public enum FieldsAppCustomProductPageLocalizations: String, Codable, CaseIterable {
				case appCustomProductPageVersion
				case appPreviewSets
				case appScreenshotSets
				case locale
				case promotionalText
			}

			public init(fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]? = nil, include: [Include]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]? = nil, limitAppCustomProductPageLocalizations: Int? = nil) {
				self.fieldsAppCustomProductPageVersions = fieldsAppCustomProductPageVersions
				self.include = include
				self.fieldsAppCustomProductPageLocalizations = fieldsAppCustomProductPageLocalizations
				self.limitAppCustomProductPageLocalizations = limitAppCustomProductPageLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppCustomProductPageVersions, forKey: "fields[appCustomProductPageVersions]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppCustomProductPageLocalizations, forKey: "fields[appCustomProductPageLocalizations]")
				encoder.encode(limitAppCustomProductPageLocalizations, forKey: "limit[appCustomProductPageLocalizations]")
				return encoder.items
			}
		}
	}
}
