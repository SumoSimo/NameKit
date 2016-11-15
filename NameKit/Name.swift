//
//  Name.swift
//  NameKit
//
//  Created by Simon Tsai on 11/14/16.
//  Copyright © 2016 Simon Tsai. All rights reserved.
//

public struct Name {
  
  private let name: String
  
  private var components: [String] {
    
    return name.components(separatedBy: CharacterSet.whitespaces)
    
  }
  
  public init(_ name: String) {
    
    self.name = name
    
  }
  
  public var firstName: String? {
    
    return name.isEmpty ? .none : components.first
    
  }
  
  public var lastName: String? {
    
    return components.count < 2 ? .none : components.last
    
  }
  
  public var middleName: String? {
    
    let middleNameComponents = components.droppingEdges().joined(separator: " ")
    
    return middleNameComponents.isEmpty ? .none : middleNameComponents
    
  }
  
  public var fullName: String {
    
    return name
    
  }
  
}

private extension Array {
  
  func droppingEdges() -> Array<Element> {
    
    return Array(dropFirst().dropLast())
    
  }
  
}
