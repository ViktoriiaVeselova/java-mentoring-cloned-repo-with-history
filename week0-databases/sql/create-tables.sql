CREATE DATABASE cdp;

CREATE TABLE IF NOT EXISTS public.students
(
    id bigserial NOT NULL,
    name varchar(50) NOT NULL,
    surname varchar(100) NOT NULL,
    birth_date date,
    phone_number varchar(10) UNIQUE NOT NULL,
    primary_skill varchar(50),
    created_datetime timestamp default CURRENT_TIMESTAMP NOT NULL,
    updated_datetime timestamp default CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.subjects
(
    id bigserial NOT NULL,
    name varchar(100) UNIQUE NOT NULL,
    tutor varchar(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.exam_results
(
    student_id bigint NOT NULL,
    subject_id bigint NOT NULL,
    mark integer NOT NULL,
	CONSTRAINT unq_com_key UNIQUE (student_id, subject_id),
    CONSTRAINT composite_key PRIMARY KEY (student_id, subject_id)
);


ALTER TABLE IF EXISTS public.exam_results
    ADD CONSTRAINT fk_exam_results_student_id FOREIGN KEY (student_id)
    REFERENCES public.students (id)
	ON UPDATE NO ACTION
    ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.exam_results
    ADD CONSTRAINT fk_exam_results_subject_id FOREIGN KEY (subject_id)
    REFERENCES public.subjects (id)
	ON UPDATE NO ACTION
    ON DELETE CASCADE;


CREATE TABLE IF NOT EXISTS public.student_address
(
    id bigserial NOT NULL,
	student_id bigint NOT NULL,
	postal_code integer NOT NULL,
    country varchar(100) NOT NULL,
    city varchar(100) NOT NULL,
	street varchar(100) NOT NULL,
	house varchar(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.student_address_updated
(
    id bigserial NOT NULL,
	address_id bigint NOT NULL,
	postal_code integer NOT NULL,
    country varchar(100) NOT NULL,
    city varchar(100) NOT NULL,
	street varchar(100) NOT NULL,
	house varchar(50) NOT NULL,
	updated_datetime timestamp default CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.student_address
    ADD CONSTRAINT fk_address_student_id FOREIGN KEY (student_id)
    REFERENCES public.students (id)
	ON UPDATE NO ACTION
    ON DELETE CASCADE;



ALTER TABLE IF EXISTS public.student_address_updated
    ADD CONSTRAINT fk_address_updated_id FOREIGN KEY (address_id)
    REFERENCES public.student_address (id)
	ON UPDATE NO ACTION
    ON DELETE CASCADE;


