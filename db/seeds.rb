puts 'Cleaning database...'
Place.destroy_all
puts 'Creating places...'

places_attributes = [
 {
    name:                 'Sahara',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1519992984312-7f25c5d07c35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
  },
  {
    name:                 'Tristan De Cunha',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1528132605717-e86027ccc1a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
  },
 {
    name:                 'Motuo',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'extremely remote',
    photo:                'https://images.unsplash.com/photo-1468476281245-28a3d0cc7dae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
  },
  {
    name:                 'Ittoqqortoormiit',
    continent:            'North America',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1537350322973-c554f725abf7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
  },
 {
    name:                 'McMurdo Station',
    continent:            'Antarctica',
    availability:         true,
    level_of_remoteness:  'extremely remote',
    photo:                'https://images.unsplash.com/photo-1549382257-0177fa8e7abb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
  },
  {
    name:                 'Easter Island',
    continent:            'South America',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1510689065053-5cae1df31d38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
  },
 {
    name:                 'Pitcairn Islands',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1506783323968-e8dad28ae1de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
  },
  {
    name:                 'Oymyakon',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1542750100-c41f99013049?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
  },
]

Place.create!(places_attributes)
puts 'Finished!'
