puts 'Cleaning database...'
Place.destroy_all
puts 'Creating places...'

places_attributes = [
 {
    name:                 'Sahara',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  '2'
  },
  {
    name:                 'Tristan De Cunha',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  '2'
  },
 {
    name:                 'Motuo',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  '3'
  },
  {
    name:                 'Ittoqqortoormiit',
    continent:            'North America',
    availability:         true,
    level_of_remoteness:  '2'
  },
 {
    name:                 'McMurdo Station',
    continent:            'Antarctica',
    availability:         true,
    level_of_remoteness:  '3'
  },
  {
    name:                 'Easter Island',
    continent:            'South America',
    availability:         true,
    level_of_remoteness:  '2'
  },
 {
    name:                 'Pitcairn Islands',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  '2'
  },
  {
    name:                 'Oymyakon',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  '1'
  },
]

Place.create!(places_attributes)
puts 'Finished!'
