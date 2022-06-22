//
//  TaxiViewController.swift
//  3.2Taxicalculator
//
//  Created by MAC on 6/22/22.
//

import UIKit

class TaxiViewController: UIViewController {

    @IBOutlet weak var kilometTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
    }
    
//
//    0-10km: 11000.
//    11-20km: 10000.
//    21-30km: 9500.
//    Tử 31 trở lên: 9000.
    func calculator(number: Double) -> Double {
        var totalMoney: Double = 0
        switch number {
        case 0...10:
            totalMoney = number * 11000
        case 11...20:
            totalMoney = 110000 + (number-10)*10000
        case 21...30:
            totalMoney = 210000 + (number-20) * 9500
        case 31...10000:
            totalMoney = 305000 + (number - 30) * 9000
        default:
            totalMoney = 0
        }
        return totalMoney
    }

    @IBAction func calculatorButton(_ sender: UIButton) {
        if let km = kilometTextfield.text,
           km.isNumberic
           {
            let money = calculator(number: Double(km)!)
            let calcultorAlert = UIAlertController(title: "Total money", message: "Tong so tien phai tra la \(money)", preferredStyle: .alert)
            let okAleart = UIAlertAction(title: "ok", style: .default, handler: nil)
            calcultorAlert.addAction(okAleart)
            present(calcultorAlert, animated: true, completion: nil)
        } else {
            let aleart = UIAlertController(title: "Opss", message: "Please enter number", preferredStyle: .alert)
            let okAleart = UIAlertAction(title: "ok", style: .default, handler: nil)
            aleart.addAction(okAleart)
            present(aleart, animated: true, completion: nil)
        }
        
       
    }
    

}

extension String {
    var isNumberic:Bool {
        guard self.count > 0 else {return false}
        let nums: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "."]
                return Set(self).isSubset(of: nums)
    }
}
