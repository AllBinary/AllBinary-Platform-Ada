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


package body org.allbinary.business.user.commerce.shipping.modules.PickUpShippingModule_Package is

   procedure Initialize_Fields (This : in out PickUpShippingModule'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.name := To_Unbounded_String ("No Shipping (For Pickup Orders Only)");
      This.description := To_Unbounded_String ("This shipping method is for pickup orders only.");
   end Initialize_Fields;


   procedure Initialize (This : in out PickUpShippingModule'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PickUpShippingModule_Access is
      This : constant PickUpShippingModule_Access := new PickUpShippingModule;
   begin
      PickUpShippingModule_Package.Initialize (This.all);
      return This;
   end Create;

   function getCost (This : in out PickUpShippingModule; order_Param : access OrderInterface'Class) return Money_Access is
      order : OrderInterface_Access := OrderInterface_Access (order_Param);
   begin
        return Money_Package.Create;
   end getCost;

   function getDescription (This : in out PickUpShippingModule) return Unbounded_String is
   begin
        return This.description;
   end getDescription;

   function getName (This : in out PickUpShippingModule) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure getCost (This : in out PickUpShippingModule; order_Param : access OrderInterface'Class) is
      Java_Result : constant Money_Access := PickUpShippingModule'Class (This).getCost (order_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCost;

end org.allbinary.business.user.commerce.shipping.modules.PickUpShippingModule_Package;


