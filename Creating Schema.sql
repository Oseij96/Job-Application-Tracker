CREATE TABLE users(
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR2(100) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(255) UNIQUE NOT NULL,
    created_at DATE DEFAULT SYSDATE
);

CREATE TABLE companies(
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR2(255) UNIQUE NOT NULL,
    location VARCHAR2(255) NOT NULL,
    industry VARCHAR2(255),
    recruiter_contact VARCHAR2(255)
);

CREATE TABLE job_applications(
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id NUMBER NOT NULL,
    company_id NUMBER NOT NULL,
    role_title VARCHAR2(255) NOT NULL,
    salary NUMBER,
    status VARCHAR2(50)
        CHECK (
            status IN (
                'Applied',
                'Interview',
                'Rejected',
                'Offer',
                'Accepted'
            )
        ),
    applied_date DATE DEFAULT SYSDATE,
    notes CLOB,
    CONSTRAINT fk_job_app_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_job_app_company FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE
);

CREATE TABLE interviews(
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    application_id NUMBER NOT NULL,
    interview_date DATE NOT NULL,
    stage VARCHAR2(255) DEFAULT 'Pending' NOT NULL,
    feedback VARCHAR2(255),
    interviewer_name VARCHAR2(255) NOT NULL,
    result VARCHAR2(255),
    CONSTRAINT fk_interview_app_id FOREIGN KEY (application_id) REFERENCES job_applications(id) ON DELETE CASCADE
);

CREATE TABLE application_history(
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    application_id NUMBER NOT NULL,
    old_status VARCHAR2(255) NOT NULL,
    new_status VARCHAR2(255) NOT NULL,
    changed_at DATE DEFAULT SYSDATE,
    CONSTRAINT fk_history_app_id FOREIGN KEY (application_id) REFERENCES job_applications(id) ON DELETE CASCADE
);
