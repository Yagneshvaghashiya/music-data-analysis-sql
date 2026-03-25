-- Top 10 customers by spending
SELECT customer_id, SUM(total) AS total_spent
FROM invoice
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- Most popular genre
SELECT g.name, COUNT(*) AS purchases
FROM invoice_line il
JOIN track t ON il.track_id = t.track_id
JOIN genre g ON t.genre_id = g.genre_id
GROUP BY g.name
ORDER BY purchases DESC;
