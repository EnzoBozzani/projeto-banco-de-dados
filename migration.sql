create table course 
    (id varchar(6),
    title varchar(100),
    primary key(id)
    );

create table professor
    (id varchar(9),
    name varchar(100),
    dept_name varchar(100), 
    salary numeric(8, 2),
    primary key(id)
    );

create table tcc_group
    (id varchar(9),
    professor_id varchar(9),
    primary key(id),
    foreign key(professor_id) references professor(id)
    );

create table department
    (dept_name varchar(100),
    budget numeric(12, 2),
    boss_id varchar(9),
    primary key(dept_name),
    foreign key(boss_id) references professor(id)
    );

create table student 
    (id varchar(9), 
    name varchar(100),
    course_id varchar(6),
    group_id varchar(9),
    primary key (id),
    foreign key(course_id) references course(id),
    foreign key(group_id) references tcc_group(id)
    );

create table subj
    (id varchar(6),    
    title varchar(100), 
    dept_name varchar(100),
    primary key(id),
    foreign key(dept_name) references department(dept_name)
    );

create table takes
    (student_id varchar(9), 
    subj_id varchar(6),
    semester int check (semester = 1 OR semester = 2),
    year int check (year >= 1900),
    grade decimal check (grade >= 0 AND grade <= 10),
    subjroom varchar(5),
    primary key(student_id, subj_id, semester, year),
    foreign key(student_id) references student(id),
    foreign key(subj_id) references subj(id)
    );

create table teaches
    (subj_id varchar(6),
    professor_id varchar(9),
    semester int check (semester = 1 OR semester = 2),
    year int check (year >= 1900),
    primary key(subj_id, professor_id, semester, year),
    foreign key(subj_id) references subj(id),
    foreign key(professor_id) references professor(id)
    );

create table req 
    (course_id varchar(6),
    subj_id varchar(6),
    primary key(course_id, subj_id),
    foreign key(course_id) references course(id),
    foreign key(subj_id) references subj(id)
    );

create table graduate 
    (course_id varchar(6), 
    student_id varchar(9),
    semester int check (semester = 1 OR semester = 2),
    year int check (year >= 1900),
    primary key(course_id, student_id),
    foreign key(course_id) references course(id),
    foreign key(student_id) references student(id)
    );