# Force Unwrapping 👎

You shall not force unwrap. This may crash at runtime if waypoints is nil.
```swift
func tableView(tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
  return waypoints!.count
}
```

Use "if let" or "guard" to safely check if object is nil before using it.
```swift
func tableView(tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
  if let waypoints = waypoints {
    return waypoints.count
  }

  return 0
}
```
