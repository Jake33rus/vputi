//
//  SelectInterestsRouter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

@objc protocol SelectInterestsRoutingLogic {
  //func routeToSomewhere(segue: UIStoryboardSegue?)
    func routeToMainScreen()
}

protocol SelectInterestsDataPassing {
  var dataStore: SelectInterestsDataStore? { get }
}

final class SelectInterestsRouter: NSObject, SelectInterestsRoutingLogic, SelectInterestsDataPassing {
  weak var viewController: SelectInterestsViewController?
  var dataStore: SelectInterestsDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
    func routeToMainScreen() {
        
    }
  //func navigateToSomewhere(source: SelectInterestsViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: SelectInterestsDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
