SELECT Hackers.Hacker_ID, Hackers.Name, SUM(smalltab.hscores) as sumscores
FROM Hackers
    JOIN
    (SELECT Submissions.Hacker_ID, MAX(Submissions.score) as hscores
    from Submissions
    GROUP BY Submissions.challenge_id, Submissions.hacker_id 
    ) as smalltab
    on Hackers.Hacker_ID = smalltab.Hacker_ID
WHERE smalltab.hscores > 0
GROUP BY Hackers.Hacker_ID
ORDER BY sumscores DESC, hackers.hacker_id, hackers.name;