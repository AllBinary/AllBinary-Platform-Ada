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


package body org.allbinary.business.user.address_Case.ShippingAddressData_Package is

   procedure Initialize_Fields (This : in out ShippingAddressData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingAddressData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ShippingAddressData_Access is
      This : constant ShippingAddressData_Access := new ShippingAddressData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   SETTOBILLINGADDRESS := To_Unbounded_String ("Set To Billing Address");
   SELECT_Id := To_Unbounded_String ("Select Shipping Address");
   SELECTNAME := To_Unbounded_String ("SELECTSHIPPINGADDRESS");
   MULTIPLE := To_Unbounded_String ("SHIPPINGADDRESSES");
   SHIPPINGADDRESSES := To_Unbounded_String ("SHIPPINGADDRESSES");
   SHIPPINGADDRESS := To_Unbounded_String ("SHIPPINGADDRESS");
   ID := To_Unbounded_String ("SHIPPINGADDRESS_ID");
   ADDRESS := To_Unbounded_String ("SHIPPINGADDRESS_ADDRESS");
   NAME := To_Unbounded_String ("SHIPPINGADDRESS_NAME");
   STREET := To_Unbounded_String ("SHIPPINGADDRESS_STREET");
   CITY := To_Unbounded_String ("SHIPPINGADDRESS_CITY");
   STATE := To_Unbounded_String ("SHIPPINGADDRESS_STATE");
   CODE := To_Unbounded_String ("SHIPPINGADDRESS_CODE");
   COUNTRY := To_Unbounded_String ("SHIPPINGADDRESS_COUNTRY");
   TAX := To_Unbounded_String ("SHIPPINGADDRESS_TAX");

end org.allbinary.business.user.address_Case.ShippingAddressData_Package;


