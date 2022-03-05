//
//  QuestionnaireRouter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

@objc protocol QuestionnaireRoutingLogic {
  //func routeToSomewhere(segue: UIStoryboardSegue?)
    func routeToSelectInterests()
}

protocol QuestionnaireDataPassing {
  var dataStore: QuestionnaireDataStore? { get }
}

final class QuestionnaireRouter: NSObject, QuestionnaireRoutingLogic, QuestionnaireDataPassing {
  weak var viewController: QuestionnaireViewController?
  var dataStore: QuestionnaireDataStore?
  
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
  
  //func navigateToSomewhere(source: QuestionnaireViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
    
    func routeToSelectInterests() {
        return
    }
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: QuestionnaireDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
