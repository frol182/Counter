//
//  ViewController.swift
//  Counter
//
//  Created by Roman Frolov on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {
    // Переменные
    var counterValue: Int = 0  // Числовая переменная для подсчета
    @IBOutlet weak var counterLabel: UILabel! // Лейбл для вывода счетчика
    @IBOutlet weak var logTextField: UITextView! // Окно для вывода лога
    
    //Кнопка для увеличения счета
    @IBAction func counterButtoPlus(_ sender: Any) {
    counterValue += 1
    counterLabel.text = "Значение счетчика " + counterValue.formatted() // Вывод счетчика
    logTextField.text +=   // Вывод лога
        "\(Date().formatted(date: .omitted, time: .shortened))  "
        + "Значение увеличено"
        + "\n"
    }
    
    //Кнопка для уменьшения счета
    @IBAction func counterButtonMinus(_ sender: Any) {
        if counterValue > 0 {
            counterValue -= 1
            counterLabel.text = "Значение счетчика " + counterValue.formatted()
            logTextField.text +=
            "\(Date().formatted(date: .omitted, time: .shortened))  "
            + "Значение уменьшено"
            + "\n"
        }
        else {logTextField.text +=
            "\(Date().formatted(date: .omitted, time: .shortened))  "
            + "Попытка уменьшить значение счётчика ниже 0"
            + "\n"
        }
    }
    
    //Кнопка для сброса счета
    @IBAction func counterButtonReset(_ sender: Any) {
        counterValue = 0
        counterLabel.text = "Значение счетчика " + counterValue.formatted() // Вывод счетчика
        logTextField.text +=   // Вывод лога
            "\(Date().formatted(date: .omitted, time: .shortened))  "
            + "Значение сброшено"
            + "\n"
    }
    
    //Инициализация значений при запуске
    override func viewDidLoad() {
        super.viewDidLoad()
        counterValue = 0 // обнуление числовой переменной при загрузке экрана
        counterLabel.text = "Значение счетчика " + counterValue.formatted()
        logTextField.text = ""
        // Do any additional setup after loading the view.
    }

    
}

