//
//  Date+Cpf.swift
//  Demo
//
//  Created by Aaron on 2023/6/5.
//

import Foundation
import CPFChain

extension Date: @retroactive CpfCompatible {}

extension Cpf where Wrapped == Date.Type {
    /// 一天的秒数(60 * 60 * 24s)，方便用于计算
    var secondsOfOneDay: TimeInterval { 60 * 60 * 24 }
    
    /// 昨天
    var yesterday: Date {
        let date = Date(timeIntervalSinceNow: secondsOfOneDay * -1)
        let calendar = Calendar.current
        return calendar.startOfDay(for: date)
    }
}
