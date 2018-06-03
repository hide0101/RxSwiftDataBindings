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
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        demoTapGestureRecognizer.rx.event
            .bind { [unowned self] _ in
                self.view.endEditing(true)
        }
        .disposed(by: disposeBag)
        let demoTextFieldText = Variable("")
        demoTextField.rx.text.orEmpty
            .bind(to: demoTextFieldText)
            .disposed(by: disposeBag)
        demoTextFieldText.asObservable()
            .subscribe( { print($0) })
            .disposed(by: disposeBag)
        let buttonClicked = PublishSubject<String>()
        demoButton.rx.tap
            .map({ "Button Clicked" })
            .bind(to: buttonClicked)
            .disposed(by: disposeBag)
        buttonClicked
            .subscribe({ print($0.element ?? $0) })
            .disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

