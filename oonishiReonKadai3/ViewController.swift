//
//  ViewController.swift
//  oonishiReonKadai3
//
//  Created by 大西玲音 on 2021/04/11.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var leftPlusLabel: UILabel!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var leftMinusLabel: UILabel!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var rightPlusLabel: UILabel!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var rightMinusLabel: UILabel!
    @IBOutlet private weak var leftFormulaLabel: UILabel!
    @IBOutlet private weak var rightFormulaLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    
    
    @IBAction private func calculateButtonDidTapped(_ sender: Any) {
        guard var leftNum = leftTextField.text.flatMap({ Int($0) }) else { return }
        guard var rightNum = rightTextField.text.flatMap({ Int($0) }) else { return }
        //SwitchがOnかOffかで符号を変更する処理
        leftNum *= leftSwitch.isOn ? -1 : 1
        rightNum *= rightSwitch.isOn ? -1 : 1
        
        leftFormulaLabel.text = String(leftNum)
        rightFormulaLabel.text = String(rightNum)
        resultLabel.text = String(leftNum + rightNum)
    }
    
}


