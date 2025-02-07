// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appEvents: AppEvents {
		AppEvents(path: path + "/appEvents")
	}

	public struct AppEvents {
		/// Path: `/v1/appEvents`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.AppEventCreateRequest) -> Request<AppStoreConnectSwiftSDK.AppEventResponse> {
			.post(path, body: body)
		}
	}
}
