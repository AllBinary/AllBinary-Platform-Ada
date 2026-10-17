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


package body org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModule_Package is

   procedure Initialize_Fields (This : in out BasicWeightShippingModule'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.name := To_Unbounded_String ("Basic Shipping (5 to 7 working days)");
      This.description := To_Unbounded_String ("We will soon provide a variety of shipping methods.");
   end Initialize_Fields;


   procedure Initialize (This : in out BasicWeightShippingModule'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicWeightShippingModule_Access is
      This : constant BasicWeightShippingModule_Access := new BasicWeightShippingModule;
   begin
      BasicWeightShippingModule_Package.Initialize (This.all);
      return This;
   end Create;

   function getCost (This : in out BasicWeightShippingModule; order : OrderInterface_Access) return Money_Access is
      basket : BasketInterface_Access;
      money : Money_Access;
   begin
        basket := order.getBasket;
        money := Money_Package.Create;
        money.add (basket.getTotalWeight);
        money.multiply (1);
        money.add (To_Unbounded_String ("3.50"));
        return money;
   end getCost;

   function getDescription (This : in out BasicWeightShippingModule) return Unbounded_String is
   begin
        return This.description;
   end getDescription;

   function getName (This : in out BasicWeightShippingModule) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure getCost (This : in out BasicWeightShippingModule; order : OrderInterface_Access) is
      Java_Result : constant Money_Access := BasicWeightShippingModule'Class (This).getCost (order);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCost;

end org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModule_Package;


