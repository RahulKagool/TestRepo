CREATE OR REPLACE PROCEDURE rahul_test.SP_KDP_3_LOAD_SAP_DATA
AS
BEGIN
  IF FN_KDP_GEN_CHECK_TABLE_EXISTS('KDP_3_RECON_CLIENT') = 1 THEN
    EXECUTE IMMEDIATE 'DROP TABLE KDP_3_RECON_CLIENT';
  END IF;
  EXECUTE IMMEDIATE 'CREATE TABLE KDP_3_RECON_CLIENT AS  SELECT * FROM KDP_3_RFBLD_CLIENT';
  DBMS_OUTPUT.PUT_LINE('KDP_3_RECON_CLIENT - '||SQL%ROWCOUNT);
  IF FN_KDP_GEN_CHECK_TABLE_EXISTS('KDP_3_RECON_PLANT') = 1 THEN
    EXECUTE IMMEDIATE 'DROP TABLE KDP_3_RECON_PLANT';
  END IF;
  EXECUTE IMMEDIATE 'CREATE TABLE KDP_3_RECON_PLANT AS  SELECT * FROM KDP_3_RFBLD_PLANT';
  DBMS_OUTPUT.PUT_LINE('KDP_3_RECON_PLANT - '||SQL%ROWCOUNT);
  IF FN_KDP_GEN_CHECK_TABLE_EXISTS('KDP_3_RECON_VALUATION') = 1 THEN
    EXECUTE IMMEDIATE 'DROP TABLE KDP_3_RECON_VALUATION';
  END IF;
  EXECUTE IMMEDIATE 'CREATE TABLE KDP_3_RECON_VALUATION AS  SELECT * FROM KDP_3_RFBLD_VALUATION';
  DBMS_OUTPUT.PUT_LINE('KDP_3_RECON_VALUATION - '||SQL%ROWCOUNT);
  IF FN_KDP_GEN_CHECK_TABLE_EXISTS('KDP_3_RECON_HEADDATA') = 1 THEN
    EXECUTE IMMEDIATE 'DROP TABLE KDP_3_RECON_HEADDATA';
  END IF;
  EXECUTE IMMEDIATE 'CREATE TABLE KDP_3_RECON_HEADDATA AS  SELECT * FROM KDP_3_RFBLD_HEADDATA';
  DBMS_OUTPUT.PUT_LINE('KDP_3_RECON_HEADDATA - '||SQL%ROWCOUNT);
  IF FN_KDP_GEN_CHECK_TABLE_EXISTS('KDP_3_RECON_MATLDESC') = 1 THEN
    EXECUTE IMMEDIATE 'DROP TABLE KDP_3_RECON_MATLDESC';
  END IF;
  EXECUTE IMMEDIATE 'CREATE TABLE KDP_3_RECON_MATLDESC AS  SELECT * FROM KDP_3_RFBLD_MATLDESC';
  DBMS_OUTPUT.PUT_LINE('KDP_3_RECON_MATLDESC - '||SQL%ROWCOUNT);
END;
/