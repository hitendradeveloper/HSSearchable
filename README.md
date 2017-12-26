# HSSearchable
Easiest way to search from UITableView using UISearchBar in minimum line of code in UIViewController

![HSSearchable](https://github.com/hitendradeveloper/HSSearchable/blob/master/giphy.gif)

## How to integreat source?
1. Directly drag and drop the HSSearchable.swift into your xcode project.

2. Most recommanded: install via cocoapods ([How to use cocoapods](https://guides.cocoapods.org/using/getting-started.html "more info"))

       pod 'HSSearchable'
       
       

## How to use in code ? Just follow the simple steps :)

	struct UserDM {
    	var name: String
	    var city: String
	}

1. extend your class or Structure using the SearchableData delegate

	   extension UserDM: SearchableData {
        var searchValue: String{
          return self.name + " " + self.city //this will search from the name and city both

          //return self.name //this will search from the name only
        }
       }
	

2. Create a variable of 'SearchableWrapper' in the viewController as property

       var usersData = SearchableWrapper()
       var users: [UserDM] { //use this array as you are using array for your tableview controller
          return self.usersData.dataArray as! [UserDM]
       }

3. Set the searchbar delegate and Searching callback

       override func viewDidLoad() {
          super.viewDidLoad()
          self.searchbar.delegate = self.usersData
          self.usersData.searchingCallBack = { isSearching, searchText in
              print("searching Text:= \(searchText)")
              self.tableView.reloadData()
          }
          self.loadDummyData()
       }

4. Set the local array or load data from the server usign API|Webservice call

        func loadDummyData(){
              let user1 = UserDM(name: "Hitendra Solanki", city: "Ahmedabad")
              let user2 = UserDM(name: "Justina Flores", city: "Arizona")
              let user3 = UserDM(name: "Lisa Minick", city: "Casper")
              let user4 = UserDM(name: "Moises Patrick", city: "Reno")
              let user5 = UserDM(name: "Martha Fisher", city: "Tacoma")
              let user6 = UserDM(name: "Martha McDaniel", city: "Irvine")
              let array : Array<UserDM = [
                  user1,
                  user2,
                  user3,
                  user4,
                  user5,
                  user6
              ]
              //In most of the cases, this data will come from the server side
              self.usersData.serverArray = array;
              self.tableView.reloadData()
        }


##

Contact:

twitter: @hitendrahckr
