SELECT member.memberID
FROM Member
INNER JOIN Borrows ON Member.memberID= Borrows.memberID 
WHERE Borrows.date_of_return IS NULL
GROUP BY member.memberid