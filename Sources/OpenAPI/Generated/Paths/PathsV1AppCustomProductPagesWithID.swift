// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCustomProductPages {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appCustomProductPages/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.AppCustomProductPageResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?
			public var include: [Include]?
			public var fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]?
			public var limitAppCustomProductPageVersions: Int?

			public enum FieldsAppCustomProductPages: String, Codable, CaseIterable {
				case app
				case appCustomProductPageVersions
				case appStoreVersionTemplate
				case customProductPageTemplate
				case name
				case url
				case visible
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appCustomProductPageVersions
			}

			public enum FieldsAppCustomProductPageVersions: String, Codable, CaseIterable {
				case appCustomProductPage
				case appCustomProductPageLocalizations
				case state
				case version
			}

			public init(fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, include: [Include]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]? = nil, limitAppCustomProductPageVersions: Int? = nil) {
				self.fieldsAppCustomProductPages = fieldsAppCustomProductPages
				self.include = include
				self.fieldsAppCustomProductPageVersions = fieldsAppCustomProductPageVersions
				self.limitAppCustomProductPageVersions = limitAppCustomProductPageVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppCustomProductPageVersions, forKey: "fields[appCustomProductPageVersions]")
				encoder.encode(limitAppCustomProductPageVersions, forKey: "limit[appCustomProductPageVersions]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnectSwiftSDK.AppCustomProductPageUpdateRequest) -> Request<AppStoreConnectSwiftSDK.AppCustomProductPageResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
