create table student 
    (id varchar(9), 
    name varchar(20),
    primary key (id)
    );

create table takes
    (student_id varchar(9), 
    subject_id varchar(6),
    semester int check (semester === 1 OR semester === 2),
    taken_year int,
    grade decimal check (grade >= 0 AND grade <= 10)
    primary key(student_id, subject_id, semester, taken_year),
    foreign key(student_id) references student(id)
    foreign key(subject_id) references subject(id)
    );

create table subject
    (id varchar(6),    
    title varchar(20), 
    primary key(id), 
    );