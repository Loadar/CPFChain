//
//  Cpf.swift
//  CPFChain
//
//  Created by Aaron on 2017/11/16.
//  Copyright © 2017年 ruhnn. All rights reserved.
//

import Foundation

public final class Cpf<Wrapped: AnyObject> {
    public var wrapped: Wrapped
    
    public init(_ wrapped: Wrapped) {
        self.wrapped = wrapped
    }
}
