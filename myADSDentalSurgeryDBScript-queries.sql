--Display the list of ALL Dentists registered in the system, sorted in ascending order of their lastNames 
SELECT DentistID, FirstName, LastName, ContactNumber, Email, Specialization
FROM     dbo.Dentist
ORDER BY LastName

--Display the list of ALL Appointments for a given Dentist by their dentist_Id number. Include in the result, the Patient information. 
SELECT dbo.Dentist.FirstName as 'Dentist FN', dbo.Dentist.LastName as 'De tist LN', dbo.Dentist.ContactNumber AS 'Dentist Contact',dbo.Dentist.Specialization, dbo.Appointment.DentistID,
 dbo.Appointment.PatientID, dbo.Patient.FirstName, dbo.Patient.LastName , dbo.Patient.DOB, 
           dbo.Patient.ContactNumber, dbo.Patient.MailingAddress, dbo.Patient.Email
FROM     dbo.Dentist INNER JOIN
                  dbo.Appointment ON dbo.Dentist.DentistID = dbo.Appointment.DentistID INNER JOIN
                  dbo.Patient ON dbo.Appointment.PatientID = dbo.Patient.PatientID
WHERE  (dbo.Appointment.DentistID = 2)


--Display the list of ALL Appointments that have been scheduled at a Surgery Location 
SELECT dbo.Appointment.AppointmentID, dbo.Appointment.AppointmentDate, dbo.Appointment.DentistID, dbo.Dentist.FirstName AS [Dentist FN], dbo.Dentist.LastName AS [Dentist LN], dbo.Appointment.PatientID, 
                  dbo.Patient.FirstName AS [Patient FN], dbo.Patient.LastName AS [Patient LN], dbo.Appointment.LocationID, dbo.Location.City, dbo.Location.Region
FROM     dbo.Appointment INNER JOIN
                  dbo.Location ON dbo.Appointment.LocationID = dbo.Location.LocationID INNER JOIN
                  dbo.Dentist ON dbo.Appointment.DentistID = dbo.Dentist.DentistID INNER JOIN
                  dbo.Patient ON dbo.Appointment.PatientID = dbo.Patient.PatientID
WHERE  (dbo.Appointment.LocationID = 102)


--Display the list of the Appointments booked for a given Patient on a given Date. 
SELECT dbo.Appointment.AppointmentID, dbo.Appointment.AppointmentDate, dbo.Appointment.PatientID, dbo.Patient.FirstName, dbo.Patient.LastName, dbo.Appointment.AppointmentStatus
FROM     dbo.Appointment INNER JOIN
                  dbo.Patient ON dbo.Appointment.PatientID = dbo.Patient.PatientID
WHERE  (dbo.Appointment.AppointmentDate = CONVERT(DATETIME, '2024-04-10 00:00:00', 102)) AND (dbo.Appointment.PatientID = 1)