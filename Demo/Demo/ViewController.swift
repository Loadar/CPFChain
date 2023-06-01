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
        
        print(worker)
        print(teacher)

    }
}

