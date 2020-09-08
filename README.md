# robotFW_POM

-- Implementing POM testing automation model With Robot Framework



How To Run?
-> robot -d reslts careersTest.robot
-> grouping by tags including--> robot -d reslts -i tag careersTest.robot
-> grouping by tags excluding--> robot -d reslts -e tag careersTest.robot



How to run it? run the run.bat file containing the terminal lines to execute the tests. you will need to change the first line of it to your directory.

xplanation:

pages directory:contains robot files with the pages elements.

uploads directory:contains data to be used in the test scenarios.

testDataGenerator directory: contains robot file to generate random data for the tests like phone numbers, emails, names, ... etc. .

tests directory: contains robot file/s to use the tests steps and scenarios to be run.

what to be added in the future ?? Jenkins integration, docker integration, DDT design.
