//
//  AddCityInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol AddCityBusinessLogic
{
  func doSomething(request: AddCity.Something.Request)
}

protocol AddCityDataStore
{
  //var name: String { get set }
}

final class AddCityInteractor: AddCityBusinessLogic, AddCityDataStore
{
  var presenter: AddCityPresentationLogic?
  var worker: AddCityWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: AddCity.Something.Request)
  {
    worker = AddCityWorker()
    worker?.doSomeWork()
    
    let response = AddCity.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
