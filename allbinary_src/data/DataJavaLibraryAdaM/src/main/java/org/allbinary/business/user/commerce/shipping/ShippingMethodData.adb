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


package body org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package is

   procedure Initialize_Fields (This : in out ShippingMethodData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingMethodData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ShippingMethodData_Access is
      This : constant ShippingMethodData_Access := new ShippingMethodData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   DESCRIPTION := To_Unbounded_String ("SHIPPINGMETHOD_DESCRIPTION");
   DEFAULT := To_Unbounded_String ("SHIPPINGMETHOD_DEFAULT");
   NAME := To_Unbounded_String ("SHIPPINGMETHOD_NAME");
   GROUP := To_Unbounded_String ("SHIPPINGMETHOD_GROUP");
   COST := To_Unbounded_String ("SHIPPINGMETHOD_COST");

end org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;


