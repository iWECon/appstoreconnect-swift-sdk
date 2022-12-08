// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appCustomProductPages: AppCustomProductPages {
		AppCustomProductPages(path: path + "/appCustomProductPages")
	}

	public struct AppCustomProductPages {
		/// Path: `/v1/appCustomProductPages`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.AppCustomProductPageCreateRequest) -> Request<AppStoreConnectSwiftSDK.AppCustomProductPageResponse> {
			.post(path, body: body)
		}
	}
}
