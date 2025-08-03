Select * FROM dbo.performance
LEFT JOIN dbo.students ON dbo.performance.Student_ID=dbo.students.Student_ID
LEFT JOIN dbo.schools ON dbo.students.School_ID=dbo.schools.School_ID
LEFT JOIN dbo.school_types ON dbo.schools.SchoolType_ID=dbo.school_types.SchoolType_ID
LEFT JOIN dbo.boarding_status ON dbo.schools.BoardingStatus_ID=dbo.boarding_status.BoardingStatus_ID
LEFT JOIN dbo.regions ON dbo.schools.Region_ID= dbo.regions.Region_ID
LEFT JOIN dbo.countries ON dbo.schools.Country_ID= dbo.countries.Country_ID
LEFT JOIN dbo.counties ON dbo.schools.County_ID= dbo.counties.County_ID
LEFT JOIN dbo.household_income ON dbo.students.Income_ID= dbo.household_income.Income_ID
LEFT JOIN dbo.parent_education ON dbo.students.ParentEdu_ID= dbo.parent_education.ParentEdu_ID