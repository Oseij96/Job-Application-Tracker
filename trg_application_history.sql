create or replace TRIGGER trg_application_history
AFTER UPDATE OF status ON job_applications
FOR EACH ROW
BEGIN
    IF :OLD.status != :NEW.status THEN

        INSERT INTO application_history (
            application_id,
            old_status,
            new_status,
            changed_at
        )
        VALUES (
            :OLD.id,
            :OLD.status,
            :NEW.status,
            SYSDATE
        );

    END IF;
END;
/
