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

package body org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out DownloadItemsEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return DownloadItemsEntityFactory_Access is
   begin
        return DownloadItemsEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DownloadItemsEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DownloadItemsEntityFactory_Access is
      This : constant DownloadItemsEntityFactory_Access := new DownloadItemsEntityFactory;
   begin
      DownloadItemsEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getDownloadItemsEntityInstance (This : in out DownloadItemsEntityFactory) return DownloadItemsEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return DownloadItemsEntity_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, DownloadItemsEntityFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getDownloadItemsEntityInstance;

begin
   null;
   instance := DownloadItemsEntityFactory_Package.Create;

end org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package;


