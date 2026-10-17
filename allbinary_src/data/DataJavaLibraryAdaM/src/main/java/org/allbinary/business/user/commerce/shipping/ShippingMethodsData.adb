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


package body org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package is

   procedure Initialize_Fields (This : in out ShippingMethodsData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ShippingMethodsData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ShippingMethodsData_Access is
      This : constant ShippingMethodsData_Access := new ShippingMethodsData;
   begin
      Initialize (This.all);
      return This;
   end Create;


begin
   null;
   SHIPPINGMETHODSORDERSUMMARIES := To_Unbounded_String ("SHIPPINGMETHODS_ORDERSUMMARIES");
   SHIPPINGMETHODORDERSUMMARY := To_Unbounded_String ("SHIPPINGMETHOD_ORDERSUMMARY");
   SHIPPINGMETHODS := To_Unbounded_String ("SHIPPINGMETHODS");
   NAME := To_Unbounded_String ("SHIPPINGMETHODS_NAME");
   SHIPPINGCOST := To_Unbounded_String ("SHIPPINGMETHOD_SHIPPINGCOST");
   TAXRATE := To_Unbounded_String ("SHIPPINGMETHOD_TAXRATE");
   SUBTOTAL := To_Unbounded_String ("SHIPPINGMETHOD_SUBTOTAL");
   TAX := To_Unbounded_String ("SHIPPINGMETHOD_TAX");
   TOTAL := To_Unbounded_String ("SHIPPINGMETHOD_TOTAL");

end org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package;


