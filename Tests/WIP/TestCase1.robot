*** Settings ***
Suite Setup         Launch ToolsAndroid
Suite Teardown      Close Application
Resource            ../../Resources/UserDefinedKeywords.robot
Resource            ../../Utils/Setup_Test_Folder.robot
Resource            ../../Resources/Locators.robot
Resource            ../../Resources/Pages/LibraryPage.robot

*** Test Cases ***
Just for Test
    # Setup Test Folder
    ${folderNameXpath}         //android.widget.TextView[@resource-id="${APP-ID}:id/tv_file_name"][@text="ceva"]
    Scroll Up And Down In Search For Element    '${folderNameXpath}'