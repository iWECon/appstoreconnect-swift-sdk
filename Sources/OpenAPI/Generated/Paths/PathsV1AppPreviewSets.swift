// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appPreviewSets: AppPreviewSets {
		AppPreviewSets(path: path + "/appPreviewSets")
	}

	public struct AppPreviewSets {
		/// Path: `/v1/appPreviewSets`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.AppPreviewSetCreateRequest) -> Request<AppStoreConnectSwiftSDK.AppPreviewSetResponse> {
			.post(path, body: body)
		}
	}
}
