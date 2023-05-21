//
//  ViewController.swift
//  ColorfulView
//
//  Created by Мария Купчинская on 29.04.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var colorfulView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    var redFirstValue: Float!
    var greenFirstValue: Float!
    var blueFirstValue: Float!
    
    unowned var delegate: ViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorfulView.layer.cornerRadius = 20
        
        redSlider.value = redFirstValue
        greenSlider.value = greenFirstValue
        blueSlider.value = blueFirstValue
        
        updateColor()
        
        redValueLabel.text = string(from: redSlider)
        greenValueLabel.text = string(from: greenSlider)
        blueValueLabel.text = string(from: blueSlider)
    }
    
    // MARK: - IBActions
    @IBAction func sliderAction(_ sender: UISlider) {
        updateColor()
        
        switch sender {
        case redSlider:
            redValueLabel.text = string(from: redSlider)
        case greenSlider:
            greenValueLabel.text = string(from: greenSlider)
        default:
            blueValueLabel.text = string(from: blueSlider)
        }
    }
    
    @IBAction func saveValuesPressed(_ sender: UIButton) {
        delegate.setNewValues(for: redSlider.value, and: greenSlider.value, and: blueSlider.value)
        
        dismiss(animated: true)
    }
    
    // MARK: - Private Methods
    private func updateColor() {
        colorfulView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
