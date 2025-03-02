//
//  ViewController.swift
//  TableView
//
//  Created by Andrew Ward on 3/1/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    /*
     10 TimeZone structs created to be displayed in a TableView.
     */
    var timeZones = [
        TimeZone(label: "Baker Island", utcOffset: "UTC -12:00"),
        TimeZone(label: "American Samoa", utcOffset: "UTC -11:00"),
        TimeZone(label: "Hawaii", utcOffset: "UTC -10:00"),
        TimeZone(label: "Alaska", utcOffset: "UTC -09:00"),
        TimeZone(label: "Pacific Time", utcOffset: "UTC -08:00"),
        TimeZone(label: "Mountain Time", utcOffset: "UTC -07:00"),
        TimeZone(label: "Central Time", utcOffset: "UTC -06:00"),
        TimeZone(label: "Eastern Time", utcOffset: "UTC -05:00"),
        TimeZone(label: "Atlantic Time", utcOffset: "UTC -04:00"),
        TimeZone(label: "Falkland Islands", utcOffset: "UTC -03:00")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    /*
     The below functions were modeled after the examples in the lecture.
     Uses a table view to display the 10 TimeZone structs created above.
     */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timeZones.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath);
        var content = cell.defaultContentConfiguration();
        content.text = timeZones[indexPath.row].label;
        content.secondaryText = timeZones[indexPath.row].utcOffset;
        cell.contentConfiguration = content;
        return cell;
    }
    
    /*
     Pass the TimeZone object to the TimeZoneView controller on button click
     */
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toTimeZoneView", sender: timeZones[indexPath.row]);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTimeZoneView",
           let timeZoneViewController = segue.destination as? TimeZoneView,
           let selectedTimeZone = sender as? TimeZone {
            timeZoneViewController.tz = selectedTimeZone
        }
    }



}

