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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItem_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;
with org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package; use org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
with org.allbinary.logic.communication.http.request.HttpRequestUtil_Package; use org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
with org.allbinary.logic.communication.http.request.MultipartRequestParams_Package; use org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package; use org.allbinary.logic.io.path.PathUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with views.admin.inventory.InventoryUploadMediaUtil_Package; use views.admin.inventory.InventoryUploadMediaUtil_Package;

package body views.admin.inventory.InventoryItemView_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasicItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;
   package BasicItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
   package DownloadableItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package DownloadableItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;
   package HttpFileUploadUtil_Package renames Standard.org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
   package HttpRequestUtil_Package renames Standard.org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
   package MultipartRequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package PathUtil_Package renames Standard.org.allbinary.logic.io.path.PathUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   procedure Initialize_Fields (This : in out InventoryItemView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      This.imageFileName := Null_Unbounded_String;
      This.mediaData := null;
      This.itemInterface := null;
      This.downloadableItemVector := null;
      This.requestHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (InventoryItemView'Class (This).getPageContext.getRequest);
        InventoryItemView'Class (This).getFormData;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return InventoryItemView_Access is
      This : constant InventoryItemView_Access := new InventoryItemView;
   begin
      InventoryItemView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (InventoryItemView'Class (This).getPageContext.getRequest);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String) return InventoryItemView_Access is
      This : constant InventoryItemView_Access := new InventoryItemView;
   begin
      InventoryItemView_Package.Initialize (This.all, transformInfoInterface_Param, empty);
      return This;
   end Create;

   function getTypeId (This : in out InventoryItemView) return Integer is
   begin
        return InventoryItemView_Package.TYPE_ID;
   end getTypeId;

   --  throws Exception
   procedure getFormData (This : in out InventoryItemView) is
      imageFileItemObject : Java_Object_Access;
      fileItem : FileItem_Access;
      pathData : AbPathData_Access;
      pathUtil : PathUtil_Access;
      stringBuffer : StringMaker_Access;
   begin
        InventoryItemView'Class (This).setRequestHashMap (MultipartRequestParams_Package.Create (This.request).toHashMap);
        imageFileItemObject := InventoryItemView'Class (This).getRequestHashMap.get (This.basicItemData.IMAGE);
        if HttpFileUploadUtil_Package.getInstance.isValid (imageFileItemObject) then
            fileItem := FileItem_Access (imageFileItemObject);
            if ((fileItem) /= (null)) and then ((fileItem.getSize) > (1)) then
                This.imageFileName := HttpRequestUtil_Package.getInstance.generateFileName (fileItem.getName);
                pathData := AbPathData_Package.getInstance;
                pathUtil := PathUtil_Package.getInstance;
                This.mediaData := MediaData_Package.get (pathData.getExtension (This.imageFileName));
                This.imageFileName := pathUtil.getWithoutExtension (This.imageFileName);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("Uploaded File Data: "));
                    stringBuffer.append (This.imageFileName);
                    stringBuffer.append (To_Unbounded_String (" Extension: "));
                    stringBuffer.append (This.mediaData.getName);
                    This.logUtil.putF (stringBuffer.toString, InventoryItemView_Access'(This'Unchecked_Access), To_Unbounded_String ("getFormData()"));
                end if;
            end if;
        end if;
        This.itemInterface := ItemInterface_Access (BasicItem_Package.Create (InventoryItemView'Class (This).getRequestHashMap));
   end getFormData;

   procedure addDomNodeInterfaces (This : in out InventoryItemView) is
      vector : BasicArrayList_Access;
      downloadableItem : DownloadableItem_Access;
      size : Integer;
      index : Integer;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        downloadableItem := null;
        size := This.downloadableItemVector.size;
        for index in 0 .. (size) - 1 loop
            downloadableItem := DownloadableItem_Access (This.downloadableItemVector.get (index));
            vector.add (Java_Object_Access (DownloadableItemView_Package.Create (downloadableItem)));
        end loop;
        InventoryItemView'Class (This).addDomNodeInterface (BasicItemView_Package.Create (This.itemInterface, vector));
   end addDomNodeInterfaces;

   function getItemInterface (This : in out InventoryItemView) return ItemInterface_Access is
   begin
        return This.itemInterface;
   end getItemInterface;

   --  throws Exception
   function view (This : in out InventoryItemView) return Unbounded_String is
   begin
        begin
            InventoryItemView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, InventoryItemView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   --  throws Exception
   procedure processImageFiles (This : in out InventoryItemView) is
      set : Set_Access;
      fieldNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      fieldName : Unbounded_String;
      storeFrontInterface : StoreFrontInterface_Access;
      inventoryUploadMediaUtil : InventoryUploadMediaUtil_Access;
      fileItem : FileItem_Access;
      index : Integer;
   begin
        set := InventoryItemView'Class (This).getRequestHashMap.keySet;
        fieldNameArray := set.toArray;
        size := fieldNameArray'Length;
        for index in 0 .. (size) - 1 loop
            fieldName := Java_Unbox (fieldNameArray (index));
            if (Java_Compare_To (fieldName, This.basicItemData.IMAGE)) = (0) then
                storeFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (InventoryItemView'Class (This).getWeblisketSession.getStoreName));
                inventoryUploadMediaUtil := InventoryUploadMediaUtil_Package.Create (storeFrontInterface, This.itemInterface);
                fileItem := FileItem_Access (InventoryItemView'Class (This).getRequestHashMap.get (This.basicItemData.IMAGE));
                This.itemInterface := ItemInterface_Access (inventoryUploadMediaUtil.saveFiles (fileItem.get, This.imageFileName, This.mediaData));
            end if;
        end loop;
   end processImageFiles;

   procedure setRequestHashMap (This : in out InventoryItemView; requestHashMap_Param : access HashMap_Package.HashMap'Class) is
      requestHashMap : constant HashMap_Access := HashMap_Access (requestHashMap_Param);
   begin
        This.requestHashMap := requestHashMap;
   end setRequestHashMap;

   function getRequestHashMap (This : in out InventoryItemView) return HashMap_Access is
   begin
        return This.requestHashMap;
   end getRequestHashMap;

begin
   null;
   TYPE_ID := 10;

end views.admin.inventory.InventoryItemView_Package;


