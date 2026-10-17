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


package body org.allbinary.business.user.address_Case.BillingAddressData_Package is

   procedure Initialize_Fields (This : in out BillingAddressData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BillingAddressData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BillingAddressData_Access is
      This : constant BillingAddressData_Access := new BillingAddressData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   MAX := 255;
   MIN := 0;
   MULTIPLE := To_Unbounded_String ("BILLINGADDRESSES");
   STATES := To_Unbounded_String ("BILLINGADDRESS_STATES");
   SETTOSHIPPINGADDRESS := To_Unbounded_String ("Set To Shipping Address");
   SELECT_Id := To_Unbounded_String ("Select Billing Address");
   SETTOSHIPPINGADDRESSNAME := To_Unbounded_String ("SETTOSHIPPINGADDRESS");
   BILLINGADDRESSES := To_Unbounded_String ("BILLINGADDRESSES");
   BILLINGADDRESS := To_Unbounded_String ("BILLINGADDRESS");
   ID := To_Unbounded_String ("BILLINGADDRESS_ID");
   ADDRESS := To_Unbounded_String ("BILLINGADDRESS_ADDRESS");
   NAME := To_Unbounded_String ("BILLINGADDRESS_NAME");
   STREET := To_Unbounded_String ("BILLINGADDRESS_STREET");
   CITY := To_Unbounded_String ("BILLINGADDRESS_CITY");
   STATE := To_Unbounded_String ("BILLINGADDRESS_STATE");
   CODE := To_Unbounded_String ("BILLINGADDRESS_CODE");
   COUNTRY := To_Unbounded_String ("BILLINGADDRESS_COUNTRY");

end org.allbinary.business.user.address_Case.BillingAddressData_Package;


