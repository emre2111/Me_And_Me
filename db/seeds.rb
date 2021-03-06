puts 'Cleaning database...'
Booking.destroy_all
Place.destroy_all
puts 'Creating places...'

places_attributes = [
 {

  name:                 'Sahara',
  continent:            'Africa',
  price:                 90,
  availability:         true,
  level_of_remoteness:  'very remote',
  remote_photo_url:      'https://images.unsplash.com/photo-1523549115643-7fc0b74a2250?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
},
{
  name:                 'Tris De Cunha',
  continent:            'Africa',
  availability:         true,
  price:                 80,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'Motuo',
  continent:            'Asia',
  availability:         true,
  price:                 60,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1457459686225-c7db79d4e59f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
},
{
  name:                 'Ittoqqortoormiit',
  continent:            'North America',
  availability:         true,
  price:                 90,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1517345438041-cf88a04b4689?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'Mount Whitney',
  continent:            'North America',
  availability:         true,
  price:                 150,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1465919292275-c60ba49da6ae?ixlib=rb-1.2.1&auto=format&fit=crop&w=786&q=80'
},
{
  name:                 'Easter Island',
  continent:            'South America',
  availability:         true,
  price:                 100,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1510711547938-04fb9010e471?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'Pitcairn Islands',
  continent:            'Asia',
  availability:         true,
  price:                 50,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1527401850656-0f34108fdb30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=870&q=80'
},
{
  name:                 'Manyara',
  continent:            'Asia',
  availability:         true,
  price:                 50,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1547720074-e65ac1a46546?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
},
{
  name:                 'West Sahara',
  continent:            'Africa',
  availability:         true,
  price:                 75,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1489493173507-6feea31f12ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'Seljalandsfoss Waterfall',
  continent:            'Africa',
  availability:         true,
  price:                 80,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1476610182048-b716b8518aae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=827&q=80'
},
{
  name:                 'Tibet',
  continent:            'Asia',
  availability:         true,
  price:                 40,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1512291854075-368fef66af69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80'
},
{
  name:                 'Gurdongmar',
  continent:            'North America',
  availability:         true,
  price:                 80,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1467602472207-e33153d8856f?ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80'
},
{
  name:                 'Tanzania',
  continent:            'Africa',
  availability:         true,
  price:                 140,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1516426122078-c23e76319801?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=748&q=80'
},
{
  name:                 'Atacama',
  continent:            'South America',
  availability:         true,
  price:                 130,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1447109048072-e9278d5fd94c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'Madagascar',
  continent:            'Asia',
  availability:         true,
  price:                 90,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1503601607547-7cc2bdf82309?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
},
{
  name:                 'Oymyakon',
  continent:            'Asia',
  availability:         true,
  price:                 70,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1494253188410-ff0cdea5499e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'Oljato',
  continent:            'Africa',
  availability:         true,
  price:                 60,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1480004902249-cdb28d6a01a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=872&q=80'
},
{
  name:                 'Navagio',
  continent:            'Africa',
  availability:         true,
  price:                 80,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1527254043654-e7e0f9649321?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80'
},
{
  name:                 'Sestroretsk',
  continent:            'Asia',
  availability:         true,
    price:                 60,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1485714841608-40e78fbc7fdb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=756&q=80'
},
{
  name:                 'Big Sur',
  continent:            'North America',
  availability:         true,
  price:                 50,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://tracks-trails.com/wp-content/uploads/2015/07/shutterstock_1275548661.jpg'
},
{
  name:                 'McMurdo Station',
  continent:            'Antarctica',
  availability:         true,
  price:                 150,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1516977621718-a0cb58c12ebb?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'Antarctica Sailing',
  continent:            'Antarctica',
  availability:         true,
  price:                 250,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1516468243909-447fc0468ded?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'King George Island',
  continent:            'Antarctica',
  availability:         true,
  price:                 250,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1551005915-0e81d56723e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=824&q=80'
},
{
  name:                 'Guatemala',
  continent:            'South America',
  availability:         true,
  price:                 120,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1495571344521-cec5d366af78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80'
},
{
  name:                 'Cuba',
  continent:            'South America',
  availability:         true,
  price:                 90,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1551086144-2e1250996ba7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80'
},
{
  name:                 'Mexico',
  continent:            'South America',
  availability:         true,
  price:                 100,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1529905813659-be668545a2a8?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'Bled',
  continent:            'Asia',
  availability:         true,
  price:                 55,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1478088913771-e3a36f50bb63?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=793&q=80'
},
{
  name:                 'Ngorongoro',
  continent:            'Africa',
  availability:         true,
  price:                 65,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1532017201189-87395e311df4?ixlib=rb-1.2.1&auto=format&fit=crop&w=725&q=80'
},
{
  name:                 'Macquarie Island',
  continent:            'Australia',
  availability:         true,
  price:                 60,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://upload.wikimedia.org/wikipedia/commons/d/d2/MacquarieIslandIsthmus.JPG'
},
{
  name:                 'Svalbard',
  continent:            'Europe',
  availability:         true,
  price:                 50,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://list25.com/wp-content/uploads/2011/11/Longyearbyen_Gulbrandsen_1140px-610x400.jpg'
},
{
  name:                 'Prags',
  continent:            'Europe',
  availability:         true,
  price:                 50,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1519375722682-222902a76bf6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=777&q=80'
},
{
  name:                 'Hovden',
  continent:            'Europe',
  availability:         true,
  price:                 50,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://images.unsplash.com/photo-1474562789610-2a30fa4a6608?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
},
{
  name:                 'Cape York',
  continent:            'Australia',
  availability:         true,
  price:                 70,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://d1ic4altzx8ueg.cloudfront.net/finder-au/wp-uploads/2016/09/CapeYork.Shutterstock.jpg'
},
{
  name:                 'Coober Pedy',
  continent:            'Australia',
  availability:         true,
  price:                 80,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://d1ic4altzx8ueg.cloudfront.net/finder-au/wp-uploads/2016/09/TheBreakawaysCooberPedy.Shutterstock.jpg'
},
{
  name:                 'Kangaroo Island',
  continent:            'Australia',
  availability:         true,
  price:                 180,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'https://d1ic4altzx8ueg.cloudfront.net/finder-au/wp-uploads/2016/09/AdmiralsArchKangarooIsland.Shutterstock.jpg'
},
{
  name:                 'Bay of Fires',
  continent:            'Australia',
  availability:         true,
  price:                 120,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://d1ic4altzx8ueg.cloudfront.net/finder-au/wp-uploads/2016/09/BayofFires.Tasmania.Shutterstock.jpg'
},
{
  name:                 'The Nullarbor',
  continent:            'Australia',
  availability:         true,
  price:                 50,
  level_of_remoteness:  'remote',
  remote_photo_url:     'https://d1ic4altzx8ueg.cloudfront.net/finder-au/wp-uploads/2016/09/Nullarbor.SouthAustralia.Shutterstock.jpg'
},
{
  name:                 'Cradle Mountain',
  continent:            'Australia',
  availability:         true,
  price:                 80,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://d1ic4altzx8ueg.cloudfront.net/finder-au/wp-uploads/2016/09/CradleMountainTasmaniaShutterstock.jpg'
},
{
  name:                 'Great Sand Dunes',
  continent:            'North America',
  availability:         true,
  price:                 90,
  level_of_remoteness:  'very remote',
  remote_photo_url:     'https://www.colorado.com/sites/default/files/sandunes_nps.jpg'
},
{
  name:                 'Denali National Park',
  continent:            'North America',
  availability:         true,
  price:                 200,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'https://www.roughguides.com/wp-content/uploads/2017/01/1-Denali-National-Park-BH4FWY-1590x1050.jpg'
},
{
  name:                 'Letchworth State Park',
  continent:            'North America',
  availability:         true,
  price:                 190,
  level_of_remoteness:  'extremely remote',
  remote_photo_url:     'http://i.imgur.com/I4tQd.jpg'
},
]



Place.create!(places_attributes)
puts 'Finished!'
