//
//  CalenderView.swift
//  WasteTimeRecord
//
//  Created by DaeSeong on 2022/04/02.
//

import SwiftUI

struct CalenderView: View {
    @State private var date = Date()

    var body: some View {
        VStack{
        DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            .padding()
        Spacer()
        }
    }
}

struct CalenderView_Previews: PreviewProvider {
    static var previews: some View {
        CalenderView()
    }
}
