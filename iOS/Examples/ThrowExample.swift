do {
  // Only success cases
  let printerResponse = try send(job: 1140)

  //Do

  ///...

  // You only arrive here if nothing was thrown
} catch {
  print(error)
}


// Zonder do catch
let printerResponse = try? send(job: 1140)

if printerResponse != nil {
  // do
} else {
  print(printerResponse)
}

// Multiple error cases

do {
  // Only success cases
  let printerResponse = try send(job: 1140)
  try report(printerResponse)
  try save(printerResponse)
  //Do

  ///...

  // You only arrive here if nothing was thrown
  // continue
} catch SendError.general {
  // Do something special
} catch {
  print(error)
}

// Multiple zonder do catch
let printerResponse = try? send(job: 1140)

if printerResponse != nil {
  let reportResult = try? report(printerResponse)
  if reportResult != nil {
    let saveResult = try? save(printerResponse)
    if saveResult == nil {
      // Success we are complete!
    } else {
      print("save error")
    }
  } else {
    print("report error")
  }
} else {
  print("Send error")
}
