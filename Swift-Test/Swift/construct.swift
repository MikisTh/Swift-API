final class Music {
  let name: String
  
  init(name: String) {
    self.name = name
  }
}

public final class Music {
  private let name: String
  
  public init(name: String) {
    self.name = name
  }
}

final class Music {
  static let shared = Music()
  
  private init() { /*...*/ }
}