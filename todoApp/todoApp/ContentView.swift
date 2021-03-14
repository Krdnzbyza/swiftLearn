
import SwiftUI

let dailyTasks = [
 "-Check All Task",
    "-Read a Book ",
    "-Gym and walking ",
]
let weeklyTasks = [
    "- Write an article",
    "- Fınısh a movie",
    "- Planing weekly plan",
    "- Clean the room "
    ]
let monhtlyTasks = [
    "-Check mission",
    "-Control monthly task"
]
struct ContentView: View {
    var body: some View {
//        List(nightlyTasks, id : \.self ,  rowContent: {taskName in Text(taskName)})
        NavigationView {
            List  {
            Section(header :
                        TaskHeaderSection(
                        symbolSystemName: "moon.stars.fill",
                            headerText : " Daily Task") ) {
                ForEach(
                    dailyTasks, id : \.self, content : {
                            taskName in
                        NavigationLink ( taskName, destination : DetailsView(taskName: taskName )
                        )
                    })
            }
            Section(header :
                       TaskHeaderSection(symbolSystemName: "highlighter", headerText: "Weekly Task") ){
                ForEach(
                    weeklyTasks, id : \.self,               content :{  taskName in    NavigationLink ( taskName, destination : DetailsView(taskName: taskName )
                    )
                })
            }
            Section(header :
                        TaskHeaderSection(symbolSystemName: "calendar", headerText: "Monthly Task") ) { ForEach(
                monhtlyTasks, id : \.self,               content :{  taskName in    NavigationLink ( taskName, destination : DetailsView(taskName: taskName )
                )
            })}
            }.listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}
struct TaskHeaderSection: View {
    let symbolSystemName : String
    let headerText : String
    var body: some View {
            HStack {
            Text(Image(systemName: symbolSystemName))
                .fontWeight(.heavy)
                .foregroundColor(.purple)
            Text (headerText)
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(Color.purple)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

