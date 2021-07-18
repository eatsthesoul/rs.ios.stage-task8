//
//  TimerVC.swift
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 18.07.21.
//

import Foundation

class TimerVC: UIViewController {
    
    private var timerValue: Float = 1
    
    private let slider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 1
        slider.maximumValue = 5
        slider.tintColor = UIColor.lightGreenSea
        slider.translatesAutoresizingMaskIntoConstraints = false;
        slider.addTarget(self, action: #selector(sliderValueChangedHandler(_:)), for: .valueChanged)
        return slider
    }()
    
    private let saveButton: RSButton = {
        let button = RSButton()
        button.setTitle("Save", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false;
        button .addTarget(self, action: #selector(saveButtonHandler), for: .touchUpInside)
        return button
    }()
    
    private let leftLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.appRegularFont(withSize: 18) as? UIFont
        label.text = "1"
        label.translatesAutoresizingMaskIntoConstraints = false;
        return label
    }()
    
    private let rightLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.appRegularFont(withSize: 18) as? UIFont
        label.text = "5"
        label.translatesAutoresizingMaskIntoConstraints = false;
        return label
    }()
    
    private let bottomLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.appRegularFont(withSize: 18) as? UIFont
        label.text = "1.00 s"
        label.translatesAutoresizingMaskIntoConstraints = false;
        return label
    }()
    
    //MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.greyShadow.cgColor
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOpacity = 1;
        view.layer.cornerRadius = 40;
        
        setupAppearance()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        timerValue = Service.sharedInstance().timeForPainting
        slider.value = timerValue
        setBottomLabelText()
    }
    
    //MARK: - Setup UI methods
    
    func setupAppearance() {
        
        view.addSubview(saveButton)
        view.addSubview(slider)
        view.addSubview(leftLabel)
        view.addSubview(rightLabel)
        view.addSubview(bottomLabel)
        
        NSLayoutConstraint.activate([
            
            //saveButton
            saveButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            //slider
            slider.topAnchor.constraint(equalTo: view.topAnchor, constant: 99),
            slider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 84),
            slider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -88),
            
            //leftLabel
            leftLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 103),
            leftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
            
            //rightLabel
            rightLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 103),
            rightLabel.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26),
            
            //bottomLabel
            bottomLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 161),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func setBottomLabelText() {
        let stringToAppear = String.localizedStringWithFormat("%.02f s", timerValue)
        bottomLabel.text = stringToAppear
    }
    
    //MARK: - Handlers
    
    @objc func sliderValueChangedHandler(_ sender: UISlider) {
        timerValue = sender.value
        setBottomLabelText()
    }
    
    @objc func saveButtonHandler() {
        Service.sharedInstance().timeForPainting = timerValue
        self.dismiss(animated: true, completion: nil)
    }
}


