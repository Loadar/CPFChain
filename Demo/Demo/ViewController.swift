//
//  ViewController.swift
//  Demo
//
//  Created by Aaron on 2023/6/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let worker = Worker()
        worker.cpf
            .id(111)
            .name("zhang")
            .company("Apple")
        
        let teacher = Teacher()
        teacher.cpf
            .id(222)
            .name("Chen")
            .school("Tsinghua")
        
        debugPrint(worker)
        debugPrint(teacher)

        worker.cpf
            .update(\.id, 999)
            .update(\.name, "Loadar")
            .update(\.company, "Zhiyi")
        debugPrint(worker)
        
        dateTest()
    }
    
    private func dateTest() {
        debugPrint(Date.cpf.secondsOfOneDay, Date.cpf.yesterday)
    }
}

