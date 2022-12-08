// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.InAppPurchases.WithID {
	public var pricePoints: PricePoints {
		PricePoints(path: path + "/pricePoints")
	}

	public struct PricePoints {
		/// Path: `/v2/inAppPurchases/{id}/pricePoints`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.InAppPurchasePricePointsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterPriceTier: [String]?
			public var filterTerritory: [String]?
			public var fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsInAppPurchasePricePoints: String, Codable, CaseIterable {
				case customerPrice
				case inAppPurchaseV2
				case priceTier
				case proceeds
				case territory
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case territory
			}

			public init(filterPriceTier: [String]? = nil, filterTerritory: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterPriceTier = filterPriceTier
				self.filterTerritory = filterTerritory
				self.fieldsInAppPurchasePricePoints = fieldsInAppPurchasePricePoints
				self.fieldsTerritories = fieldsTerritories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPriceTier, forKey: "filter[priceTier]")
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsInAppPurchasePricePoints, forKey: "fields[inAppPurchasePricePoints]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
