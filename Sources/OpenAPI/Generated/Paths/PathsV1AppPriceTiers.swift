// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appPriceTiers: AppPriceTiers {
		AppPriceTiers(path: path + "/appPriceTiers")
	}

	public struct AppPriceTiers {
		/// Path: `/v1/appPriceTiers`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnectSwiftSDK.AppPriceTiersResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterID: [String]?
			public var fieldsAppPriceTiers: [FieldsAppPriceTiers]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsAppPricePoints: [FieldsAppPricePoints]?
			public var limitPricePoints: Int?

			public enum FieldsAppPriceTiers: String, Codable, CaseIterable {
				case pricePoints
			}

			public enum Include: String, Codable, CaseIterable {
				case pricePoints
			}

			public enum FieldsAppPricePoints: String, Codable, CaseIterable {
				case customerPrice
				case priceTier
				case proceeds
				case territory
			}

			public init(filterID: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, limitPricePoints: Int? = nil) {
				self.filterID = filterID
				self.fieldsAppPriceTiers = fieldsAppPriceTiers
				self.limit = limit
				self.include = include
				self.fieldsAppPricePoints = fieldsAppPricePoints
				self.limitPricePoints = limitPricePoints
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(fieldsAppPriceTiers, forKey: "fields[appPriceTiers]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
				encoder.encode(limitPricePoints, forKey: "limit[pricePoints]")
				return encoder.items
			}
		}
	}
}
