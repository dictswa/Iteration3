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
INSERT INTO consultation
VALUES (3,1805026783,17352,211113,211113140000,'Almindeligt sundhedstjek. Blodtryk mildt forhøjet opfølgning ved næste tjek','','');
INSERT INTO consultation (`Id`,`patientCPR-nr`,`doctorId`,`date`,`time`)
VALUES (4,1908765103,17352,230522,230522111500);

UPDATE journal
SET `consultation-1`=1,`consultation-2`=2
WHERE `patientCPR-nr`=1411025134;
UPDATE journal
SET `consultation-1`=3
WHERE `patientCPR-nr`=1805026783;
UPDATE journal
SET `consultation-1`=4
WHERE `patientCPR-nr`=1908765103;

DELETE FROM consultation
WHERE Id=4;
UPDATE journal
SET `consultation-1`=NULL
WHERE `patientCPR-nr`=1908765103;

SELECT * FROM consultation
WHERE `doctorId`=17625 and `time`>CURRENT_TIMESTAMP;

INSERT INTO labresult
VALUES (1,1805026783,17352,211113,0.35,7.33,14.8,3.88,0.35,29.0,0.35);
INSERT INTO labresult
VALUES (2,1411025134,17625,210408,0.35,0.35,0.35,0.35,0.35,0.35,0.35);

INSERT INTO medication
VALUES (1,'smertestillende/febernedsættende','paracetamol','C8H9NO2','smertestillende/feernedsættende');

INSERT INTO prescription
VALUES (1,1,1411025134,17625,1000,'Mod hovedpine');


