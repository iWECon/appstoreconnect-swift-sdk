// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BundleIDCapabilities {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/bundleIdCapabilities/{id}`
		public let path: String

		public func patch(_ body: AppStoreConnectSwiftSDK.BundleIDCapabilityUpdateRequest) -> Request<AppStoreConnectSwiftSDK.BundleIDCapabilityResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
