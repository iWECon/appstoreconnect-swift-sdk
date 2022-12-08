// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appStoreVersionSubmissions: AppStoreVersionSubmissions {
		AppStoreVersionSubmissions(path: path + "/appStoreVersionSubmissions")
	}

	public struct AppStoreVersionSubmissions {
		/// Path: `/v1/appStoreVersionSubmissions`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func post(_ body: AppStoreConnectSwiftSDK.AppStoreVersionSubmissionCreateRequest) -> Request<AppStoreConnectSwiftSDK.AppStoreVersionSubmissionResponse> {
			.post(path, body: body)
		}
	}
}
