Idea:
User begins program and inputs state selection. After selection, user inputs city to then select airport.
After airport selection, user is presented with QuickFly statistics concerning selection.


Goals
<!-- 1. Design Folder Structure for project - used bundler to generate. -->
<!-- 2. Connect to GitHub - -->
<!-- 3. File runs program -->
4. Stub design of functionality
<!-- -stub selection menu segment -->
-finish stubbing second selection menu (remove code from menu 1, call from call method itself)
5. Code, update, review


Notes concerning development
<!-- Just in case capture doesnt include alt tabs- git add's, chrome tab with resource air nav page up, and ... a lot of thinking too much =)  -->
<!-- remove repeating puts on restarts. Removed, but still needs to address exit (exit and repeats function as intended. used submenu+ternary) -->
<!-- -Add segment to notes  -->
<!-- Git bash windows makes app code run out of order- must use cmd to execute bin file during development.  -->
<!-- Alter requires- app was trying to call fq/bin/lib/fq instead of fq/lib/fq   -->

Dev Thoughts
#Object: airport. Consider what it is, in relation to a pilot using flyquick. (reference site/charts for data)
-has an identifier
-has a runway(s)
-has an approach frequency
-has a main frequency (tower or unicom)
-pattern altitude
--has a wx frequency  (use metar? or just provide frequency? ...which is more pertinent to fly-'quick'? )

--Possible includes
  --can/should include image?

  --important notes: NOTAMS? TFR?
  -- services? ...gas? FBO? consider.
##how to get the cmd for atom?
##Will FlyQuick lib folder or FlyQuick.rb naming cause issues? So far, no, but uncertain down the road.
<!-- #also, more importantly, need github setup -->
#desire to commit every 15minutes, from within editor...
