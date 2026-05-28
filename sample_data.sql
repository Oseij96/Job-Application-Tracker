-- 1. INSERT SAMPLE USERS 
INSERT INTO users (first_name, last_name, email, password_hash) 
VALUES ('Alex', 'Morgan', 'alex.morgan@email.com', STANDARD_HASH('apple1', 'SHA256')),
       ('Taylor', 'Swift', 'taylor.s@email.com', STANDARD_HASH('orange2', 'SHA256')),
       ('Jordan', 'Lee', 'jordan.lee@email.com', STANDARD_HASH('banana3', 'SHA256'));


-- 2. INSERT SAMPLE COMPANIES
INSERT INTO companies (name, location, industry, recruiter_contact) 
VALUES ('TechNova Solutions', 'San Francisco, CA', 'Information Technology', 'recruiting@technova.com'),
       ('Apex Health Corp', 'Boston, MA', 'Healthcare', 'hiring@apexhealth.com'),
       ('Vanguard Finance', 'New York, NY', 'Fintech', 'careers@vanguardfin.com');


-- 3. INSERT SAMPLE JOB APPLICATIONS
INSERT INTO job_applications (user_id, company_id, role_title, salary, status, applied_date, notes)
VALUES (1, 1, 'Senior Frontend Engineer', 135000, 'Interview', SYSDATE - 10, 'Recruiter reached out via LinkedIn. Initial screening went well.'),
       (1, 3, 'Data Analyst', 95000, 'Rejected', SYSDATE - 20, 'Automated rejection email received after resume submission.'),
       (2, 1, 'Product Manager', 150000, 'Offer', SYSDATE - 14, 'Final interview loop completed. Verbal offer extended.'),
       (3, 2, 'Full Stack Developer', 110000, 'Applied', SYSDATE - 2, 'Submitted application via company portal. Waiting for response.');


-- 4. INSERT INTERVIEWS
INSERT INTO interviews (application_id, interview_date, stage, feedback, interviewer_name, result)
VALUES (1, SYSDATE - 5, 'Technical Screening', 'Strong coding skills, great communication.', 'Sarah Connor', 'Passed'),
       (1, SYSDATE - 2, 'System Design', NULL, 'John Doe', 'Pending'),
       (3, SYSDATE - 7, 'Behavioral', 'Excellent cultural fit, clear leadership examples.', 'Elena Rostova', 'Passed');


-- 5. INSERT APPLICATION HISTORY
INSERT INTO application_history (application_id, old_status, new_status, changed_at)
VALUES (1, 'Applied', 'Interview', SYSDATE - 5),
       (2, 'Applied', 'Rejected', SYSDATE - 15),
       (3, 'Applied', 'Interview', SYSDATE - 10),
       (3, 'Interview', 'Offer', SYSDATE - 1);