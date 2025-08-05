SELECT 
		p.Student_ID, p.YEAR,p.Term,p.Subject, p.score,
		s.Student_Name, s.Gender,s.School_ID,
		sc.School_Name,
		st.SchoolType,
		co.Country,
		con.County,
		reg.Region,
		hic.Household_Income,
		ped.Parent_Education,
		bs.BoardingStatus
FROM performance p
LEFT JOIN students s ON p.Student_ID=s.Student_ID
LEFT JOIN schools sc ON s.School_ID=sc.School_ID
LEFT JOIN school_types st ON sc.SchoolType_ID=st.SchoolType_ID
LEFT JOIN countries co ON sc.Country_ID=co.Country_ID
LEFT JOIN counties con ON sc.County_ID=con.County_ID
LEFT JOIN regions reg ON sc.Region_ID=reg.Region_ID
LEFT JOIN household_income hic  ON s.Income_ID=hic.Income_ID
LEFT JOIN parent_education ped  ON s.ParentEdu_ID=ped.ParentEdu_ID
LEFT JOIN boarding_status bs  ON sc.BoardingStatus_ID=bs.BoardingStatus_ID
