//
//  ViewController.swift
//  CPFChainApp
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}















