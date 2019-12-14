#user can view which plants on which dates
#schedule covers the next 12 weeks start next monday
#plants don't get watered on saturday/sundays
#each plant must be watered

- Create a plant class
  >o needs days 'water_after' variable
  >o needs name

- Create calendar class
  <!-- o starting date/ending date method -->
  <!-- o parse through the next 12 weeks and create list of dates -->
  <!-- o create weekdays array/weekends array method -->

- Create schedule
  o plant instance
  o calendar instance

  o all dates possible - based off 'water_after' method
    - create array of possible points
    - iterate through weekend dates and compare with possible dates
    - if weekend, increment up. If still weekend, increment down.
  o output dates method


  1. Takes in json file
  2. Iterates through and creates Plant instances
  3. Create calendar instance > pass that to Schedule instance
  4. Create Schedule instance
  5. Pass in Plant instance and Calendar instance
  6. Iterate through all dates and pick out specific dates according to 3
  7. Determine if date is valid or not as you pass through each 3rd date
  8. If valid, save in array
  9. Print out text of plant along with all valid dates from start to finish
# plant_watering_app
