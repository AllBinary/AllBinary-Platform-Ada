--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package is

   procedure Initialize_Fields (This : in out AuthorizeNetData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AuthorizeNetData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AuthorizeNetData_Access is
      This : constant AuthorizeNetData_Access := new AuthorizeNetData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   X_LOGIN := To_Unbounded_String ("x_login");
   X_TRAN_KEY := To_Unbounded_String ("x_tran_key");
   X_VERSION := To_Unbounded_String ("x_version");
   X_TEST_REQUEST := To_Unbounded_String ("x_test_request");
   X_RELAY_RESPONSE := To_Unbounded_String ("x_relay_response");
   X_DUPLICATE_WINDOW := To_Unbounded_String ("x_duplicate_window");
   X_FIRST_NAME := To_Unbounded_String ("x_first_name");
   X_LAST_NAME := To_Unbounded_String ("x_last_name");
   X_COMPANY := To_Unbounded_String ("x_company");
   X_ADDRESS := To_Unbounded_String ("x_address");
   X_CITY := To_Unbounded_String ("x_city");
   X_STATE := To_Unbounded_String ("x_state");
   X_ZIP := To_Unbounded_String ("x_zip");
   X_COUNTRY := To_Unbounded_String ("x_country");
   X_PHONE := To_Unbounded_String ("x_phone");
   X_FAX := To_Unbounded_String ("x_fax");
   X_CUST_ID := To_Unbounded_String ("x_cust_id");
   X_CUSTOMER_IP := To_Unbounded_String ("x_customer_ip");
   X_CUSTOMER_TAX_ID := To_Unbounded_String ("x_customer_tax_id");
   X_EMAIL_CUSTOMER := To_Unbounded_String ("x_email_customer");
   X_EMAIL := To_Unbounded_String ("x_email");
   X_EMAIL_MERCHANT := To_Unbounded_String ("x_email_merchant");
   X_INVOICE_NUM := To_Unbounded_String ("x_invoice_num");
   X_DESCRIPTION := To_Unbounded_String ("x_description");
   X_SHIP_TO_FIRST_NAME := To_Unbounded_String ("x_ship_to_first_name");
   X_SHIP_TO_LAST_NAME := To_Unbounded_String ("x_ship_to_last_name");
   X_SHIP_TO_COMPANY := To_Unbounded_String ("x_ship_to_company");
   X_SHIP_TO_ADDRESS := To_Unbounded_String ("x_ship_to_address");
   X_SHIP_TO_CITY := To_Unbounded_String ("x_ship_to_city");
   X_SHIP_TO_STATE := To_Unbounded_String ("x_ship_to_state");
   X_SHIP_TO_ZIP := To_Unbounded_String ("x_ship_to_zip");
   X_SHIP_TO_COUNTRY := To_Unbounded_String ("x_ship_to_country");
   X_AMOUNT := To_Unbounded_String ("x_amount");
   X_CURRENCY_CODE := To_Unbounded_String ("x_currency_code");
   X_METHOD := To_Unbounded_String ("x_method");
   X_TYPE := To_Unbounded_String ("x_type");
   X_RECURRING_BILLING := To_Unbounded_String ("x_recurring_billing");
   X_BANK_ABA_CODE := To_Unbounded_String ("x_bank_aba_code");
   X_BANK_ACCT_NUM := To_Unbounded_String ("x_bank_acct_num");
   X_BANK_ACCT_TYPE := To_Unbounded_String ("x_bank_acct_type");
   X_BANK_NAME := To_Unbounded_String ("x_bank_name");
   X_BANK_ACCT_NAME := To_Unbounded_String ("x_bank_acct_name");
   X_ECHECK_TYPE := To_Unbounded_String ("x_echeck_type");
   X_CARD_NUM := To_Unbounded_String ("x_card_num");
   X_EXP_DATE := To_Unbounded_String ("x_exp_date");
   X_CARD_CODE := To_Unbounded_String ("x_card_code");
   X_TRANS_ID := To_Unbounded_String ("x_trans_id");
   X_AUTH_CODE := To_Unbounded_String ("x_auth_code");
   X_PO_NUM := To_Unbounded_String ("x_po_num");
   X_TAX := To_Unbounded_String ("x_tax");
   X_TAX_EXEMPT := To_Unbounded_String ("x_tax_exempt");
   X_FREIGHT := To_Unbounded_String ("x_freight");
   X_DUTY := To_Unbounded_String ("x_duty");

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.AuthorizeNetData_Package;


