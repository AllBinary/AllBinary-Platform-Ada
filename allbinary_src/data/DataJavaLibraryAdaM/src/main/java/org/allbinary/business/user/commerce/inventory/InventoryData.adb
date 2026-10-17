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


package body org.allbinary.business.user.commerce.inventory.InventoryData_Package is

   procedure Initialize_Fields (This : in out InventoryData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out InventoryData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InventoryData_Access is
      This : constant InventoryData_Access := new InventoryData;
   begin
      InventoryData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   INVENTORY := To_Unbounded_String ("INVENTORY");

end org.allbinary.business.user.commerce.inventory.InventoryData_Package;


