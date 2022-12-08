// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var endUserLicenseAgreements: EndUserLicenseAgreements {
		EndUserLicenseAgreements(path: path + "/endUserLicenseAgreements")
	}

	public struct EndUserLicenseAgreements {
		/// Path: `/v1/endUserLicenseAgreements`
		public let path: String

		public func post(_ body: AppStoreConnectSwiftSDK.EndUserLicenseAgreementCreateRequest) -> Request<AppStoreConnectSwiftSDK.EndUserLicenseAgreementResponse> {
			.post(path, body: body)
		}
	}
}
