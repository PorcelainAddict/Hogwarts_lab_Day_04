require('pry')
require_relative('../models/student')
require_relative('../models/houses')

Student.delete_all()
House.delete_all()

ravingclaw = House.new({
  'name' => 'Ravingclaw',
  });
ravingclaw.save()

slitherin = House.new({
  'name' => 'Slither-In'
  });
slitherin.save()

griffindor = House.new({
  'name' => 'Griffin-door'
  });
griffindor.save()

weedsmokingbadger = House.new({
  'name' => 'Weed-Smoking-Badger'
  });
weedsmokingbadger.save()



harry = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'age' => 11,
  'house_id' => 1
  });

harry.save()
hermione = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'age' => 10,
  'house_id' => 2
  });

hermione.save()
draco = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'age' => 13,
  'house_id' => 3
  });

draco.save()



binding.pry
nil
