p = Prefecture.create(name: "prefectura1")
ps = PoliceStation.create(name: "carabineros1", police_type: 0, prefecture: p)
pu = PoliceUnit.create(name: "unidad de policia 1", police_station: ps)
reg_prosecution = RegionalProsecution.create(name: "fiscalia regional", region: 3)
prosecution = LocalProsecution.create(name: "fiscalia 1", regional_prosecution: reg_prosecution)
u1 = User.create(police_unit: pu, email: "andresvialcorrea99@gmail.com", password: "123456789")
u2 = User.create(local_prosecution: prosecution, email: "andresvialcorrea97@gmail.com", password: "123456789")
police = PoliceMan.create(name: "Jonathan Castro", rut: "19638546-k", badge:1, police_unit: pu)
prosecutor = Prosecutor.create(name: "Rodrigo Ponce", rut: "19638846-k", local_prosecution: prosecution)
procedure = Procedure.create(story: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?", state: 1, address: "Alicura 4339", sector: "Lo Barnechea", region: "Metropolitana", classification: 0, police_unit_in_charge: pu, police_in_charge: police, local_prosecution_in_charge: prosecution, prosecutor_in_charge: prosecutor, involves_deceased: false)
person = Person.create(name: "Juan", last_name: "Perez", rut: "19838173-k", deceased: false, birthday: Date.new(2000))
imputado = Person.create(name: "Martin", last_name: "Moreno", rut: "19838173-k", deceased: true, birthday: Date.new(1997))
imputado2 = Person.create(name: "Gian", last_name: "Traverso", rut: "19687033-4", deceased: false, birthday: Date.new(1997))
PersonInProcedure.create(procedure: procedure, person: person, role: 1)
PersonInProcedure.create(procedure: procedure, person: imputado, role: 0)
PersonInProcedure.create(procedure: procedure, person: imputado2, role: 0)
crime = Crime.create(name: "Robo con intimidación")
crime2 = Crime.create(name: "Desorden público")
CrimeInAccused.create(person: imputado, crime: crime, procedure: procedure, preponderant: true)
CrimeInAccused.create(person: imputado, crime: crime2, procedure: procedure, preponderant: false)
msg1 = Message.create(user: u1, procedure: procedure, content: "test message 1")
msg2 = Message.create(user: u1, procedure: procedure, content: "test message 2")
msg3 = Message.create(user: u2, procedure: procedure, content: "test message 3")
tag1 = Tag.create(name: "Estallido Social")
tag2 = Tag.create(name: "tag2")
tag3 = Tag.create(name: "tag3")
Tagging.create(tag: tag1, procedure: procedure)
Tagging.create(tag: tag3, procedure: procedure)
Tagging.create(tag: tag2, procedure: procedure)
Tagging.create(tag: tag2, procedure: procedure)
Tagging.create(tag: tag3, procedure: procedure)
Tagging.create(tag: tag3, procedure: procedure)

