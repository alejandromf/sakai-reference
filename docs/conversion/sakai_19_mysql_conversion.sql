-- SAK-38427

ALTER TABLE MFR_TOPIC_T ADD COLUMN ALLOW_EMAIL_NOTIFICATIONS BIT(1) NOT NULL DEFAULT 1;
ALTER TABLE MFR_TOPIC_T ADD COLUMN INCLUDE_CONTENTS_IN_EMAILS BIT(1) NOT NULL DEFAULT 1;

-- END SAK-38427

-- SAK-33969
ALTER TABLE MFR_OPEN_FORUM_T ADD RESTRICT_PERMS_FOR_GROUPS BIT(1) DEFAULT FALSE;
ALTER TABLE MFR_TOPIC_T ADD RESTRICT_PERMS_FOR_GROUPS BIT(1) DEFAULT FALSE;
-- SAK-33969

-- SAK-39967

CREATE INDEX contentreview_provider_id_idx on CONTENTREVIEW_ITEM (providerId, externalId);

-- End SAK-39967

-- SAK-40721
ALTER TABLE BULLHORN_ALERTS ADD COLUMN DEFERRED BIT(1) NOT NULL;
-- END SAK-40721

-- SAK-41017

UPDATE SAKAI_SITE_PAGE SET layout = '0' WHERE page_id = '!error-100';
UPDATE SAKAI_SITE_PAGE SET layout = '0' WHERE page_id = '!urlError-100';

-- End of SAK-41017
