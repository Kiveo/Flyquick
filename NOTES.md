Idea:
User begins program and inputs state selection. After selection, user inputs city to then select airport.
After airport selection, user is presented with QuickFly statistics concerning selection.


Goals
<!-- 1. Design Folder Structure for project - used bundler to generate. -->
<!-- 2. Connect to GitHub - -->
<!-- 3. File runs program -->
<!-- 4. Stub basic design of functionality -->
<!-- -stub selection menu segment -->
<!-- -finish stubbing second selection menu (remove code from menu 1, call from call method itself) -->
5. Scrape from airnav
6. Code, update, review


Notes concerning development
List states needs to be addressed or removed, eventually.
<!-- Need to add more details to individual airport objects via scraping -->
<!-- adding pry and nokogiri for further coding/testing. -->
<!-- Scrape airport list from airnav...based on state selection? maybe stub state? -->
<!-- Just in case capture doesnt include alt tabs- git add's, chrome tab with resource air nav page up, and ... a lot of thinking too much =)  -->
<!-- remove repeating puts on restarts. Removed, but still needs to address exit (exit and repeats function as intended. used submenu+ternary) -->
<!-- -Add segment to notes  -->
<!-- Git bash windows makes app code run out of order- must use cmd to execute bin file during development.  -->
<!-- Alter requires- app was trying to call fq/bin/lib/fq instead of fq/lib/fq   -->

Dev Thoughts
#clean up code, lots of loose, fluff, and vestigial remnants.
# airport_ops_table = airport_tables[8] #may decide to use this info in later revision.
##Will FlyQuick lib folder or FlyQuick.rb naming cause issues? So far, no, but uncertain down the road.
<!-- #desire to commit every 15minutes, from within editor... -->
<!-- #Will not test all possible combination of selections. There are thousands of possible results, well beyond the scope of the app's purpose of a quick check. -->
<!-- ##Hopefully any bug reports/errors do not happen. The AirNav webpage does not use css selectors, so scraping with nokogiri...is cumbersome. -->
