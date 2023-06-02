//
//  CpfCompatible.swift
//  
//
//  Created by Aaron on 2023/6/2.
//

import Foundation

public protocol CpfCompatible {
    associatedtype CompatibleType: AnyObject
    var cpf: Cpf<CompatibleType> { get }
}

extension CpfCompatible where Self: AnyObject {
    public var cpf: Cpf<Self> {
        Cpf(self)
    }
}
