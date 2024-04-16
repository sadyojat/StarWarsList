// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class SpeciesConnection: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.SpeciesConnection
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<SpeciesConnection>>

  public struct MockFields {
    @Field<PageInfo>("pageInfo") public var pageInfo
    @Field<[Species?]>("species") public var species
    @Field<Int>("totalCount") public var totalCount
  }
}

public extension Mock where O == SpeciesConnection {
  convenience init(
    pageInfo: Mock<PageInfo>? = nil,
    species: [Mock<Species>?]? = nil,
    totalCount: Int? = nil
  ) {
    self.init()
    _setEntity(pageInfo, for: \.pageInfo)
    _setList(species, for: \.species)
    _setScalar(totalCount, for: \.totalCount)
  }
}
