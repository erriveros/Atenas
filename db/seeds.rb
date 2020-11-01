p = Prefecture.create(name: "prefectura")
ps = PoliceStation.create(prefecture: p)
pu = PoliceUnit.create(police_station: ps)
reg_prosecution = RegionalProsecution.create(name: "fiscalia regional")
prosecution = LocalProsecution.create(name: "fiscalia 1", regional_prosecution: reg_prosecution)
u1 = User.create(police_unit: pu, email: "andresvialcorrea99@gmail.com", password: "1egweg234")
u2 = User.create(local_prosecution: prosecution, email: "andresvialcorrea97@gmail.com", password: "1egweg234")
police = PoliceMan.create(name: "dijweid", rut: "19638546-k", badge:1, police_unit: pu)
prosecutor = Prosecutor.create(name: "afsfa", rut: "19638846-k", local_prosecution: prosecution)
procedure = Procedure.create(classification: 0, police_unit_in_charge: pu, police_in_charge: police, local_prosecution_in_charge: prosecution, prosecutor_in_charge: prosecutor)
person = Person.create(name: "Juan", last_name: "Perez", rut: "19838173-k")
pinp = PersonInProcedure.create(procedure: procedure, person: person, role: 1)
crime = Crime.create()
crime2 = Crime.create()
msg1 = Message.create(user: u1, procedure: procedure, content: "test message1")
msg2 = Message.create(user: u1, procedure: procedure, content: "test message 2")
msg3 = Message.create(user: u2, procedure: procedure, content: "test message    3")
