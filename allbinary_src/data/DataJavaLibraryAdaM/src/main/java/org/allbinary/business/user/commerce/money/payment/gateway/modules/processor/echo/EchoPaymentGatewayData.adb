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



package body org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package is

   procedure Initialize_Fields (This : in out EchoPaymentGatewayData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out EchoPaymentGatewayData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EchoPaymentGatewayData_Access is
      This : constant EchoPaymentGatewayData_Access := new EchoPaymentGatewayData;
   begin
      EchoPaymentGatewayData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   TRANSACTION_TYPE := To_Unbounded_String ("transaction_type");
   MERCHANT_ECHO_ID := To_Unbounded_String ("merchant_echo_id");
   ORDER_TYPE := To_Unbounded_String ("order_type");
   MERCHANT_PIN := To_Unbounded_String ("merchant_pin");
   ISP_ECHO_ID := To_Unbounded_String ("isp_echo_id");
   ISP_PIN := To_Unbounded_String ("isp_pin");
   BILLING_IP_ADDRESS := To_Unbounded_String ("billing_ip_address");
   MERCHANT_EMAIL := To_Unbounded_String ("merchant_email");
   AUTHORIZATION := To_Unbounded_String ("authorization");
   BILLING_PREFIX := To_Unbounded_String ("billing_prefix");
   BILLING_NAME := To_Unbounded_String ("billing_name");
   BILLING_FIRST_NAME := To_Unbounded_String ("billing_first_name");
   BILLING_LAST_NAME := To_Unbounded_String ("billing_last_name");
   BILLING_COMPANY_NAME := To_Unbounded_String ("billing_company_name");
   BILLING_ADDRESS1 := To_Unbounded_String ("billing_address1");
   BILLING_ADDRESS2 := To_Unbounded_String ("billing_address2");
   BILLING_CITY := To_Unbounded_String ("billing_city");
   BILLING_STATE := To_Unbounded_String ("billing_state");
   BILLING_ZIP := To_Unbounded_String ("billing_zip");
   BILLING_COUNTRY := To_Unbounded_String ("billing_country");
   BILLING_PHONE := To_Unbounded_String ("billing_phone");
   BILLING_FAX := To_Unbounded_String ("billing_fax");
   BILLING_EMAIL := To_Unbounded_String ("billing_email");
   CC_NUMBER := To_Unbounded_String ("cc_number");
   CCEXP_MONTH := To_Unbounded_String ("ccexp_month");
   CCEXP_YEAR := To_Unbounded_String ("ccexp_year");
   CNP_RECURRING := To_Unbounded_String ("cnp_recurring");
   cnp_security := To_Unbounded_String ("cnp_security");
   COUNTER := To_Unbounded_String ("counter");
   DEBUG := To_Unbounded_String ("debug");
   EC_ACCOUNT := To_Unbounded_String ("ec_account");
   EC_ACCOUNT_TYPE := To_Unbounded_String ("ec_account_type");
   EC_ADDRESS1 := To_Unbounded_String ("ec_address1");
   EC_ADDRESS2 := To_Unbounded_String ("ec_address2");
   EC_BANK_NAME := To_Unbounded_String ("ec_bank_name");
   EC_CITY := To_Unbounded_String ("ec_city");
   EC_EMAIL := To_Unbounded_String ("ec_email");
   EC_FIRST_NAME := To_Unbounded_String ("ec_first_name");
   EC_ID_COUNTRY := To_Unbounded_String ("ec_id_country");
   EC_ID_EXP_MM := To_Unbounded_String ("ec_id_exp_mm");
   EC_ID_EXP_DD := To_Unbounded_String ("ec_id_exp_dd");
   EC_ID_EXP_YY := To_Unbounded_String ("ec_id_exp_yy");
   EC_ID_NUMBER := To_Unbounded_String ("ec_id_number");
   EC_ID_STATE := To_Unbounded_String ("ec_id_state");
   EC_ID_TYPE := To_Unbounded_String ("ec_id_type");
   EC_LAST_NAME := To_Unbounded_String ("ec_last_name");
   EC_BUSINESS_NAME := To_Unbounded_String ("ec_BUSINESS_NAME");
   EC_LICENSE_NUMBER := To_Unbounded_String ("ec_LICENSE_NUMBER");
   EC_LICENSE_STATE := To_Unbounded_String ("ec_LICENSE_STATE");
   EC_MERCHANT_REF := To_Unbounded_String ("ec_MERCHANT_REF");
   EC_NBDS_CODE := To_Unbounded_String ("ec_NBDS_CODE");
   EC_OTHER_NAME := To_Unbounded_String ("ec_other_name");
   EC_PAYEE := To_Unbounded_String ("ec_payee");
   EC_PAYMENT_TYPE := To_Unbounded_String ("ec_payment_type");
   EC_RT := To_Unbounded_String ("ec_rt");
   EC_SERIAL_NUMBER := To_Unbounded_String ("ec_serial_number");
   EC_STATE := To_Unbounded_String ("ec_state");
   EC_TRANSACTION_DT := To_Unbounded_String ("ec_transaction_dt");
   EC_ZIP := To_Unbounded_String ("ec_zip");
   GRAND_TOTAL := To_Unbounded_String ("grand_total");
   MERCHANT_TRACE_NBR := To_Unbounded_String ("merchant_trace_nbr");
   ORDER_NUMBER := To_Unbounded_String ("order_number");
   ORIGINAL_AMOUNT := To_Unbounded_String ("original_amount");
   ORIGINAL_TRANDATE_MM := To_Unbounded_String ("original_trandate_mm");
   ORIGINAL_TRANDATE_DD := To_Unbounded_String ("original_trandate_dd");
   ORIGINAL_TRANDATE_YYYY := To_Unbounded_String ("original_trandate_yyyy");
   ORIGINAL_REFERENCE := To_Unbounded_String ("original_reference");
   PRODUCT_DESCRIPTION := To_Unbounded_String ("product_description");
   PURCHASE_ORDER_NUMBER := To_Unbounded_String ("purchase_order_number");
   SALES_TAX := To_Unbounded_String ("sales_tax");

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.EchoPaymentGatewayData_Package;


