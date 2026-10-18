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



package body org.allbinary.business.user.commerce.inventory.basket.BasketData_Package is

   procedure Initialize_Fields (This : in out BasketData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasketData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasketData_Access is
      This : constant BasketData_Access := new BasketData;
   begin
      BasketData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   BASKET := To_Unbounded_String ("BASKET");
   NAME := To_Unbounded_String ("NAME");
   BASKETREVIEW := To_Unbounded_String ("BASKET_REVIEW");
   TOTALWEIGHT := To_Unbounded_String ("BASKET_TOTALWEIGTH");
   ITEMTOTAL := To_Unbounded_String ("BASKET_ITEMTOTAL");
   ITEMTOTALINBASKET := To_Unbounded_String ("BASKET_ITEMTOTALINBASKET");
   SUBTOTAL := To_Unbounded_String ("BASKET_SUBTOTAL");
   ISEMPTY := To_Unbounded_String ("BASKET_ISEMPTY");
   INSERT := To_Unbounded_String ("BASKET_INSERT");
   DELETE := To_Unbounded_String ("BASKET_DELETE");
   ADJUST := To_Unbounded_String ("BASKET_ADJUST");

end org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;


