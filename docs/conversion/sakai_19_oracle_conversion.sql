-- SAK-38427

ALTER TABLE MFR_TOPIC_T ADD ALLOW_EMAIL_NOTIFICATIONS NUMBER(1,0) DEFAULT 1 NOT NULL;
ALTER TABLE MFR_TOPIC_T ADD INCLUDE_CONTENTS_IN_EMAILS NUMBER(1,0) DEFAULT 1 NOT NULL;

-- END SAK-38427

-- SAK-33969
ALTER TABLE MFR_OPEN_FORUM_T ADD RESTRICT_PERMS_FOR_GROUPS NUMBER(1) DEFAULT '0';
ALTER TABLE MFR_TOPIC_T ADD RESTRICT_PERMS_FOR_GROUPS NUMBER(1) DEFAULT '0';
-- SAK-33969

-- SAK-39967

CREATE INDEX contentreview_provider_id_idx on CONTENTREVIEW_ITEM (providerId, externalId);

-- End SAK-39967

-- SAK-40182
DECLARE
    seq_start INTEGER;
BEGIN
   SELECT NVL(MAX(PUBLISHEDSECTIONMETADATAID),0) + 1
   INTO   seq_start   FROM SAM_PUBLISHEDSECTIONMETADATA_T;
   EXECUTE IMMEDIATE 'CREATE SEQUENCE SAM_PUBSECTIONMETADATA_ID_S START WITH '||seq_start||' INCREMENT BY 1 NOMAXVALUE';
END;
-- End SAK-40182

-- SAK-40721
ALTER TABLE BULLHORN_ALERTS ADD DEFERRED NUMBER(1) DEFAULT 0 NOT NULL;
-- END SAK-40721

-- SAK-41017

UPDATE SAKAI_SITE_PAGE SET layout = '0' WHERE page_id = '!error-100';
UPDATE SAKAI_SITE_PAGE SET layout = '0' WHERE page_id = '!urlError-100';

-- End of SAK-41017
