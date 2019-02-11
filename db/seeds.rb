# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_data = [
  {
    userid: 'ngalbraeth0',
    password: 'tDji5vgQPV',
    name: 'Nolan Galbraeth',
    affiliate_id: 2,
    phone: '757-568-1955',
    picture: 'http://dummyimage.com/200x200.jpg/5fa2dd/ffffff',
    gender: 'Male',
    age: 33
  }, {
    userid: 'mfumagall1',
    password: 'v1E8eHO6hmCY',
    name: 'Mei Fumagall',
    affiliate_id: 14,
    phone: '807-164-8057',
    picture: 'http://dummyimage.com/200x200.jpg/dddddd/000000',
    gender: 'Female',
    age: 31
  }, {
    userid: 'jranyell2',
    password: 'y3vPV4w',
    name: 'Jan Ranyell',
    affiliate_id: 15,
    phone: '842-233-1589',
    picture: 'http://dummyimage.com/200x200.jpg/ff4444/ffffff',
    gender: 'Male',
    age: 31
  }, {
    userid: 'abaccus3',
    password: 'gMsTii6h',
    name: 'Agna Baccus',
    affiliate_id: 7,
    phone: '415-642-5801',
    picture: 'http://dummyimage.com/200x200.jpg/dddddd/000000',
    gender: 'Female',
    age: 22
  }, {
    userid: 'mwoodington4',
    password: '8Lzjst4e63S',
    name: 'Marje Woodington',
    affiliate_id: 15,
    phone: '477-427-7933',
    picture: 'http://dummyimage.com/200x200.jpg/5fa2dd/ffffff',
    gender: 'Female',
    age: 27
  }, {
    userid: 'jblabie5',
    password: '9k33pqCD',
    name: 'John Blabie',
    affiliate_id: 13,
    phone: '115-975-1989',
    picture: 'http://dummyimage.com/200x200.jpg/cc0000/ffffff',
    gender: 'Male',
    age: 33
  }, {
    userid: 'djorgesen6',
    password: 'pf8bn4',
    name: 'Denny Jorgesen',
    affiliate_id: 9,
    phone: '168-957-1627',
    picture: 'http://dummyimage.com/200x200.jpg/dddddd/000000',
    gender: 'Female',
    age: 26
  }, {
    userid: 'rbereford7',
    password: 'WSEOfz2EpFP',
    name: 'Rivalee Bereford',
    affiliate_id: 15,
    phone: '304-635-6469',
    picture: 'http://dummyimage.com/200x200.jpg/ff4444/ffffff',
    gender: 'Female',
    age: 50
  }, {
    userid: 'bdahler8',
    password: 'EXG2oufwdZsr',
    name: 'Beverie Dahler',
    affiliate_id: 3,
    phone: '499-677-5270',
    picture: 'http://dummyimage.com/200x200.jpg/dddddd/000000',
    gender: 'Female',
    age: 24
  }, {
    userid: 'pdemaine9',
    password: '2jxfidzbjC',
    name: 'Peterus Demaine',
    affiliate_id: 2,
    phone: '888-755-9845',
    picture: 'http://dummyimage.com/200x200.jpg/5fa2dd/ffffff',
    gender: 'Male',
    age: 36
  }, {
    userid: 'bandrocka',
    password: 'FRYPylE',
    name: 'Bobbe Androck',
    affiliate_id: 10,
    phone: '383-818-1458',
    picture: 'http://dummyimage.com/200x200.jpg/dddddd/000000',
    gender: 'Female',
    age: 24
  }, {
    userid: 'khissettb',
    password: 'MEtXiy6',
    name: 'Katharine Hissett',
    affiliate_id: 1,
    phone: '625-408-6149',
    picture: 'http://dummyimage.com/200x200.jpg/ff4444/ffffff',
    gender: 'Female',
    age: 35
  }, {
    userid: 'ewalesbyc',
    password: 'X2062PbtBoh',
    name: 'Emiline Walesby',
    affiliate_id: 8,
    phone: '295-696-8972',
    picture: 'http://dummyimage.com/200x200.jpg/ff4444/ffffff',
    gender: 'Female',
    age: 46
  }, {
    userid: 'gcogginsd',
    password: 'Vk3GNd43',
    name: 'Gerick Coggins',
    affiliate_id: 13,
    phone: '456-108-7892',
    picture: 'http://dummyimage.com/200x200.jpg/cc0000/ffffff',
    gender: 'Male',
    age: 35
  }, {
    userid: 'jrammee',
    password: 'N2LXXVg',
    name: 'Jemmy Ramme',
    affiliate_id: 2,
    phone: '491-110-4176',
    picture: 'http://dummyimage.com/200x200.jpg/5fa2dd/ffffff',
    gender: 'Female',
    age: 28
  }]

  affiliates_data = [
    {
  affiliateid: 'Mydeo',
  password: 'jb6GPCYhzo',
  name: 'Gwenni Gilloran',
  address: '819 John Wall Center',
  phone: '775-534-2596',
  picture: 'http://dummyimage.com/200x200.jpg/ff4444/ffffff',
  website: 'freewebs.com',
  sns: 'baidu.com'
}, {
  affiliateid: 'Realbridge',
  password: 'QVz2mEvXd',
  name: 'Kathryne Flagg',
  address: '0 Shelley Plaza',
  phone: '995-842-1734',
  picture: 'http://dummyimage.com/200x200.jpg/cc0000/ffffff',
  website: 'wix.com',
  sns: 'cnet.com'
}, {
  affiliateid: 'Lazzy',
  password: 'TvthDLgk',
  name: 'Feodor Gleeton',
  address: '25 Dovetail Plaza',
  phone: '918-659-5195',
  picture: 'http://dummyimage.com/200x200.jpg/cc0000/ffffff',
  website: 'nyu.edu',
  sns: 'de.vu'
}, {
  affiliateid: 'Leenti',
  password: 'useOOO',
  name: 'Omar Lumsden',
  address: '1858 Lerdahl Court',
  phone: '565-144-5868',
  picture: 'http://dummyimage.com/200x200.jpg/ff4444/ffffff',
  website: 'friendfeed.com',
  sns: 'exblog.jp'
}, {
  affiliateid: 'Quire',
  password: 'IDFZsBCTq0PW',
  name: 'Richmound Hurt',
  address: '17 Graedel Way',
  phone: '745-529-1560',
  picture: 'http://dummyimage.com/200x200.jpg/5fa2dd/ffffff',
  website: 'wikimedia.org',
  sns: 'tripod.com'
}, {
  affiliateid: 'Lajo',
  password: 'qKTBgDivm',
  name: 'Melicent Deerness',
  address: '2 Dovetail Junction',
  phone: '266-658-5354',
  picture: 'http://dummyimage.com/200x200.jpg/cc0000/ffffff',
  website: 'telegraph.co.uk',
  sns: 'theguardian.com'
}, {
  affiliateid: 'Tavu',
  password: 'Cxlegca',
  name: 'Tracy Cossem',
  address: '25 Helena Drive',
  phone: '215-506-3947',
  picture: 'http://dummyimage.com/200x200.jpg/ff4444/ffffff',
  website: 'dell.com',
  sns: 'shinystat.com'
}, {
  affiliateid: 'Twiyo',
  password: 'L1qEc6ilc',
  name: 'Cindi Kosiada',
  address: '885 Vahlen Lane',
  phone: '760-231-7615',
  picture: 'http://dummyimage.com/200x200.jpg/dddddd/000000',
  website: 'plala.or.jp',
  sns: 'google.fr'
}, {
  affiliateid: 'Kazio',
  password: '7hoy9iQ',
  name: 'Emalee Forsdyke',
  address: '862 Meadow Ridge Drive',
  phone: '231-416-9066',
  picture: 'http://dummyimage.com/200x200.jpg/5fa2dd/ffffff',
  website: 'networksolutions.com',
  sns: 'ocn.ne.jp'
}, {
  affiliateid: 'Skilith',
  password: '7FmiVEZne',
  name: 'Brittani Kelby',
  address: '5 Moulton Pass',
  phone: '805-486-8910',
  picture: 'http://dummyimage.com/200x200.jpg/cc0000/ffffff',
  website: 'google.com',
  sns: 'sphinn.com'
}, {
  affiliateid: 'Avamba',
  password: '7ihxwx',
  name: 'Desmund Graveney',
  address: '19 Westerfield Drive',
  phone: '596-222-6328',
  picture: 'http://dummyimage.com/200x200.jpg/5fa2dd/ffffff',
  website: 'netlog.com',
  sns: 'histats.com'
}, {
  affiliateid: 'Edgepulse',
  password: 'dERdA3MTgcPE',
  name: 'Helaine Whitloe',
  address: '0 Village Green Terrace',
  phone: '666-769-1296',
  picture: 'http://dummyimage.com/200x200.jpg/ff4444/ffffff',
  website: 'cloudflare.com',
  sns: 'wp.com'
}, {
  affiliateid: 'Mynte',
  password: 'B1Oh4ckU3G1',
  name: 'Benita Burkett',
  address: '68 Hermina Junction',
  phone: '689-863-8385',
  picture: 'http://dummyimage.com/200x200.jpg/ff4444/ffffff',
  website: 'amazon.co.jp',
  sns: 'ucsd.edu'
}, {
  affiliateid: 'Gevee',
  password: 'ILPl2AN1JGF',
  name: 'Marylynne Luker',
  address: '36 Gina Place',
  phone: '130-118-0493',
  picture: 'http://dummyimage.com/200x200.jpg/dddddd/000000',
  website: 'howstuffworks.com',
  sns: 'cocolog-nifty.com'
}, {
  affiliateid: 'Vidoo',
  password: '0MfybXgF',
  name: 'Lainey Kringe',
  address: '6 Coolidge Crossing',
  phone: '753-515-6968',
  picture: 'http://dummyimage.com/200x200.jpg/dddddd/000000',
  website: '163.com',
  sns: 'joomla.org'
}]

users_data.each do |data|
  User.create!(data)
end

affiliates_data.each do |data|
  Affiliate.create!(data)
end