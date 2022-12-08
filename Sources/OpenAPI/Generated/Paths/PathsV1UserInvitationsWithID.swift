// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.UserInvitations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/userInvitations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.UserInvitationResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsUserInvitations: [FieldsUserInvitations]?
			public var include: [Include]?
			public var fieldsApps: [FieldsApps]?
			public var limitVisibleApps: Int?

			public enum FieldsUserInvitations: String, Codable, CaseIterable {
				case allAppsVisible
				case email
				case expirationDate
				case firstName
				case lastName
				case provisioningAllowed
				case roles
				case visibleApps
			}

			public enum Include: String, Codable, CaseIterable {
				case visibleApps
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case appClips
				case appCustomProductPages
				case appEvents
				case appInfos
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public init(fieldsUserInvitations: [FieldsUserInvitations]? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, limitVisibleApps: Int? = nil) {
				self.fieldsUserInvitations = fieldsUserInvitations
				self.include = include
				self.fieldsApps = fieldsApps
				self.limitVisibleApps = limitVisibleApps
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsUserInvitations, forKey: "fields[userInvitations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limitVisibleApps, forKey: "limit[visibleApps]")
				return encoder.items
			}
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
