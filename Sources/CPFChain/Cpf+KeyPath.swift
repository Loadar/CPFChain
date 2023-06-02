//
//  File.swift
//  
//
//  Created by Aaron on 2023/6/2.
//

import Foundation

public extension Cpf {
    @discardableResult
    func update<T>(_ keyPath: WritableKeyPath<Wrapped, T>, _ value: T) -> Self {
        wrapped[keyPath: keyPath] = value
        return self
    }
}
