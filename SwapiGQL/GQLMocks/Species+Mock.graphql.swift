// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class Species: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.Species
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Species>>

  public struct MockFields {
    @Field<Double>("averageHeight") public var averageHeight
    @Field<Int>("averageLifespan") public var averageLifespan
    @Field<String>("classification") public var classification
    @Field<String>("created") public var created
    @Field<String>("designation") public var designation
    @Field<String>("edited") public var edited
    @Field<[String?]>("eyeColors") public var eyeColors
    @Field<[String?]>("hairColors") public var hairColors
    @Field<SwapiGQL.ID>("id") public var id
    @Field<String>("language") public var language
    @Field<String>("name") public var name
  }
}

public extension Mock where O == Species {
  convenience init(
    averageHeight: Double? = nil,
    averageLifespan: Int? = nil,
    classification: String? = nil,
    created: String? = nil,
    designation: String? = nil,
    edited: String? = nil,
    eyeColors: [String]? = nil,
    hairColors: [String]? = nil,
    id: SwapiGQL.ID? = nil,
    language: String? = nil,
    name: String? = nil
  ) {
    self.init()
    _setScalar(averageHeight, for: \.averageHeight)
    _setScalar(averageLifespan, for: \.averageLifespan)
    _setScalar(classification, for: \.classification)
    _setScalar(created, for: \.created)
    _setScalar(designation, for: \.designation)
    _setScalar(edited, for: \.edited)
    _setScalarList(eyeColors, for: \.eyeColors)
    _setScalarList(hairColors, for: \.hairColors)
    _setScalar(id, for: \.id)
    _setScalar(language, for: \.language)
    _setScalar(name, for: \.name)
  }
}
