-- -- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.*
FROM `students`
  JOIN `degrees`
    ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` LIKE 'Corso di Laurea in Economia';

-- -- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT * 
FROM `degrees`
  JOIN `departments`
    ON `degrees`.`department_id` = `departments`.`id`
WHERE `degrees`.`level` LIKE 'magistrale'
AND `departments`.`name` LIKE 'Dipartimento di Neuroscienze';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`name`,`teachers`.`surname`,`courses`.*
FROM `teachers`
  JOIN `course_teacher`
    ON `course_teacher`.`teacher_id` = `teachers`.`id`  
  JOIN `courses`
    ON `course_teacher`.`course_id` = `courses`.`id`
WHERE `teachers`.`id` = 44;


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT * 
FROM `students`
  JOIN `degrees`
    ON `students`.`degree_id` = `degrees`.`id`
  JOIN `departments`
    ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname`,`students`.`name`;

-- 5. BONUS: Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


-- 6. BONUS: Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)


-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami
