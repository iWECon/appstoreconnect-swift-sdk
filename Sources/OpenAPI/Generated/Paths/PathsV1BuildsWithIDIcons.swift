// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID {
	public var icons: Icons {
		Icons(path: path + "/icons")
	}

	public struct Icons {
		/// Path: `/v1/builds/{id}/icons`
		public let path: String

		public func get(fieldsBuildIcons: [FieldsBuildIcons]? = nil, limit: Int? = nil) -> Request<AppStoreConnectSwiftSDK.BuildIconsResponse> {
			.get(path, query: makeGetQuery(fieldsBuildIcons, limit))
		}

		private func makeGetQuery(_ fieldsBuildIcons: [FieldsBuildIcons]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsBuildIcons, forKey: "fields[buildIcons]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsBuildIcons: String, Codable, CaseIterable {
			case iconAsset
			case iconType
			case name
		}
	}
}
