use universidad;
select carrera.nombre_carrera, count(*) from carrera INNER JOIN matriculas 
	ON carrera.idcarrera = matriculas.idcarrera
    inner join alumnos_matriculas on  matriculas.idmatriculas = alumnos_matriculas.idmatriculas
    inner join alumnos on  alumnos_matriculas.idalumno = alumnos.idalumnos
    and alumnos_matriculas.fecha_matricula_alumno between '2021-01-01' and '2022-06-25'
group by carrera.nombre_carrera ;