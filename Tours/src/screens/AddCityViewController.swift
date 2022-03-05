//
//  AddCityViewController.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AddCityDisplayLogic: class {
  func displayData(viewModel: AddCity.Model.ViewModel.ViewModelData)
}

class AddCityViewController: UIViewController, AddCityDisplayLogic {

  var interactor: AddCityBusinessLogic?
  var router: (NSObjectProtocol & AddCityRoutingLogic)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup() {
    let viewController        = self
    let interactor            = AddCityInteractor()
    let presenter             = AddCityPresenter()
    let router                = AddCityRouter()
    viewController.interactor = interactor
    viewController.router     = router
    interactor.presenter      = presenter
    presenter.viewController  = viewController
    router.viewController     = viewController
  }
  
  // MARK: Routing
  

  
  // MARK: View lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func displayData(viewModel: AddCity.Model.ViewModel.ViewModelData) {

  }
  
}
