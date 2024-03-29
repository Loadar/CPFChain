//
//  Person.swift
//  Demo
//
//  Created by Aaron on 2023/6/1.
//

import Foundation
import CPFChain

protocol PersonProtocol {
    var id: Int { get set }
    var name: String? { get set }
}

protocol WorkerProtocol: PersonProtocol {
    var company: String? { get set }
}

protocol TeacherProtocol: PersonProtocol {
    var school: String? { get set }
}

extension PersonProtocol {
    func description(of text: String?) -> String {
        return text ?? "null"
    }
}

class Worker: WorkerProtocol, CustomStringConvertible {
    var id: Int = 0
    var name: String? = nil
    var company: String? = nil
    
    var description: String {
        return "id: \(id)" + ", name: " + description(of: name) + ", company: " + description(of: company)
    }
}

class Teacher: TeacherProtocol, CustomStringConvertible {
    var id: Int = 0
    var name: String? = nil
    var school: String? = nil
    
    var description: String {
        return "id: \(id)" + ", name: " + description(of: name) + ", school: " + description(of: school)
    }
}

extension Worker: CpfCompatible { }
extension Teacher: CpfCompatible { }

extension Cpf where Wrapped: PersonProtocol {
    @discardableResult
    func id(_ value: Int) -> Cpf {
        wrapped.id = value
        return self
    }
    
    @discardableResult
    func name(_ value: String?) -> Cpf {
        wrapped.name = value
        return self
    }
}

extension Cpf where Wrapped: WorkerProtocol {
    @discardableResult
    func company(_ value: String?) -> Cpf {
        wrapped.company = value
        return self
    }
}

extension Cpf where Wrapped: TeacherProtocol {
    @discardableResult
    func school(_ value: String?) -> Cpf {
        wrapped.school = value
        return self
    }
}
