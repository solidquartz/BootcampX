SELECT ar.assignment_id as id, a.name as name, a.chapter as chapter, a.day as day, count(ar.*) as total_requests
FROM assistance_requests ar
JOIN assignments a ON a.id = ar.assignment_id
GROUP BY ar.assignment_id, name, day, chapter
ORDER BY total_requests DESC;