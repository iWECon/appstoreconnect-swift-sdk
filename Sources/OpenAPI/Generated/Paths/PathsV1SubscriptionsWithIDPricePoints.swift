// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID {
	public var pricePoints: PricePoints {
		PricePoints(path: path + "/pricePoints")
	}

	public struct PricePoints {
		/// Path: `/v1/subscriptions/{id}/pricePoints`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.SubscriptionPricePointsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterTerritory: [String]?
			public var fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsSubscriptionPricePoints: String, Codable, CaseIterable {
				case customerPrice
				case equalizations
				case proceeds
				case proceedsYear2
				case subscription
				case territory
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case territory
			}

			public init(filterTerritory: [String]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterTerritory = filterTerritory
				self.fieldsSubscriptionPricePoints = fieldsSubscriptionPricePoints
				self.fieldsTerritories = fieldsTerritories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsSubscriptionPricePoints, forKey: "fields[subscriptionPricePoints]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
