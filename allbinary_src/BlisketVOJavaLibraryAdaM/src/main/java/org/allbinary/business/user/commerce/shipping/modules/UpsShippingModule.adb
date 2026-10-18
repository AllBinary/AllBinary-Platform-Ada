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



package body org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package is

   procedure Initialize_Fields (This : in out UpsShippingModule'Class) is
   begin
      null;
      This.name := To_Unbounded_String ("UPS");
      This.description := To_Unbounded_String ("Brown Mail");
   end Initialize_Fields;


   procedure Initialize (This : in out UpsShippingModule'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UpsShippingModule_Access is
      This : constant UpsShippingModule_Access := new UpsShippingModule;
   begin
      UpsShippingModule_Package.Initialize (This.all);
      return This;
   end Create;

   function getCost (This : in out UpsShippingModule; order_Param : access OrderInterface_Package.OrderInterface'Class) return Money_Access is
      order : constant OrderInterface_Access := OrderInterface_Access (order_Param);
   begin
        return Money_Package.Create;
   end getCost;

   function getDescription (This : in out UpsShippingModule) return Unbounded_String is
   begin
        return This.description;
   end getDescription;

   function getName (This : in out UpsShippingModule) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure getCost (This : in out UpsShippingModule; order_Param : access OrderInterface_Package.OrderInterface'Class) is
      Java_Result : constant Money_Access := UpsShippingModule'Class (This).getCost (order_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCost;

end org.allbinary.business.user.commerce.shipping.modules.UpsShippingModule_Package;


