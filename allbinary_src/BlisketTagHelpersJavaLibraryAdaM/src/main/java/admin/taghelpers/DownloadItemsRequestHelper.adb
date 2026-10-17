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


package body admin.taghelpers.DownloadItemsRequestHelper_Package is

   procedure Initialize_Fields (This : in out DownloadItemsRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadItemsRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
      inventoryTag : HelperTag_Access;
      inventoryItemViewParentTagHelper : InventoryItemViewParentTagHelper_Access;
      downloadableInventoryItemView : DownloadableInventoryItemView_Access;
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        inventoryTag := HelperTag_Access (hashMap.get (AbTagData_Package.PARENT));
        inventoryItemViewParentTagHelper := InventoryItemViewParentTagHelper_Package.getInstance;
        downloadableInventoryItemView := inventoryItemViewParentTagHelper.getDownloadableInventoryItemView (inventoryTag);
        This.downloadableItem := downloadableInventoryItemView.getDownloadableItem;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return DownloadItemsRequestHelper_Access is
      This : constant DownloadItemsRequestHelper_Access := new DownloadItemsRequestHelper;
   begin
      DownloadItemsRequestHelper_Package.Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   function insert (This : in out DownloadItemsRequestHelper) return Unbounded_String is
      vector : BasicArrayList_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            vector := This.downloadableItem.toVector;
            DownloadItemsEntityFactory_Package.getInstance.getDownloadItemsEntityInstance.insert (vector);
            success := To_Unbounded_String ("Successfully inserted ") & Java_Image (This.downloadableItem.getId) & To_Unbounded_String (" into downloaditems table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to insert ") & Java_Image (This.downloadableItem.getId) & To_Unbounded_String (" into downloaditems table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("inserts()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function delete (This : in out DownloadItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            DownloadItemsEntityFactory_Package.getInstance.getDownloadItemsEntityInstance.delete (This.downloadableItem.getId);
            success := To_Unbounded_String ("Successfully deleted");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   function update (This : in out DownloadItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      values : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Update Successful");
            values := This.downloadableItem.toHashMap;
            DownloadItemsEntityFactory_Package.getInstance.getDownloadItemsEntityInstance.update (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (Java_Image ((This.downloadableItem.getId) + (CommonSeps_Package.getInstance.SPACE)) & success, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update: ") & Java_Image (This.downloadableItem.getId);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

end admin.taghelpers.DownloadItemsRequestHelper_Package;


