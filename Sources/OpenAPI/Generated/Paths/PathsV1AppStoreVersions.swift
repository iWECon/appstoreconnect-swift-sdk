// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appStoreVersions: AppStoreVersions {
		AppStoreVersions(path: path + "/appStoreVersions")
	}

	public struct AppStoreVersions {
		/// Path: `/v1/appStoreVersions`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.AppStoreVersionCreateRequest) -> Request<AppStoreConnectSwiftSDK.AppStoreVersionResponse> {
			.post(path, body: body)
		}
	}
}
