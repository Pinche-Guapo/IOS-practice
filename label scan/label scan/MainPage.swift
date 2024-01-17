import SwiftUI

struct MainPage: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @State private var isImportPresented = false

    var body: some View {
        NavigationView {
            Form {
                HStack{
                    Image("logo")
                        .resizable()
                        .frame(width:50,height: 50)
                    
                    VStack(alignment: .leading){
                        Text("한승주").font(.title2)
                    }
                }
                
                // First section
                Section {
                    

                    // First Row
                    HStack {

                        Button(action: {
                            // Add your button action here
                            // This code will be executed when the button is tapped

                            print("입고 전표 button tapped")
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color.blue)
                                    .frame(width: 50, height: 50)
                                    .overlay(
                                        Image(systemName: "airplane")
                                            .resizable() // Allow the image to be resized
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.white)
                                            .rotationEffect(Angle(degrees: 180))
                                        )
                                
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            Text("입고 전표")
                                .font(.title)
                        }
                        NavigationLink(destination: Import(), isActive: $isImportPresented) {
                                                EmptyView()
                                            }
                    }
                    
                    //Second Row
                    HStack {
                        Button(action: {
                            // Add your button action here
                            // This code will be executed when the button is tapped
                            print("출고 전표 button tapped")
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color.red)
                                    .frame(width: 50, height: 50)
                                Image(systemName: "airplane")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            Text("출고 전표")
                                .font(.title)
                        }
                    }
                    
                    //Third Row
                    HStack {
                        Button(action: {
                            // Add your button action here
                            // This code will be executed when the button is tapped
                            print("재고 현황 button tapped")
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color.green)
                                    .frame(width: 50, height: 50)
                                Image(systemName: "wifi")
                                    .resizable() // Allow the image to be resized
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)

                            }
                        }
                        
                        VStack(alignment: .leading) {
                            Text("재고 현황")
                                .font(.title)
                        }
                    }
                    
                    

                    // Fourth Row
                    HStack {
                        Button(action: {
                            // Add your button action here
                            // This code will be executed when the button is tapped
                            print("-준비중- button tapped")
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color.orange)
                                    .frame(width: 28, height: 28)
                                Image(systemName: "airplane")
                                    .foregroundColor(.white)
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            Text("-준비중-")
                        }
                    }
                    
                    
                }
                Section {
                    
                    // First Row
                    HStack {
                        Button(action: {
                            // Add your button action here
                            // This code will be executed when the button is tapped
                            // Logout action
                            UserDefaults.standard.set(false, forKey: "isLoggedIn")
                            isLoggedIn = false

                            print("loggin out")
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color.black)
                                    .frame(width: 28, height: 28)
                                Image(systemName: "moon.fill")
                                    .foregroundColor(.white)
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            Text("로그아웃")
                        }
                    }
            }

                
        }
            .navigationBarTitle("메인 메뉴")
            .navigationBarHidden(false)
        }
    }
}



struct MainPageView: View {
    var body: some View {
        NavigationView {
            MainPage()
        }
    }
}



//struct MainPage: View {
//    @State private var selectedDate = Date()
//    @State private var boxCount = 1
//    @State private var boxes: [Int] = [1]
//    @State private var index = 0
//
//    var body: some View {
//        VStack {
//            HStack {
//                DatePicker(
//                    "날짜",
//                    selection: $selectedDate,
//                    displayedComponents: .date
//                )
//                .datePickerStyle(.compact)
//            }
//
//            HStack {
//                Spacer()
//                ForEach(0..<boxCount, id: \.self) { index in
//                    Button(action: {
//                        // Button action
//                        print("Button \(index + 1) tapped")
//                    }) {
//                        ZStack {
//                            Rectangle()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.blue)
//                                .cornerRadius(10)
//                            Text("\(index + 1)")
//                                .foregroundColor(.white)
//                                .fontWeight(.bold)
//                        }
//                    }
//                }
//            }
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//        .padding()
//    }
//}
//
//struct MainPage_Previews: PreviewProvider {
//    static var previews: some View {
//        MainPage()
//    }
//}




//            VStack {
//                Text("한승주님")
//                    .font(.largeTitle)
//                    .bold()
//                    .padding()
//
//                Button(action: {
//                    // Logout action
//                    UserDefaults.standard.set(false, forKey: "isLoggedIn")
//                    isLoggedIn = false
//                }) {
//                    Text("Logout")
//                        .foregroundColor(.white)
//                        .frame(width: 200, height: 50)
//                        .background(Color.red)
//                        .cornerRadius(10)
//                        .padding()
//                }
//
//                NavigationLink(destination: SomeListView(title: "List 1")) {
//                    Text("List 1")
//                        .foregroundColor(.white)
//                        .frame(width: 200, height: 50)
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                        .padding()
//                }
//
//                NavigationLink(destination: SomeListView(title: "List 2")) {
//                    Text("List 2")
//                        .foregroundColor(.white)
//                        .frame(width: 200, height: 50)
//                        .background(Color.green)
//                        .cornerRadius(10)
//                        .padding()
//                }
//
//                // Add similar NavigationLinks for List 3 to List 6
//            }
