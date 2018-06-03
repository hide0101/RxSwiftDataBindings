//
//  ViewController.swift
//  RxSwiftDataBindings
//
//  Created by hideakikomori on 2018/06/03.
//  Copyright © 2018年 Hideaki Komori. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var demoTapGestureRecognizer: UITapGestureRecognizer!
    @IBOutlet weak var demoTextField: UITextField!
    @IBOutlet weak var demoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

