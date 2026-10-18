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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.data.tables.user.commerce.inventory.item.permissions.PermissionItemsEntityFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out PermissionItemsEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return PermissionItemsEntityFactory_Access is
   begin
        return PermissionItemsEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PermissionItemsEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PermissionItemsEntityFactory_Access is
      This : constant PermissionItemsEntityFactory_Access := new PermissionItemsEntityFactory;
   begin
      PermissionItemsEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getPermissionItemsEntityInstance return PermissionItemsEntity_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return PermissionItemsEntity_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("PermissionItemsEntityFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getPermissionItemsEntityInstance;

begin
   null;
   instance := PermissionItemsEntityFactory_Package.Create;

end org.allbinary.data.tables.user.commerce.inventory.item.permissions.PermissionItemsEntityFactory_Package;


