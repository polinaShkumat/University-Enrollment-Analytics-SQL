# 🎓 University Enrollment Analytics — SQL

A set of SQL queries analyzing a university's teaching and enrollment data
across four related tables: `Teachers`, `Students`, `Classes`, and
`Enrollments`.

## Inferred Schema

| Table | Key columns |
|---|---|
| `Teachers` | `id`, `first_name`, `department` |
| `Students` | `id`, `enrollment_year` |
| `Classes` | `id`, `teacher_id`, `semester` |
| `Enrollments` | `student_id`, `class_id` |

## What the queries answer

- Which CS-department teachers have a 5-letter first name
- Student headcount by enrollment year
- Total classes run across Spring and Fall
- Enrollment years with more than 2 students
- The teacher who teaches the most classes
- Students enrolled in more than 5 distinct classes
- Classes with more than 5 enrolled students

## Techniques demonstrated

- Filtering with `WHERE`, `LENGTH()`, and `IN`
- Aggregation with `GROUP BY` and `COUNT()`
- Post-aggregation filtering with `HAVING`
- `ORDER BY` + `LIMIT` for top-N queries
- `COUNT(DISTINCT ...)` to avoid duplicate-row inflation

## How to Run

Load the four tables into any SQL engine (PostgreSQL, MySQL, SQLite) and run
`queries.sql` query by query.

## License

MIT
