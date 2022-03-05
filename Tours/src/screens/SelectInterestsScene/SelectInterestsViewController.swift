//
//  SelectInterestsViewController.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol SelectInterestsDisplayLogic: AnyObject {
  func displaySomething(viewModel: SelectInterests.Something.ViewModel)
}

final class SelectInterestsViewController: UIViewController, SelectInterestsDisplayLogic {
  var interactor: SelectInterestsBusinessLogic?
  var router: (NSObjectProtocol & SelectInterestsRoutingLogic & SelectInterestsDataPassing)?

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
    let viewController = self
    let interactor = SelectInterestsInteractor()
    let presenter = SelectInterestsPresenter()
    let router = SelectInterestsRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    doSomething()
  }
  
  // MARK: Do something
  
  //@IBOutlet weak var nameTextField: UITextField!
  
  func doSomething() {
    let request = SelectInterests.Something.Request()
    interactor?.doSomething(request: request)
  }
  
  func displaySomething(viewModel: SelectInterests.Something.ViewModel) {
    //nameTextField.text = viewModel.name
  }
}
