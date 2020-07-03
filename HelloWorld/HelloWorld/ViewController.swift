//
//  ViewController.swift
//  HelloWorld
//
//  Created by N.C on 2020/7/3.
//  Copyright © 2020 N.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        // 初始化一個存放表情符號的字典
        // 如果你忘記怎麼做，請參考一下前面的章節
        // 程式碼填入至下方
        let buttonMap = [
            "👾": "alien",
            "👻": "ghost",
            "🤖": "robot",
            "🤓": "coolman",
        ]

        // sender 是使用者所按下的按鈕
        // 這裡我們將 sender 儲存至 selectedButton constant
        let selectedButton = sender

        // 從所選按鈕的標題標籤取得表情符號
        if let wordToLookup = selectedButton.titleLabel?.text {

            // 從字典取得表情符號的意義
            // 程式碼填入至下方
            let meaning = buttonMap[wordToLookup]

            // 變更以下這行程式將 Hello World 的顯示以來表情符號的意義來取代
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)

            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }

    }
}

