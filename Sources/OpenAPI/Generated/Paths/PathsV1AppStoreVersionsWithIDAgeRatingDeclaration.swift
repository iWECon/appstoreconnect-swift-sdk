// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID {
	public var ageRatingDeclaration: AgeRatingDeclaration {
		AgeRatingDeclaration(path: path + "/ageRatingDeclaration")
	}

	public struct AgeRatingDeclaration {
		/// Path: `/v1/appStoreVersions/{id}/ageRatingDeclaration`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil) -> Request<AppStoreConnectSwiftSDK.AgeRatingDeclarationResponse> {
			.get(path, query: makeGetQuery(fieldsAgeRatingDeclarations))
		}

		private func makeGetQuery(_ fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]", explode: false)
			return encoder.items
		}

		public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable {
			case alcoholTobaccoOrDrugUseOrReferences
			case contests
			case gambling
			case gamblingAndContests
			case gamblingSimulated
			case horrorOrFearThemes
			case kidsAgeBand
			case matureOrSuggestiveThemes
			case medicalOrTreatmentInformation
			case profanityOrCrudeHumor
			case seventeenPlus
			case sexualContentGraphicAndNudity
			case sexualContentOrNudity
			case unrestrictedWebAccess
			case violenceCartoonOrFantasy
			case violenceRealistic
			case violenceRealisticProlongedGraphicOrSadistic
		}
	}
}
