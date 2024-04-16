// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class Film: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.Film
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Film>>

  public struct MockFields {
    @Field<String>("created") public var created
    @Field<String>("director") public var director
    @Field<String>("edited") public var edited
    @Field<Int>("episodeID") public var episodeID
    @Field<SwapiGQL.ID>("id") public var id
    @Field<String>("name") public var name
    @Field<String>("openingCrawl") public var openingCrawl
    @Field<[String?]>("producers") public var producers
    @Field<String>("releaseDate") public var releaseDate
    @Field<String>("title") public var title
  }
}

public extension Mock where O == Film {
  convenience init(
    created: String? = nil,
    director: String? = nil,
    edited: String? = nil,
    episodeID: Int? = nil,
    id: SwapiGQL.ID? = nil,
    name: String? = nil,
    openingCrawl: String? = nil,
    producers: [String]? = nil,
    releaseDate: String? = nil,
    title: String? = nil
  ) {
    self.init()
    _setScalar(created, for: \.created)
    _setScalar(director, for: \.director)
    _setScalar(edited, for: \.edited)
    _setScalar(episodeID, for: \.episodeID)
    _setScalar(id, for: \.id)
    _setScalar(name, for: \.name)
    _setScalar(openingCrawl, for: \.openingCrawl)
    _setScalarList(producers, for: \.producers)
    _setScalar(releaseDate, for: \.releaseDate)
    _setScalar(title, for: \.title)
  }
}
