// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var reviewSubmissions: ReviewSubmissions {
		ReviewSubmissions(path: path + "/reviewSubmissions")
	}

	public struct ReviewSubmissions {
		/// Path: `/v1/reviewSubmissions`
		public let path: String

		public func get(parameters: GetParameters) -> Request<AppStoreConnectSwiftSDK.ReviewSubmissionsResponse> {
			.get(path, query: parameters.asQuery)
		}

		public struct GetParameters {
			public var filterPlatform: [FilterPlatform]?
			public var filterState: [FilterState]?
			public var filterApp: [String]
			public var fieldsReviewSubmissions: [FieldsReviewSubmissions]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]?
			public var limitItems: Int?

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
			}

			public enum FilterState: String, Codable, CaseIterable {
				case readyForReview = "READY_FOR_REVIEW"
				case waitingForReview = "WAITING_FOR_REVIEW"
				case inReview = "IN_REVIEW"
				case unresolvedIssues = "UNRESOLVED_ISSUES"
				case canceling = "CANCELING"
				case completing = "COMPLETING"
				case complete = "COMPLETE"
			}

			public enum FieldsReviewSubmissions: String, Codable, CaseIterable {
				case app
				case appStoreVersionForReview
				case canceled
				case items
				case platform
				case state
				case submitted
				case submittedDate
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appStoreVersionForReview
				case items
			}

			public enum FieldsReviewSubmissionItems: String, Codable, CaseIterable {
				case appCustomProductPageVersion
				case appEvent
				case appStoreVersion
				case appStoreVersionExperiment
				case removed
				case resolved
				case reviewSubmission
				case state
			}

			public init(filterPlatform: [FilterPlatform]? = nil, filterState: [FilterState]? = nil, filterApp: [String], fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]? = nil, limitItems: Int? = nil) {
				self.filterPlatform = filterPlatform
				self.filterState = filterState
				self.filterApp = filterApp
				self.fieldsReviewSubmissions = fieldsReviewSubmissions
				self.limit = limit
				self.include = include
				self.fieldsReviewSubmissionItems = fieldsReviewSubmissionItems
				self.limitItems = limitItems
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterState, forKey: "filter[state]")
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsReviewSubmissionItems, forKey: "fields[reviewSubmissionItems]")
				encoder.encode(limitItems, forKey: "limit[items]")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnectSwiftSDK.ReviewSubmissionCreateRequest) -> Request<AppStoreConnectSwiftSDK.ReviewSubmissionResponse> {
			.post(path, body: body)
		}
	}
}
