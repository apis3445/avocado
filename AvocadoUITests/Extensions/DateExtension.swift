//
//  DateExtension.swift
//  AvocadoUITests
//
//  Created by Abigail Armijo Hernández on 17/06/24.
//

import XCTest

extension Date {
    typealias UIDate = (day: String, month: String, year: String)
    
    func addDaysFromToday(days: Int) -> UIDate? {
        //Extract to date parts (month, day, year)
        var components = DateComponents()
        components.setValue(days, for: .day)
        
        guard let futureDate = Calendar.current.date(byAdding: components, to: self) else { return nil }
        
        //Get the parts of the date
        let futureDay = Calendar.current.component(.day, from: futureDate).description
        let futureMonthInt = Calendar.current.component(.month, from: futureDate)
        let futureMonthShortName = DateFormatter().shortMonthSymbols[futureMonthInt - 1]
        let futureYear = Calendar.current.component(.year, from: futureDate).description
        
        return (futureDay, futureMonthShortName, futureYear)
        
    }
}
