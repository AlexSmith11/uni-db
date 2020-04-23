SELECT Timetable_Relation.moduleID
FROM Timetable_Relation

INNER JOIN Room_Relation ON Timetable_Relation.Room = Room_Relation.Room
INNER JOIN Building_Relation ON Room_Relation.Building = Building_Relation.Building

GROUP BY timetable_relation.moduleID

HAVING COUNT (DISTINCT Campus) > 1