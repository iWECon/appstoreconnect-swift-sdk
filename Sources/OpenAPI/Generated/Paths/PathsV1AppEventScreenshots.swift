// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appEventScreenshots: AppEventScreenshots {
		AppEventScreenshots(path: path + "/appEventScreenshots")
	}

	public struct AppEventScreenshots {
		/// Path: `/v1/appEventScreenshots`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.AppEventScreenshotCreateRequest) -> Request<AppStoreConnectSwiftSDK.AppEventScreenshotResponse> {
			.post(path, body: body)
		}
	}
}
