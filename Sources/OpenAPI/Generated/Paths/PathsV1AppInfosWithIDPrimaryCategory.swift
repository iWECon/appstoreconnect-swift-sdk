// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppInfos.WithID {
	public var primaryCategory: PrimaryCategory {
		PrimaryCategory(path: path + "/primaryCategory")
	}

	public struct PrimaryCategory {
		/// Path: `/v1/appInfos/{id}/primaryCategory`
		public let path: String

		public func get(fieldsAppCategories: [FieldsAppCategories]? = nil) -> Request<AppStoreConnectSwiftSDK.AppCategoryResponse> {
			.get(path, query: makeGetQuery(fieldsAppCategories))
		}

		private func makeGetQuery(_ fieldsAppCategories: [FieldsAppCategories]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]", explode: false)
			return encoder.items
		}

		public enum FieldsAppCategories: String, Codable, CaseIterable {
			case parent
			case platforms
			case subcategories
		}
	}
}
