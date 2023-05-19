INSERT INTO patient 
VALUES ('1908765103','Peter','Petersen','Østre Voldgade','33 3tv','2400','50343434','NULL','760819','48');
INSERT INTO patient
VALUES ('1805026783','Marcus','Rasmussen','Edward Thomsensvej','89 7th','2300','81740306','mnsr@hotmail.dk','020518','21');
INSERT INTO patient
VALUES ('1411025134','Dicte','Wåhlstrand','Morbærhaven','7L','2620','31489945','dicte2002@gmail.com','021114','20');

INSERT INTO doctor
VALUES ('17352','300689617','Jens','Jensen','generel practice','71898903','jeje@lægehusetkøbenhavn.dk');
INSERT INTO doctor
VALUES ('17625','282099252','Line','Andersen','generel practice','71847603','lian@lægehusetkøbenhavn.dk');

INSERT INTO journal(`patientCPR-nr`)
VALUES (1908765103);
INSERT INTO journal(`patientCPR-nr`)
VALUES (1805026783);
INSERT INTO journal(`patientCPR-nr`)
VALUES (1411025134);

INSERT INTO consultation
VALUES (1,1411025134,17625,230519,230519123000,'Får ofte hovedpine, udskriver recept på panodil og ny konsultation om en måned','','Hovedpine 3 gange seneste uge og 4 gange ugen før');
INSERT INTO consultation (`Id`,`patientCPR-nr`,`doctorId`,`date`,`time`)
VALUES (2,1411025134,17625,230619,230619123000);


