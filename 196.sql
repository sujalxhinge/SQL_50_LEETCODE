--196. Delete Duplicate Emails

DELETE p1
FROM person p1
inner join person p2
on p1.email = p2.email
and p1.id >p2.id