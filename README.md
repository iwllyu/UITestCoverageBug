Run from Xcode IDE (Product -> Test, or Command+U)
xcrun llvm-cov report -instr-profile /Users/wyu/Library/Developer/Xcode/DerivedData/UITestCoverageBug-gmabjwcdjgubltcmkzrskeqbhvcw/Build/Intermediates/CodeCoverage/Coverage.profdata /Users/wyu/Library/Developer/Xcode/DerivedData/UITestCoverageBug-gmabjwcdjgubltcmkzrskeqbhvcw/Build/Intermediates/CodeCoverage/Products/Debug-iphonesimulator/UITestCoverageBug.app/UITestCoverageBug

Filename                                                                                    Regions    Miss   Cover Functions  Executed
---------------------------------------------------------------------------------------------------------------------------------------
/Users/wyu/sandbox/iwllyu-github/UITestCoverageBug/UITestCoverageBug/AppDelegate.swift            6       4  33.33%         6    33.33%
/Users/wyu/sandbox/iwllyu-github/UITestCoverageBug/UITestCoverageBug/ViewController.swift         5       1  80.00%         5    80.00%
---------------------------------------------------------------------------------------------------------------------------------------
TOTAL                                                                                            11       5  54.55%        11    54.55%

--------------

xcodebuild clean test -scheme UITestCoverageBug \
    -project UITestCoverageBug.xcodeproj \
    -configuration Debug \
    -destination 'platform=iOS Simulator,name=iPhone 6,OS=9.3' \
    -enableCodeCoverage YES
                 

xcrun llvm-cov report -instr-profile /Users/wyu/Library/Developer/Xcode/DerivedData/UITestCoverageBug-gmabjwcdjgubltcmkzrskeqbhvcw/Build/Intermediates/CodeCoverage/Coverage.profdata /Users/wyu/Library/Developer/Xcode/DerivedData/UITestCoverageBug-gmabjwcdjgubltcmkzrskeqbhvcw/Build/Intermediates/CodeCoverage/Products/Debug-iphonesimulator/UITestCoverageBug.app/UITestCoverageBug

Filename                                                                                    Regions    Miss   Cover Functions  Executed
---------------------------------------------------------------------------------------------------------------------------------------
/Users/wyu/sandbox/iwllyu-github/UITestCoverageBug/UITestCoverageBug/AppDelegate.swift            6       4  33.33%         6    33.33%
/Users/wyu/sandbox/iwllyu-github/UITestCoverageBug/UITestCoverageBug/ViewController.swift         5       3  40.00%         5    40.00%
---------------------------------------------------------------------------------------------------------------------------------------
TOTAL                                                                                            11       7  36.36%        11    36.36%

