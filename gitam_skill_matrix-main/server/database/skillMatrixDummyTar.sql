toc.dat                                                                                             0000600 0004000 0002000 00000033536 14741201672 0014455 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   2    ,                 }            skillmatrix    16.3    16.3 0    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         7           1262    16544    skillmatrix    DATABASE     ~   CREATE DATABASE skillmatrix WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE skillmatrix;
                postgres    false         �            1259    16942    campus    TABLE     [   CREATE TABLE public.campus (
    campus_id text NOT NULL,
    campus_name text NOT NULL
);
    DROP TABLE public.campus;
       public         heap    postgres    false         �            1259    16985    course    TABLE       CREATE TABLE public.course (
    course_id text NOT NULL,
    course_name text NOT NULL,
    course_category text NOT NULL,
    department_id text NOT NULL,
    course_coordinator text NOT NULL,
    course_champion text NOT NULL,
    caia_coordinator text NOT NULL
);
    DROP TABLE public.course;
       public         heap    postgres    false         �            1259    17062    course_faculty_mapping    TABLE     �   CREATE TABLE public.course_faculty_mapping (
    id text NOT NULL,
    course_id text NOT NULL,
    employee_id text NOT NULL
);
 *   DROP TABLE public.course_faculty_mapping;
       public         heap    postgres    false         �            1259    17087    course_skill_mapping    TABLE     �   CREATE TABLE public.course_skill_mapping (
    id text NOT NULL,
    skill_id text NOT NULL,
    course_id text NOT NULL,
    type_id text NOT NULL
);
 (   DROP TABLE public.course_skill_mapping;
       public         heap    postgres    false         �            1259    16961 
   department    TABLE     �   CREATE TABLE public.department (
    department_id text NOT NULL,
    department_name text NOT NULL,
    school_id text NOT NULL
);
    DROP TABLE public.department;
       public         heap    postgres    false         �            1259    16973    employee    TABLE     �   CREATE TABLE public.employee (
    employee_id text NOT NULL,
    employee_mail text NOT NULL,
    employee_name text NOT NULL,
    designation text NOT NULL,
    experience integer NOT NULL,
    department_id text NOT NULL,
    password text NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false         �            1259    17028    rating    TABLE     �   CREATE TABLE public.rating (
    id text NOT NULL,
    subskill_id text NOT NULL,
    employee_id text NOT NULL,
    rating text NOT NULL
);
    DROP TABLE public.rating;
       public         heap    postgres    false         �            1259    16949    school    TABLE     x   CREATE TABLE public.school (
    school_id text NOT NULL,
    school_name text NOT NULL,
    campus_id text NOT NULL
);
    DROP TABLE public.school;
       public         heap    postgres    false         �            1259    17080    skill    TABLE     }   CREATE TABLE public.skill (
    skill_id text NOT NULL,
    skill_name text NOT NULL,
    skill_description text NOT NULL
);
    DROP TABLE public.skill;
       public         heap    postgres    false         �            1259    16997 
   skill_type    TABLE        CREATE TABLE public.skill_type (
    type_id text NOT NULL,
    type_name text NOT NULL,
    type_description text NOT NULL
);
    DROP TABLE public.skill_type;
       public         heap    postgres    false         �            1259    17016    subskill    TABLE     �   CREATE TABLE public.subskill (
    subskill_id text NOT NULL,
    subskill_name text NOT NULL,
    subskill_description text NOT NULL,
    skill_id text NOT NULL,
    required text NOT NULL
);
    DROP TABLE public.subskill;
       public         heap    postgres    false         '          0    16942    campus 
   TABLE DATA                 public          postgres    false    215       4903.dat +          0    16985    course 
   TABLE DATA                 public          postgres    false    219       4907.dat /          0    17062    course_faculty_mapping 
   TABLE DATA                 public          postgres    false    223       4911.dat 1          0    17087    course_skill_mapping 
   TABLE DATA                 public          postgres    false    225       4913.dat )          0    16961 
   department 
   TABLE DATA                 public          postgres    false    217       4905.dat *          0    16973    employee 
   TABLE DATA                 public          postgres    false    218       4906.dat .          0    17028    rating 
   TABLE DATA                 public          postgres    false    222       4910.dat (          0    16949    school 
   TABLE DATA                 public          postgres    false    216       4904.dat 0          0    17080    skill 
   TABLE DATA                 public          postgres    false    224       4912.dat ,          0    16997 
   skill_type 
   TABLE DATA                 public          postgres    false    220       4908.dat -          0    17016    subskill 
   TABLE DATA                 public          postgres    false    221       4909.dat x           2606    16948    campus campus_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.campus
    ADD CONSTRAINT campus_pkey PRIMARY KEY (campus_id);
 <   ALTER TABLE ONLY public.campus DROP CONSTRAINT campus_pkey;
       public            postgres    false    215         �           2606    17068 2   course_faculty_mapping course_faculty_mapping_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.course_faculty_mapping
    ADD CONSTRAINT course_faculty_mapping_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.course_faculty_mapping DROP CONSTRAINT course_faculty_mapping_pkey;
       public            postgres    false    223         �           2606    16991    course course_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (course_id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public            postgres    false    219         �           2606    17093 .   course_skill_mapping course_skill_mapping_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.course_skill_mapping
    ADD CONSTRAINT course_skill_mapping_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.course_skill_mapping DROP CONSTRAINT course_skill_mapping_pkey;
       public            postgres    false    225         |           2606    16967    department department_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (department_id);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public            postgres    false    217         ~           2606    16979    employee employee_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    218         �           2606    17034    rating rating_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pkey;
       public            postgres    false    222         z           2606    16955    school school_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.school
    ADD CONSTRAINT school_pkey PRIMARY KEY (school_id);
 <   ALTER TABLE ONLY public.school DROP CONSTRAINT school_pkey;
       public            postgres    false    216         �           2606    17086    skill skill_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_pkey PRIMARY KEY (skill_id);
 :   ALTER TABLE ONLY public.skill DROP CONSTRAINT skill_pkey;
       public            postgres    false    224         �           2606    17003    skill_type skill_type_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.skill_type
    ADD CONSTRAINT skill_type_pkey PRIMARY KEY (type_id);
 D   ALTER TABLE ONLY public.skill_type DROP CONSTRAINT skill_type_pkey;
       public            postgres    false    220         �           2606    17022    subskill subskill_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.subskill
    ADD CONSTRAINT subskill_pkey PRIMARY KEY (subskill_id);
 @   ALTER TABLE ONLY public.subskill DROP CONSTRAINT subskill_pkey;
       public            postgres    false    221         �           2606    16992     course course_department_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.department(department_id);
 J   ALTER TABLE ONLY public.course DROP CONSTRAINT course_department_id_fkey;
       public          postgres    false    4732    217    219         �           2606    17069 <   course_faculty_mapping course_faculty_mapping_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_faculty_mapping
    ADD CONSTRAINT course_faculty_mapping_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 f   ALTER TABLE ONLY public.course_faculty_mapping DROP CONSTRAINT course_faculty_mapping_course_id_fkey;
       public          postgres    false    4736    219    223         �           2606    17074 >   course_faculty_mapping course_faculty_mapping_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_faculty_mapping
    ADD CONSTRAINT course_faculty_mapping_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);
 h   ALTER TABLE ONLY public.course_faculty_mapping DROP CONSTRAINT course_faculty_mapping_employee_id_fkey;
       public          postgres    false    4734    218    223         �           2606    17099 8   course_skill_mapping course_skill_mapping_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_skill_mapping
    ADD CONSTRAINT course_skill_mapping_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 b   ALTER TABLE ONLY public.course_skill_mapping DROP CONSTRAINT course_skill_mapping_course_id_fkey;
       public          postgres    false    219    225    4736         �           2606    17094 7   course_skill_mapping course_skill_mapping_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_skill_mapping
    ADD CONSTRAINT course_skill_mapping_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skill(skill_id);
 a   ALTER TABLE ONLY public.course_skill_mapping DROP CONSTRAINT course_skill_mapping_skill_id_fkey;
       public          postgres    false    224    4746    225         �           2606    17104 6   course_skill_mapping course_skill_mapping_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_skill_mapping
    ADD CONSTRAINT course_skill_mapping_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.skill_type(type_id);
 `   ALTER TABLE ONLY public.course_skill_mapping DROP CONSTRAINT course_skill_mapping_type_id_fkey;
       public          postgres    false    225    4738    220         �           2606    16968 $   department department_school_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_school_id_fkey FOREIGN KEY (school_id) REFERENCES public.school(school_id);
 N   ALTER TABLE ONLY public.department DROP CONSTRAINT department_school_id_fkey;
       public          postgres    false    217    216    4730         �           2606    16980 $   employee employee_department_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.department(department_id);
 N   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_department_id_fkey;
       public          postgres    false    4732    218    217         �           2606    17040    rating rating_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);
 H   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_employee_id_fkey;
       public          postgres    false    222    4734    218         �           2606    17035    rating rating_subskill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_subskill_id_fkey FOREIGN KEY (subskill_id) REFERENCES public.subskill(subskill_id);
 H   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_subskill_id_fkey;
       public          postgres    false    221    4740    222         �           2606    16956    school school_campus_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.school
    ADD CONSTRAINT school_campus_id_fkey FOREIGN KEY (campus_id) REFERENCES public.campus(campus_id);
 F   ALTER TABLE ONLY public.school DROP CONSTRAINT school_campus_id_fkey;
       public          postgres    false    215    216    4728                                                                                                                                                                          4903.dat                                                                                            0000600 0004000 0002000 00000000120 14741201672 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.campus (campus_id, campus_name) VALUES ('1', 'Bengaluru');


                                                                                                                                                                                                                                                                                                                                                                                                                                                4907.dat                                                                                            0000600 0004000 0002000 00000000714 14741201672 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.course (course_id, course_name, course_category, department_id, course_coordinator, course_champion, caia_coordinator) VALUES ('1', 'Artificial Intelligence', 'Core', '1', 'Shirsh Agrawal', 'Sivaranjani S', 'Rajesh Sola');
INSERT INTO public.course (course_id, course_name, course_category, department_id, course_coordinator, course_champion, caia_coordinator) VALUES ('ABC123', 'Python', 'Core', '1', 'Sujatha T', 'Karthik P', 'Amit C');


                                                    4911.dat                                                                                            0000600 0004000 0002000 00000000002 14741201672 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              4913.dat                                                                                            0000600 0004000 0002000 00000000543 14741201672 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.course_skill_mapping (id, skill_id, course_id, type_id) VALUES ('271a09ed-8037-4879-a88f-c9bcd8b5d941', '8a7aec1c-3da3-4a0b-8404-5bfda0eefd20', '1', '4');
INSERT INTO public.course_skill_mapping (id, skill_id, course_id, type_id) VALUES ('278dfdfe-db56-4d0f-8492-cac9ca2d5179', 'd4b306a4-eb67-4627-814e-0e57a1e7b9dc', 'ABC123', '1');


                                                                                                                                                             4905.dat                                                                                            0000600 0004000 0002000 00000000163 14741201672 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.department (department_id, department_name, school_id) VALUES ('1', 'Computer Science', '1');


                                                                                                                                                                                                                                                                                                                                                                                                             4906.dat                                                                                            0000600 0004000 0002000 00000000335 14741201672 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.employee (employee_id, employee_mail, employee_name, designation, experience, department_id, password) VALUES ('700913', 'sedappil@gitam.edu', 'Salmon Joy', 'Assistant Professor', 3, '1', '123@456');


                                                                                                                                                                                                                                                                                                   4910.dat                                                                                            0000600 0004000 0002000 00000000002 14741201672 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              4904.dat                                                                                            0000600 0004000 0002000 00000000142 14741201672 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.school (school_id, school_name, campus_id) VALUES ('1', 'Engineering', '1');


                                                                                                                                                                                                                                                                                                                                                                                                                              4912.dat                                                                                            0000600 0004000 0002000 00000000440 14741201672 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.skill (skill_id, skill_name, skill_description) VALUES ('8a7aec1c-3da3-4a0b-8404-5bfda0eefd20', 'Java', 'Programming Language');
INSERT INTO public.skill (skill_id, skill_name, skill_description) VALUES ('d4b306a4-eb67-4627-814e-0e57a1e7b9dc', 'OOP', 'Programming');


                                                                                                                                                                                                                                4908.dat                                                                                            0000600 0004000 0002000 00000001155 14741201672 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.skill_type (type_id, type_name, type_description) VALUES ('1', 'Preskill', 'Skills required');
INSERT INTO public.skill_type (type_id, type_name, type_description) VALUES ('2', 'Tech/Core', 'Main covered topics');
INSERT INTO public.skill_type (type_id, type_name, type_description) VALUES ('3', 'Domain', 'Domains where it is used');
INSERT INTO public.skill_type (type_id, type_name, type_description) VALUES ('4', 'Tools', 'Software to be used');
INSERT INTO public.skill_type (type_id, type_name, type_description) VALUES ('5', 'Applied Example/Projects', 'Projects developed for this subject');


                                                                                                                                                                                                                                                                                                                                                                                                                   4909.dat                                                                                            0000600 0004000 0002000 00000006143 14741201672 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('dc7b938c-da22-447e-9ea1-7c01fc7e1ef0', 'sub1', 'desc1', '8a7aec1c-3da3-4a0b-8404-5bfda0eefd20', 'required');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('4e63b79b-17a4-476e-9c46-d4dbf2ba8c90', 'sub2', 'desc2', '8a7aec1c-3da3-4a0b-8404-5bfda0eefd20', 'required');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('70917a97-0660-4a36-a560-2b82fbab3988', 'sub3', 'desc3', '8a7aec1c-3da3-4a0b-8404-5bfda0eefd20', 'optional');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('dd09ba8f-3207-4639-89bf-aeb8d5897cb3', 'sub4', 'desc4', '8a7aec1c-3da3-4a0b-8404-5bfda0eefd20', 'optional');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('b3169106-e1f3-4d27-bab0-45b8f3bd9084', 'sub5', 'desc5', '8a7aec1c-3da3-4a0b-8404-5bfda0eefd20', 'required');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('7923dc6e-7245-4b3d-ae02-2b2a3123d68e', 'sub6', 'desc6', '8a7aec1c-3da3-4a0b-8404-5bfda0eefd20', 'required');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('8127e751-c89d-4fe1-8c32-5f79744e8be5', 'sub7', 'desc7', '8a7aec1c-3da3-4a0b-8404-5bfda0eefd20', 'optional');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('a5406ce6-a5dd-488b-bf82-955bda420fde', 'Subskill2', 'Description2', 'd4b306a4-eb67-4627-814e-0e57a1e7b9dc', 'required');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('7039349d-a8ea-40af-a4cc-46d192c7cb34', 'Subskill3', 'Description3', 'd4b306a4-eb67-4627-814e-0e57a1e7b9dc', 'optional');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('7bc4e418-10c6-4095-a4f3-15c94250754f', 'Subskill4', 'Description4', 'd4b306a4-eb67-4627-814e-0e57a1e7b9dc', 'required');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('cf94170e-5aca-4512-ad95-08bfe03878e7', 'Subskill5', 'Description5', 'd4b306a4-eb67-4627-814e-0e57a1e7b9dc', 'required');
INSERT INTO public.subskill (subskill_id, subskill_name, subskill_description, skill_id, required) VALUES ('12b7981b-3fb4-4b71-939a-2201e6bc26f6', 'Subskill1', 'Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1Description1v', 'd4b306a4-eb67-4627-814e-0e57a1e7b9dc', 'optional');


                                                                                                                                                                                                                                                                                                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000024667 14741201672 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE skillmatrix;
--
-- Name: skillmatrix; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE skillmatrix WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';


ALTER DATABASE skillmatrix OWNER TO postgres;

\connect skillmatrix

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: campus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campus (
    campus_id text NOT NULL,
    campus_name text NOT NULL
);


ALTER TABLE public.campus OWNER TO postgres;

--
-- Name: course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course (
    course_id text NOT NULL,
    course_name text NOT NULL,
    course_category text NOT NULL,
    department_id text NOT NULL,
    course_coordinator text NOT NULL,
    course_champion text NOT NULL,
    caia_coordinator text NOT NULL
);


ALTER TABLE public.course OWNER TO postgres;

--
-- Name: course_faculty_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_faculty_mapping (
    id text NOT NULL,
    course_id text NOT NULL,
    employee_id text NOT NULL
);


ALTER TABLE public.course_faculty_mapping OWNER TO postgres;

--
-- Name: course_skill_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_skill_mapping (
    id text NOT NULL,
    skill_id text NOT NULL,
    course_id text NOT NULL,
    type_id text NOT NULL
);


ALTER TABLE public.course_skill_mapping OWNER TO postgres;

--
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    department_id text NOT NULL,
    department_name text NOT NULL,
    school_id text NOT NULL
);


ALTER TABLE public.department OWNER TO postgres;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    employee_id text NOT NULL,
    employee_mail text NOT NULL,
    employee_name text NOT NULL,
    designation text NOT NULL,
    experience integer NOT NULL,
    department_id text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating (
    id text NOT NULL,
    subskill_id text NOT NULL,
    employee_id text NOT NULL,
    rating text NOT NULL
);


ALTER TABLE public.rating OWNER TO postgres;

--
-- Name: school; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.school (
    school_id text NOT NULL,
    school_name text NOT NULL,
    campus_id text NOT NULL
);


ALTER TABLE public.school OWNER TO postgres;

--
-- Name: skill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skill (
    skill_id text NOT NULL,
    skill_name text NOT NULL,
    skill_description text NOT NULL
);


ALTER TABLE public.skill OWNER TO postgres;

--
-- Name: skill_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skill_type (
    type_id text NOT NULL,
    type_name text NOT NULL,
    type_description text NOT NULL
);


ALTER TABLE public.skill_type OWNER TO postgres;

--
-- Name: subskill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subskill (
    subskill_id text NOT NULL,
    subskill_name text NOT NULL,
    subskill_description text NOT NULL,
    skill_id text NOT NULL,
    required text NOT NULL
);


ALTER TABLE public.subskill OWNER TO postgres;

--
-- Data for Name: campus; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4903.dat

--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4907.dat

--
-- Data for Name: course_faculty_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4911.dat

--
-- Data for Name: course_skill_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4913.dat

--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4905.dat

--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4906.dat

--
-- Data for Name: rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4910.dat

--
-- Data for Name: school; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4904.dat

--
-- Data for Name: skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4912.dat

--
-- Data for Name: skill_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4908.dat

--
-- Data for Name: subskill; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/4909.dat

--
-- Name: campus campus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campus
    ADD CONSTRAINT campus_pkey PRIMARY KEY (campus_id);


--
-- Name: course_faculty_mapping course_faculty_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_faculty_mapping
    ADD CONSTRAINT course_faculty_mapping_pkey PRIMARY KEY (id);


--
-- Name: course course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (course_id);


--
-- Name: course_skill_mapping course_skill_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_skill_mapping
    ADD CONSTRAINT course_skill_mapping_pkey PRIMARY KEY (id);


--
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (department_id);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- Name: rating rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id);


--
-- Name: school school_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school
    ADD CONSTRAINT school_pkey PRIMARY KEY (school_id);


--
-- Name: skill skill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_pkey PRIMARY KEY (skill_id);


--
-- Name: skill_type skill_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skill_type
    ADD CONSTRAINT skill_type_pkey PRIMARY KEY (type_id);


--
-- Name: subskill subskill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subskill
    ADD CONSTRAINT subskill_pkey PRIMARY KEY (subskill_id);


--
-- Name: course course_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.department(department_id);


--
-- Name: course_faculty_mapping course_faculty_mapping_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_faculty_mapping
    ADD CONSTRAINT course_faculty_mapping_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(course_id);


--
-- Name: course_faculty_mapping course_faculty_mapping_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_faculty_mapping
    ADD CONSTRAINT course_faculty_mapping_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);


--
-- Name: course_skill_mapping course_skill_mapping_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_skill_mapping
    ADD CONSTRAINT course_skill_mapping_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(course_id);


--
-- Name: course_skill_mapping course_skill_mapping_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_skill_mapping
    ADD CONSTRAINT course_skill_mapping_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skill(skill_id);


--
-- Name: course_skill_mapping course_skill_mapping_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_skill_mapping
    ADD CONSTRAINT course_skill_mapping_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.skill_type(type_id);


--
-- Name: department department_school_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_school_id_fkey FOREIGN KEY (school_id) REFERENCES public.school(school_id);


--
-- Name: employee employee_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.department(department_id);


--
-- Name: rating rating_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);


--
-- Name: rating rating_subskill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_subskill_id_fkey FOREIGN KEY (subskill_id) REFERENCES public.subskill(subskill_id);


--
-- Name: school school_campus_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school
    ADD CONSTRAINT school_campus_id_fkey FOREIGN KEY (campus_id) REFERENCES public.campus(campus_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         