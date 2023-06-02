//
//  CpfCompatible.swift
//  
//
//  Created by Aaron on 2023/6/2.
//

import Foundation

public protocol CpfCompatible {
    associatedtype CompatibleType
    var cpf: Cpf<CompatibleType> { get }
}

extension CpfCompatible {
    public var cpf: Cpf<Self> {
        Cpf(self)
    }
}
