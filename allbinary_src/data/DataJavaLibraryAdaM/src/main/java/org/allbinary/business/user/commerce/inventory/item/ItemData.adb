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



package body org.allbinary.business.user.commerce.inventory.item.ItemData_Package is

   procedure Initialize_Fields (This : in out ItemData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ItemData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ItemData_Access is
      This : constant ItemData_Access := new ItemData;
   begin
      ItemData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   ITEM := To_Unbounded_String ("ITEM");

end org.allbinary.business.user.commerce.inventory.item.ItemData_Package;


