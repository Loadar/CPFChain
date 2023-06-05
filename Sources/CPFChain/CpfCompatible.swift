//
//  CpfCompatible.swift
//  
//
//  Created by Aaron on 2023/6/2.
//

import Foundation

public protocol CpfCompatible {
    associatedtype CompatibleType
    
    static var cpf: Cpf<CompatibleType>.Type { get }
    var cpf: Cpf<CompatibleType> { get }
}

extension CpfCompatible {
    public static var cpf: Cpf<Self>.Type {
        return Cpf<Self>.self
    }
    public var cpf: Cpf<Self> {
        Cpf(self)
    }
}
