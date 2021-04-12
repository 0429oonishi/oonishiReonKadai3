//
//  ViewController.swift
//  oonishiReonKadai3
//
//  Created by 大西玲音 on 2021/04/11.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var leftFormulaLabel: UILabel!
    @IBOutlet private weak var rightFormulaLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    
    
    @IBAction private func calculateButtonDidTapped(_ sender: Any) {
        guard let leftNum = leftTextField.text.flatMap({ Int($0) }),
              let rightNum = rightTextField.text.flatMap({ Int($0) }) else { return }
        let signedLeftNum = leftSwitch.isOn ? -leftNum : leftNum
        let signedRightNum = rightSwitch.isOn ? -rightNum : rightNum
        leftFormulaLabel.text = String(signedLeftNum)
        rightFormulaLabel.text = String(signedRightNum)
        resultLabel.text = String(signedLeftNum + signedRightNum)
    }
    
}


