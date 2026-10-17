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


package body org.allbinary.business.user.commerce.shipping.modules.UspsShippingModule_Package is

   procedure Initialize_Fields (This : in out UspsShippingModule'Class) is
   begin
      null;
      This.name := To_Unbounded_String ("USPS");
      This.description := To_Unbounded_String ("Snail Mail");
   end Initialize_Fields;


   procedure Initialize (This : in out UspsShippingModule'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UspsShippingModule_Access is
      This : constant UspsShippingModule_Access := new UspsShippingModule;
   begin
      UspsShippingModule_Package.Initialize (This.all);
      return This;
   end Create;

   function getCost (This : in out UspsShippingModule; order : OrderInterface_Access) return Money_Access is
   begin
        return Money_Package.Create;
   end getCost;

   function getDescription (This : in out UspsShippingModule) return Unbounded_String is
   begin
        return This.description;
   end getDescription;

   function getName (This : in out UspsShippingModule) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure getCost (This : in out UspsShippingModule; order : OrderInterface_Access) is
      Java_Result : constant Money_Access := UspsShippingModule'Class (This).getCost (order);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCost;

end org.allbinary.business.user.commerce.shipping.modules.UspsShippingModule_Package;


