//
//  ContentView.swift
//  NYCHightSchool
//
//  Created by Debarshee Ghosh on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    var request: () = NetworkHTTPRequest().load()
    var body: some View {
        HighSchoolDetailsView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
