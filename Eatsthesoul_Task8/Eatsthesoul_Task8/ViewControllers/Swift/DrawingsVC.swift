//
//  DrawingsVC.swift
//  Eatsthesoul_Task8
//
//  Created by Evgeniy Petlitskiy on 18.07.21.
//

import Foundation

class DrawingsButton: UIButton {
    
    init() {
        super.init(frame: CGRect.zero)
        
        backgroundColor = UIColor.white;
        
        setTitleColor(.lightGreenSea, for: .normal)
        titleLabel?.font = UIFont.montserratMedium(withSize: 18) as? UIFont
        
        self.layer.cornerRadius = 10;
        
        self.layer.shadowColor = UIColor.greyShadow.cgColor
        self.layer.shadowRadius = 2;
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowOpacity = 1;
        
        self.contentEdgeInsets = UIEdgeInsets(top: 9, left: 47, bottom: 9, right: 47)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func selectButton() {
        self.layer.shadowColor = UIColor.lightGreenSea.cgColor
        self.layer.shadowRadius = 4;
    }
    
    func unselectButton() {
        self.layer.shadowColor = UIColor.greyShadow.cgColor
        self.layer.shadowRadius = 2;
    }
}

class DrawingsVC: UIViewController {
    
    private let planetButton: DrawingsButton = {
        let button = DrawingsButton()
        button.setTitle("Planet", for: .normal)
        button .addTarget(self, action: #selector(buttonHandler(_:)), for: .touchUpInside)
        return button
    }()
    
    private let headButton: DrawingsButton = {
        let button = DrawingsButton()
        button.setTitle("Head", for: .normal)
        button .addTarget(self, action: #selector(buttonHandler(_:)), for: .touchUpInside)
        return button
    }()
    
    private let treeButton: DrawingsButton = {
        let button = DrawingsButton()
        button.setTitle("Tree", for: .normal)
        button .addTarget(self, action: #selector(buttonHandler(_:)), for: .touchUpInside)
        return button
    }()
    
    private let landscapeButton: DrawingsButton = {
        let button = DrawingsButton()
        button.setTitle("Landscape", for: .normal)
        button .addTarget(self, action: #selector(buttonHandler(_:)), for: .touchUpInside)
        return button
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 15;
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    //MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        setupAppearance()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        selectButton()
    }
    
    //MARK: - Setup UI methods
    
    private func setupAppearance() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(planetButton)
        stackView.addArrangedSubview(headButton)
        stackView.addArrangedSubview(treeButton)
        stackView.addArrangedSubview(landscapeButton)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func selectButton() {
        switch Service.sharedInstance().canvasType {
        case .planet:
            planetButton.selectButton()
        case .head:
            headButton.selectButton()
        case .tree:
            treeButton.selectButton()
        case .landscape:
            landscapeButton.selectButton()
        @unknown default:
            break
        }
    }
    
    func unselectAllButtons() {
        planetButton.unselectButton()
        headButton.unselectButton()
        treeButton.unselectButton()
        landscapeButton.unselectButton()
    }
    
    //MARK: - Handlers
    
    @objc func buttonHandler(_ sender: DrawingsButton) {
        unselectAllButtons()
        switch sender {
        case planetButton:
            Service.sharedInstance().canvasType = .planet
        case headButton:
            Service.sharedInstance().canvasType = .head
        case treeButton:
            Service.sharedInstance().canvasType = .tree
        case landscapeButton:
            Service.sharedInstance().canvasType = .landscape
        default:
            break
        }
        navigationController?.popViewController(animated: true)
    }
}
