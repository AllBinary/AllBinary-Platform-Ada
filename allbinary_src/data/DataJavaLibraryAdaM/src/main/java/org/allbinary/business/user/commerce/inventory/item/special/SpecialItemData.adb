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



package body org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package is

   procedure Initialize_Fields (This : in out SpecialItemData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SpecialItemData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SpecialItemData_Access is
      This : constant SpecialItemData_Access := new SpecialItemData;
   begin
      SpecialItemData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   START_TIME := To_Unbounded_String ("SPECIALITEM_START_TIME");
   END_TIME := To_Unbounded_String ("SPECIALITEM_END_TIME");

end org.allbinary.business.user.commerce.inventory.item.special.SpecialItemData_Package;


