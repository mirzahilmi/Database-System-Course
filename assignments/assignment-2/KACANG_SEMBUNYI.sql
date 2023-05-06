CREATE TABLE SBD.KACANG_SEMBUNYI
(
    ID              VARCHAR(36)  NOT NULL
        CONSTRAINT PK_KACANG_SEMBUNYI_ID PRIMARY KEY,
    PRODUCT_ITEM_ID VARCHAR(36)  NOT NULL,
    NAME            VARCHAR(100) NOT NULL
);

ALTER TABLE SBD.KACANG_SEMBUNYI
    ADD CONSTRAINT FK_KACANG_SEMBUNYI_PRODUCT_ITEM_ID FOREIGN KEY (PRODUCT_ITEM_ID) REFERENCES SBD.PRODUCT_ITEM (ID)
    ADD CONSTRAINT UQ_KACANG_SEMBUNYI_NAME UNIQUE (NAME);

ALTER TABLE SBD.KACANG_SEMBUNYI
    DROP CONSTRAINT UQ_KACANG_SEMBUNYI_NAME;