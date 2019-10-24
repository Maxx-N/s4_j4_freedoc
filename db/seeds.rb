# Efface toutes les bases de données précédentes : 
  Doctor.delete_all
  Patient.delete_all
  Appointment.delete_all

# Définit les docteurs :
  doc1 = Doctor.create(id: 1,first_name: "Céline", last_name: "LE BRUN", specialty: "chirurgien", zip_code: "34000")
  doc2 = Doctor.create(id: 2,first_name: "Jean", last_name: "LE BLOND", specialty: "cardiologue", zip_code: "30000")
  doc3 = Doctor.create(id: 3,first_name: "Louise", last_name: "LE ROUX", specialty: "généraliste", zip_code: "75000")
  doc4 = Doctor.create(id: 4,first_name: "Fabien", last_name: "LE CHAUVE", specialty: "dentiste", zip_code: "01000")
  puts "\n"
  puts "La liste des docteurs a bien été créée :"
  puts "\n"
  tp Doctor.all, :first_name, :last_name, :specialty, :zip_code

# Définit les patients :
  pat1 = Patient.create(id: 1,first_name: "Pierre", last_name: "ROUGE")
  pat2 = Patient.create(id: 2,first_name: "Paul", last_name: "BLEU")
  pat3 = Patient.create(id: 3,first_name: "Jacques", last_name: "VERT")
  pat4 = Patient.create(id: 4,first_name: "Lisa", last_name: "JAUNE")
  puts "\n"
  puts "\nLa liste des patients a bien été créée :"
  puts "\n"
  tp Patient.all, :first_name, :last_name

# Définit un rendez-vous entre le Dr. LE BRUN et Mme JAUNE le 22 novembre à 16h :
  rdv1 = Appointment.create(id: 1,doctor_id: 1, patient_id: 4, date: DateTime.new(2019,11,22,16,00))
  puts "\n"
  puts "Le rendez-vous du 22 novembre a été ajouté"

# Définit un rendez-vous entre le Dr. LE CHAUVE et M. BLEU le 1er décembre à 11h :
  rdv1 = Appointment.create(id: 2,doctor_id: 4, patient_id: 2, date: DateTime.new(2019,12,01,11,00))
  puts "\n"
  puts "Le rendez-vous du 1er décembre a été ajouté :"

# Définit un rendez-vous entre le Dr. LE ROUX et Mme JAUNE le 2 janvier à 9h :
  rdv1 = Appointment.create(id: 3,doctor_id: 3, patient_id: 4, date: DateTime.new(2020,01,02,9,00))
  puts "\n"
  puts "Le rendez-vous du 2 janvier a été ajouté :"

# Affiche la liste des rendez-vous médicaux de Mme JAUNE (date, nom et spécialité du docteur)
  puts "\n"
  puts "Voici la liste des rendez-vous médicaux de Madame Jaune :"
  puts "\n"
  tp pat4.appointments
