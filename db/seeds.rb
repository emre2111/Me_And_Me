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
    photo:                'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
  },
 {
    name:                 'Motuo',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1457459686225-c7db79d4e59f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:                 'Ittoqqortoormiit',
    continent:            'North America',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1517345438041-cf88a04b4689?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
  },
 {
    name:                 'Mount Whitney',
    continent:            'North America',
    availability:         true,
    level_of_remoteness:  'extremely remote',
    photo:                'https://images.unsplash.com/photo-1465919292275-c60ba49da6ae?ixlib=rb-1.2.1&auto=format&fit=crop&w=786&q=80'
  },
  {
    name:                 'Easter Island',
    continent:            'South America',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1510711547938-04fb9010e471?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
  },
 {
    name:                 'Pitcairn Islands',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1527401850656-0f34108fdb30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=870&q=80'
  },
  {
    name:                 'Manyara',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1547720074-e65ac1a46546?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:                 'West Sahara',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1489493173507-6feea31f12ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
  },
  {
    name:                 'Seljalandsfoss Waterfall',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1476610182048-b716b8518aae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=827&q=80'
  },
 {
    name:                 'Tibet',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1512291854075-368fef66af69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80'
  },
  {
    name:                 'Gurdongmar',
    continent:            'North America',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1467602472207-e33153d8856f?ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80'
  },
 {
    name:                 'Tanzania',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  'extremely remote',
    photo:                'https://images.unsplash.com/photo-1518260243959-eaff079e5987?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=335&q=80'
  },
  {
    name:                 'Atacama',
    continent:            'South America',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1447109048072-e9278d5fd94c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
  },
 {
    name:                 'Madagascar',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1503601607547-7cc2bdf82309?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:                 'Oymyakon',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1494253188410-ff0cdea5499e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
  },
  {
    name:                 'Oljato',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1480004902249-cdb28d6a01a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=872&q=80'
  },
  {
    name:                 'Navagio',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1527254043654-e7e0f9649321?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80'
  },
 {
    name:                 'Sestroretsk',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1485714841608-40e78fbc7fdb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=756&q=80'
  },
  {
    name:                 'Ipswich',
    continent:            'North America',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1509738098174-4002778183da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80'
  },
 {
    name:                 'McMurdo Station',
    continent:            'Antarctica',
    availability:         true,
    level_of_remoteness:  'extremely remote',
    photo:                'https://images.unsplash.com/photo-1516977621718-a0cb58c12ebb?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
  },
  {
    name:                 'Guatemala',
    continent:            'South America',
    availability:         true,
    level_of_remoteness:  'very remote',
    photo:                'https://images.unsplash.com/photo-1495571344521-cec5d366af78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80'
  },
 {
    name:                 'Bled',
    continent:            'Asia',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1478088913771-e3a36f50bb63?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=793&q=80'
  },
  {
    name:                 'Ngorongoro',
    continent:            'Africa',
    availability:         true,
    level_of_remoteness:  'remote',
    photo:                'https://images.unsplash.com/photo-1532017201189-87395e311df4?ixlib=rb-1.2.1&auto=format&fit=crop&w=725&q=80'
  },
]

Place.create!(places_attributes)
puts 'Finished!'
