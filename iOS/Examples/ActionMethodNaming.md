# Action method naming 👎

Action methods should clearly reflect the action they perform.

```swift
@IBAction func addToRoute(sender: AnyObject) {
  let storyboard = UIStoryboard(name: "SavedRoutes", bundle: nil)
  if let resultController = storyboard.instantiateViewControllerWithIdentifier("overviewBuildingsViewController") as? OverviewBuildingsViewController {
    resultController.totalDistance = viewModel.getTotalDistance(routeManager.savedWayPoints)
    self.navigationController?.pushViewController(resultController, animated: true)
  }
}
```

This method creates and presents a new ViewController with pre-filled data, the "adding to route" is done in OverviewBuildingsViewController.
A better solution is to pass data to OverviewBuildingsViewController in prepareForSegue.

```swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let overviewBuildingsViewController = segue.destination as? OverviewBuildingsViewController {
      overviewBuildingsViewController.totalDistance = viewModel.getTotalDistance(routeManager.savedWayPoints)
    }
}
```
