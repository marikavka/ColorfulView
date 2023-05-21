//
//  MainViewController.swift
//  ColorfulView
//
//  Created by Мария Купчинская on 21.05.2023.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    func setNewValues(for newRedValue: Float, and newGreenValue: Float, and newBlueValue: Float)
}

final class MainViewController: UIViewController {

    var redValue: Float = 0
    var greenValue: Float = 1
    var blueValue: Float = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(
            red: CGFloat(redValue),
            green: CGFloat(greenValue),
            blue: CGFloat(blueValue),
            alpha: 1
        )

        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVC = segue.destination as? ViewController else { return }
        mainVC.redFirstValue = redValue
        mainVC.greenFirstValue = greenValue
        mainVC.blueFirstValue = blueValue
        mainVC.delegate = self
    }

}
// MARK: - SettingsViewControllerDelegate
extension MainViewController: ViewControllerDelegate {
    func setNewValues(for newRedValue: Float, and newGreenValue: Float, and newBlueValue: Float) {
        redValue = newRedValue
        greenValue = newGreenValue
        blueValue = newBlueValue
    }
    
}
