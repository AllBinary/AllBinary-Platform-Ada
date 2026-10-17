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


package body org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package is

   procedure Initialize_Fields (This : in out PermissionItemData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PermissionItemData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PermissionItemData_Access is
      This : constant PermissionItemData_Access := new PermissionItemData;
   begin
      Initialize (This.all);
      return This;
   end Create;


begin
   null;
   WHO := To_Unbounded_String ("PERMISSIONSITEM_WHO");
   WHAT := To_Unbounded_String ("PERMISSIONSITEM_WHAT");
   TYPE_Id := To_Unbounded_String ("PERMISSIONSITEM_TYPE");
   START_TIME := To_Unbounded_String ("PERMISSIONSITEM_START_TIME");
   END_TIME := To_Unbounded_String ("PERMISSIONSITEM_END_TIME");
   REMOTE_ADDR := To_Unbounded_String ("PERMISSIONSITEM_REMOTE_ADDR");

end org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package;


