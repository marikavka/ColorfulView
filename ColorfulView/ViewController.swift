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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorfulView.layer.cornerRadius = 20
        
        setupRedSlider()
        setupGreenSlider()
        setuoBlueSlider()
        
        redValueLabel.text = redSlider.value.formatted()
        greenValueLabel.text = greenSlider.value.formatted()
        blueValueLabel.text = blueSlider.value.formatted()
    }
    
    // MARK: - IBActions
    @IBAction func blueSliderAction() {
        blueValueLabel.text = (String(format: "%.2f", blueSlider.value))
        colorfulView.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = (String(format: "%.2f", greenSlider.value))
        colorfulView.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        redValueLabel.text = (String(format: "%.2f", redSlider.value))
        colorfulView.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    // MARK: - Private Methods
    private func setupRedSlider() {
        redSlider.tintColor = .red
        redSlider.thumbTintColor = .lightGray
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0
    }
    
    private func setupGreenSlider() {
        greenSlider.tintColor = .green
        greenSlider.thumbTintColor = .lightGray
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0
    }
    
    fileprivate func setuoBlueSlider() {
        blueSlider.tintColor = .blue
        blueSlider.thumbTintColor = .lightGray
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0
    }
    
}

