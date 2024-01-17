//
//  Import.swift
//  label scan
//
//  Created by 한정재 on 12/30/23.
//

import SwiftUI

struct Import: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @State private var selectedDate = Date()
    @State private var tableData: [[String]] = []
    @State private var num: Int = 1
    
    var body: some View {
        
        
        NavigationView {
            Form{
                VStack(){
                        HStack{
                            
                            Spacer()
                            DatePicker(
                                "날짜",
                                selection: $selectedDate,
                                displayedComponents:.date)
                            .datePickerStyle(.compact)
                            Spacer()
                                
                        }

                }
                .listRowInsets(EdgeInsets())
                                
                    Section(header: Text("Table")) {
                        List {
                            HStack {
                                Text("번호")
                                //Spacer()
                                Text("상호명")
                                Spacer()
                                Text("총 중량")
                                Spacer()
                                Text("총 금액")
                                Spacer()
                            }
                            ForEach(tableData, id: \.self) { row in
                                HStack {
                                    ForEach(row, id: \.self) { columnData in
                                        Text(columnData)
                                        Spacer()
                                    }
                                }
                            }
                            .onDelete(perform: { indexSet in
                                                        tableData.remove(atOffsets: indexSet)
                                                    })
                        }
                    }

                    Button("Add Row") {
                        let newRow = [String(num), "Data 2", "Data 3", "Data 4"]
                        tableData.append(newRow)
                        num += 1
                    }
                
                
            }
            


        }
        .navigationTitle("입고")
        .navigationBarHidden(false)
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(InsetGroupedListStyle())


    }
}


struct ImportView: View {
    var title: String

    var body: some View {
        Import()
    }
}

struct Previews_Import_Previews: PreviewProvider {
    static var previews: some View {
        Import()
    }
}
