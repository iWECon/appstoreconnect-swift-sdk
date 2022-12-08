// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEventScreenshots {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appEventScreenshots/{id}`
		public let path: String

		public func get(fieldsAppEventScreenshots: [FieldsAppEventScreenshots]? = nil, include: [Include]? = nil) -> Request<AppStoreConnectSwiftSDK.AppEventScreenshotResponse> {
			.get(path, query: makeGetQuery(fieldsAppEventScreenshots, include))
		}

		private func makeGetQuery(_ fieldsAppEventScreenshots: [FieldsAppEventScreenshots]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsAppEventScreenshots, forKey: "fields[appEventScreenshots]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsAppEventScreenshots: String, Codable, CaseIterable {
			case appEventAssetType
			case appEventLocalization
			case assetDeliveryState
			case assetToken
			case fileName
			case fileSize
			case imageAsset
			case uploadOperations
			case uploaded
		}

		public enum Include: String, Codable, CaseIterable {
			case appEventLocalization
		}

		public func patch(_ body: AppStoreConnectSwiftSDK.AppEventScreenshotUpdateRequest) -> Request<AppStoreConnectSwiftSDK.AppEventScreenshotResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
