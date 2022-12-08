// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BuildBundles.WithID {
	public var appClipDomainCacheStatus: AppClipDomainCacheStatus {
		AppClipDomainCacheStatus(path: path + "/appClipDomainCacheStatus")
	}

	public struct AppClipDomainCacheStatus {
		/// Path: `/v1/buildBundles/{id}/appClipDomainCacheStatus`
		public let path: String

		public func get(fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses]? = nil) -> Request<AppStoreConnectSwiftSDK.AppClipDomainStatusResponse> {
			.get(path, query: makeGetQuery(fieldsAppClipDomainStatuses))
		}

		private func makeGetQuery(_ fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppClipDomainStatuses, forKey: "fields[appClipDomainStatuses]", explode: false)
			return encoder.items
		}

		public enum FieldsAppClipDomainStatuses: String, Codable, CaseIterable {
			case domains
			case lastUpdatedDate
		}
	}
}
