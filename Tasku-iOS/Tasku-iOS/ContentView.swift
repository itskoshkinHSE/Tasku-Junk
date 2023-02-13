import SwiftUI
import Shared

struct ContentView: View {
    //let greet = Greeting().greet() //MARK: Kotlin's template junk
    @State private var searchQuery = ""
    @State private var isEditing = false
    
    var body: some View {
        //MARK: WTF is ZStack?
        /* ZStack(alignment: .topLeading) {
         Color.red
         .frame(maxWidth: .infinity, maxHeight: .infinity)
         
         } */
        
        VStack() {
            // Search
            Group {
                
                /* NavigationStack {
                 Text("Searching for \(searchQuery)")
                 } */ //Too fucking large
                //.searchable(text: $searchQuery, prompt: "Find local thots")
                HStack {
                    //Image(systemName: "person.crop.circle").foregroundColor(.white)
                    TextField("Find local thots", text: $searchQuery)
                        .font(.system(size: 18, weight: .regular))
                        .padding(7)  //Search Field V
                        .padding(.horizontal, 10) //Text Placeholder
                        .background(Color(red: 0.145, green: 0.145, blue: 0.173))
                        .cornerRadius(10)
                        .padding(.horizontal, 10) //Search Bar
                        .onTapGesture {
                            self.isEditing = true
                        }
                        .searchable(text: $searchQuery, prompt: "Find local thots")
                        .foregroundColor(.white) //MARK: Doesn't work in iOS 16 yet? 🤔
                        .accentColor(.white)
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.searchQuery = ""
                        }) {
                            Text("Cancer")
                        }
                        .padding(.trailing, 10)
                        .transition(.move(edge: .trailing))
                        //.withAnimation(SwiftUI.Animation?, <#T##() -> Result#>)
                    }
                }
            }
            Spacer().frame(height: 40)
            
            // Sections
            Group {
                HStack {
                    Image(systemName: "tray.full")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue)
                        .frame(width: 22.0, height: 22.0)
                    Text("Inbox")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
                HStack {
                    Image(systemName: "mail.stack")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(width: 22.0, height: 22.0)
                    Text("All tasks")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
                Spacer().frame(height: 40)
                HStack {
                    Image(systemName: "flame")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .frame(width: 22.0, height: 22.0)
                    Text("Today")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
                HStack {
                    Image(systemName: "calendar")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.yellow)
                        .frame(width: 22.0, height: 22.0)
                    Text("Upcoming")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
                HStack {
                    Image(systemName: "text.insert")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.mint)
                        .frame(width: 22.0, height: 22.0)
                    Text("Anytime")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
                HStack {
                    Image(systemName: "bookmark")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.green)
                        .frame(width: 22.0, height: 22.0)
                    Text("Someday")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
                Spacer().frame(height: 40)
                HStack {
                    Image(systemName: "app.badge.checkmark")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.indigo)
                        .frame(width: 22.0, height: 22.0)
                    Text("Journal")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
                Divider()
                    .padding(24)
                    .foregroundColor(.white)
                    .accentColor(.white) //Kurwa
            }
            // Areas
            Group {
                //TODO: _
                HStack {
                    Image(systemName: "cube")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.mint)
                        .frame(width: 22.0, height: 22.0)
                    Text("Personal")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
                HStack {
                    Image(systemName: "cube")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.mint)
                        .frame(width: 22.0, height: 22.0)
                    Text("Education")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
                HStack {
                    Image(systemName: "cube")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.mint)
                        .frame(width: 22.0, height: 22.0)
                    Text("Leisure")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
            }
            Spacer()
            // Settings
            Group {
                HStack {
                    Image(systemName: "gear")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .frame(width: 22.0, height: 22.0)
                    Text("Settings")
                        .font(.system(size: 22, weight: .semibold))
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.09, green: 0.09, blue: 0.102))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
