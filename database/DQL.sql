USE Libreria_El_mundo;

# Consulta de todos los libros registrados
Select * from Libro;

# Consulta los libro con fecha de publicación inferior a 1950 
SELECT * FROM Libro WHERE fecha_publicacion < '1950-01-01';