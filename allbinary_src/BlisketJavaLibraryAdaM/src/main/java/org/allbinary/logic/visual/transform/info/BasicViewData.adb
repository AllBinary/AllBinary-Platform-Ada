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


package body org.allbinary.logic.visual.transform.info.BasicViewData_Package is

   procedure Initialize_Fields (This : in out BasicViewData'Class) is
   begin
      null;
      This.GENERICDIR := To_Unbounded_String ("generic/");
      This.USERDIR := This.GENERICDIR & To_Unbounded_String ("user/");
      This.ADDRESSDIR := This.USERDIR & To_Unbounded_String ("address/");
      This.BILLINGADDRESSDIR := This.ADDRESSDIR & To_Unbounded_String ("billing/");
      This.SHIPPINGADDRESSDIR := This.ADDRESSDIR & To_Unbounded_String ("shipping/");
      This.COMMERCEDIR := This.USERDIR & To_Unbounded_String ("commerce/");
      This.INVENTORYDIR := This.COMMERCEDIR & To_Unbounded_String ("inventory/");
      This.BASKETDIR := This.INVENTORYDIR & To_Unbounded_String ("basket/");
      This.ITEMDIR := This.INVENTORYDIR & To_Unbounded_String ("item/");
      This.MONEYDIR := This.COMMERCEDIR & To_Unbounded_String ("money/");
      This.SHIPPINGDIR := This.COMMERCEDIR & To_Unbounded_String ("shipping/");
      This.ORDERDIR := This.INVENTORYDIR & To_Unbounded_String ("order/");
      This.ORDEREMAILDIR := This.ORDERDIR & To_Unbounded_String ("email/");
      This.ORDERHISTORYDIR := This.ORDERDIR & To_Unbounded_String ("history/");
      This.ORDERREVIEWDIR := This.ORDERDIR & To_Unbounded_String ("review/");
      This.PAYMENTDIR := This.MONEYDIR & To_Unbounded_String ("payment/");
      This.GENERATIONDIR := This.GENERICDIR & To_Unbounded_String ("generation/");
      This.PRODUCTSDIR := This.GENERICDIR & To_Unbounded_String ("products/");
      This.IGNOREXMLXSL := This.GENERICDIR & To_Unbounded_String ("ignoreXmlView.xsl");
      This.REVIEWORDERVIEWXSL := This.ORDERREVIEWDIR & To_Unbounded_String ("reviewOrderView.xsl");
      This.ORDERVIEWXSL := This.REVIEWORDERVIEWXSL;
      This.INVENTORYXSL := This.INVENTORYDIR & To_Unbounded_String ("inventory.xsl");
      This.BASKETXSL := This.BASKETDIR & To_Unbounded_String ("basket.xsl");
      This.CHECKOUTBASKETXSL := This.BASKETDIR & To_Unbounded_String ("staticBasket.xsl");
      This.MINIBASKETXSL := This.BASKETDIR & To_Unbounded_String ("miniBasket.xsl");
      This.BILLINGADDRESSCHANGEFORMXSL := This.BILLINGADDRESSDIR & To_Unbounded_String ("billingAddressChangeForm.xsl");
      This.BILLINGADDRESSINPUTFORMXSL := This.BILLINGADDRESSDIR & To_Unbounded_String ("billingAddressInputForm.xsl");
      This.BILLINGADDRESSVIEWXSL := This.BILLINGADDRESSDIR & To_Unbounded_String ("billingAddressView.xsl");
      This.SHIPPINGADDRESSCHANGEFORMXSL := This.SHIPPINGADDRESSDIR & To_Unbounded_String ("shippingAddressChangeForm.xsl");
      This.SHIPPINGADDRESSINPUTFORMXSL := This.SHIPPINGADDRESSDIR & To_Unbounded_String ("shippingAddressInputForm.xsl");
      This.SHIPPINGADDRESSVIEWXSL := This.SHIPPINGADDRESSDIR & To_Unbounded_String ("shippingAddressView.xsl");
      This.NEWTAXADDRESSXSL := This.SHIPPINGADDRESSDIR & To_Unbounded_String ("newTaxAddressView.xsl");
      This.EDITTAXADDRESSXSL := This.SHIPPINGADDRESSDIR & To_Unbounded_String ("editTaxAddressView.xsl");
      This.SHIPPINGMETHODSXSL := This.SHIPPINGDIR & To_Unbounded_String ("shippingMethods.xsl");
      This.ORDERCUSTOMEREMAILVIEWXSL := This.ORDEREMAILDIR & To_Unbounded_String ("orderCustomerEmailView.xsl");
      This.ORDERMANAGEREMAILVIEWXSL := This.ORDEREMAILDIR & To_Unbounded_String ("orderManagerEmailView.xsl");
      This.EDITCUSTOMERXSL := This.USERDIR & To_Unbounded_String ("editCustomerInputForm.xsl");
      This.ORDERHISTORYXSL := This.ORDERHISTORYDIR & To_Unbounded_String ("orderHistory.xsl");
      This.PAYMENTVIEWXSL := This.PAYMENTDIR & To_Unbounded_String ("paymentView.xsl");
      This.SUMMARYXSL := This.ITEMDIR & To_Unbounded_String ("summary/summary.xsl");
      This.PAYMENTGATEWAYOPTIONSXSL := This.PAYMENTDIR & To_Unbounded_String ("paymentGatewayOptions.xsl");
      This.MAKEPAYMENTVIEWXSL := This.PAYMENTDIR & To_Unbounded_String ("invoice/") & To_Unbounded_String ("makePayment.xsl");
   end Initialize_Fields;


   function getInstance return BasicViewData_Access is
   begin
        return BasicViewData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BasicViewData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicViewData_Access is
      This : constant BasicViewData_Access := new BasicViewData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant BasicViewData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := BasicViewData_Package.Create;

end org.allbinary.logic.visual.transform.info.BasicViewData_Package;


