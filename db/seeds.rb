# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Person.create!(
  :first_name=>'Nick',
  :last_name=>'Pearson',
  :number=>'7782311022',
  :email=>'nick@pccrovers.com',
  :postal_code=>'V6H 1N9',
  :city=>'Vancouver',
  :role=>'Team 100'
)

Person.create!(
  :first_name=>'Bethany',
  :number=>'6044698785',
  :postal_code=>'',
  :city=>'Richmond',
  :role=>'Leader'
)

Person.create!(
  :first_name=>'Rachel',
  :city=>'West Vancouver',
  :role=>'Potential'
)

Person.create!(
  :first_name=>'Richard',
  :last_name=>'Toth',
  :number=>'6049991221',
  :email=>'Rich@foo.com',
  :city=>'North Vancouver',
  :role=>'Potential'
)

Person.create!(
  :first_name=>'Teniya',
  :last_name=>'Booth',
  :number=>'7782514786',
  :email=>'Tdot@foo.com',
  :city=>'Vancouver',
  :role=>'Potential'
)

Person.create!(
  :first_name=>'Kevin',
  :last_name=>'Li',
  :number=>'6048893293',
  :email=>'kevin.li@pccrovers.com',
  :city=>'Richmond',
  :role=>'Team 100'
)

Person.create!(
  :first_name=>'Christal',
  :last_name=>'Mercante',
  :email=>'Happy_puppy@lookatme.com',
  :role=>'Potential'
)

Person.create!(
  :first_name=>'Feliciay',
  :last_name=>'Day',
  :city=>'Vancouver',
  :role=>'Potential'
)

Person.create!(
  :first_name=>'Thomas',
  :last_name=>'Rather',
  :number=>'7789983562',
  :city=>'Burnaby',
  :role=>'Potential'
)

Person.create!(
  :first_name=>'Michael',
  :last_name=>'Demeyer',
  :email=>'DMic@bar.com',
  :role=>'Potential'
)

Person.create!(
  :first_name=>'Jessica',
  :last_name=>'Thompson',
  :number=>'7785417236',
  :email=>'Jess@foo.com',
  :postal_code=>'V5R 3E4',
  :city=>'Burnaby',
  :role=>'Potential'
)

Person.create!(
  :first_name=>'Shannon',
  :last_name=>'Mickelson',
  :city=>'Richmond',
  :role=>'Potential'
)