// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appClipAdvancedExperiences: AppClipAdvancedExperiences {
		AppClipAdvancedExperiences(path: path + "/appClipAdvancedExperiences")
	}

	public struct AppClipAdvancedExperiences {
		/// Path: `/v1/appClipAdvancedExperiences`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.AppClipAdvancedExperienceCreateRequest) -> Request<AppStoreConnectSwiftSDK.AppClipAdvancedExperienceResponse> {
			.post(path, body: body)
		}
	}
}
