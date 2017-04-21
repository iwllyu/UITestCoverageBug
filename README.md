## Test case for missing UI Test Coverage. The problem/potential solution is detailed [here](https://github.com/nakiostudio/xcov/issues/22#issuecomment-232014641) by thelvis4.

[Open Radar](https://openradar.appspot.com/29033348)

Still bugged in:
* XCode 7.3.1
* XCode 8.1 with Swift 3 (thanks [raven](https://github.com/iwllyu/UITestCoverageBug/issues/2))
* Xcode 8.2 with Swift 3
* Xcode 8.3.2 ([michaellady](https://github.com/nakiostudio/xcov/issues/22#issuecomment-295951863))


Coverage report for tests run via xcodebuild CLI do not include the coverage from UI tests. Tests run from XCode IDE however do include the coverage from UI Tests

#### Running the the tests from XCode IDE (This is the Expected Behavior)
1. Run from XCode IDE (Product -> Test, or Command+U)
2. Generate code coverage. Replace with path to your `Coverage.profdata`
  * xcrun llvm-cov report -instr-profile /Users/wyu/Library/Developer/Xcode/DerivedData/UITestCoverageBug-gmabjwcdjgubltcmkzrskeqbhvcw/Build/Intermediates/CodeCoverage/Coverage.profdata /Users/wyu/Library/Developer/Xcode/DerivedData/UITestCoverageBug-gmabjwcdjgubltcmkzrskeqbhvcw/Build/Intermediates/CodeCoverage/Products/Debug-iphonesimulator/UITestCoverageBug.app/UITestCoverageBug

|Filename                                                                                    |Regions|    Miss|   Cover| Functions|  Executed|
|--------------------------------------------------------------------------------------------|-------|--------|--------|----------|----------|
|/Users/wyu/sandbox/iwllyu-github/UITestCoverageBug/UITestCoverageBug/AppDelegate.swift      |     6 |      4 | 33.33% |        6 |   33.33% |
|/Users/wyu/sandbox/iwllyu-github/UITestCoverageBug/UITestCoverageBug/ViewController.swift   |     5 |      1 | 80.00% |        5 |   80.00% |
|TOTAL                                                                                       |    11 |      5 | 54.55% |       11 |   54.55% |                                                                                   11       5  54.55%        11    54.55%

--------------

#### Running the tests from xcodebuild CLI (Bugged Behavior, Coverage.profdata does not include coverage for UI Tests)
1. Build the project
```
xcodebuild clean test -scheme UITestCoverageBug \
    -project UITestCoverageBug.xcodeproj \
    -configuration Debug \
    -destination 'platform=iOS Simulator,name=iPhone 6,OS=9.3' \
    -enableCodeCoverage YES
```
2. Generate code coverage. Replace with path to your `Coverage.profdata`
  * xcrun llvm-cov report -instr-profile /Users/wyu/Library/Developer/Xcode/DerivedData/UITestCoverageBug-gmabjwcdjgubltcmkzrskeqbhvcw/Build/Intermediates/CodeCoverage/Coverage.profdata /Users/wyu/Library/Developer/Xcode/DerivedData/UITestCoverageBug-gmabjwcdjgubltcmkzrskeqbhvcw/Build/Intermediates/CodeCoverage/Products/Debug-iphonesimulator/UITestCoverageBug.app/UITestCoverageBug

|Filename                                                                                    |Regions|    Miss|   Cover| Functions|  Executed|
|--------------------------------------------------------------------------------------------|-------|--------|--------|----------|----------|
|/Users/wyu/sandbox/iwllyu-github/UITestCoverageBug/UITestCoverageBug/AppDelegate.swift      |     6 |      4 | 33.33% |        6 |   33.33% |
|/Users/wyu/sandbox/iwllyu-github/UITestCoverageBug/UITestCoverageBug/ViewController.swift   |     5 |      3 | 40.00% |        5 |   40.00% |
|TOTAL                                                                                       |    11 |      7 | 36.36% |       11 |   36.36% |

