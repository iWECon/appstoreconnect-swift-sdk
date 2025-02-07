// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var betaAppClipInvocationLocalizations: BetaAppClipInvocationLocalizations {
		BetaAppClipInvocationLocalizations(path: path + "/betaAppClipInvocationLocalizations")
	}

	public struct BetaAppClipInvocationLocalizations {
		/// Path: `/v1/betaAppClipInvocationLocalizations`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.BetaAppClipInvocationLocalizationCreateRequest) -> Request<AppStoreConnectSwiftSDK.BetaAppClipInvocationLocalizationResponse> {
			.post(path, body: body)
		}
	}
}
