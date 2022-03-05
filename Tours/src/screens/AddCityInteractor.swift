//
//  AddCityInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AddCityBusinessLogic {
  func makeRequest(request: AddCity.Model.Request.RequestType)
}

class AddCityInteractor: AddCityBusinessLogic {

  var presenter: AddCityPresentationLogic?
  var service: AddCityService?
  
  func makeRequest(request: AddCity.Model.Request.RequestType) {
    if service == nil {
      service = AddCityService()
    }
  }
  
}
