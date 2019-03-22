//
//  SwiftyStylable.swift
//  Pods-SwiftyStylable_Example
//
//  Created by Alexey Karataev on 22.03.2019.
//

import Foundation


// MARK: - style type declaration

public typealias Style<Control> = (Control) -> Void


// MARK: - extensible styles storage

public enum SwiftyStyle<Control> {
    case style(applyStyleAt: Style<Control>)
}


// MARK: - stylable protocol declaration

public protocol SwiftyStylable {}


// MARK: - apply to all NSObject subclasses

extension NSObject: SwiftyStylable {}


// MARK: - default implementation

extension SwiftyStylable {
    
    public func apply(_ styles: SwiftyStyle<Self>...) {
        styles.forEach { switch $0 { case .style(let applyStyleAt): applyStyleAt(self) } }
    }
}
