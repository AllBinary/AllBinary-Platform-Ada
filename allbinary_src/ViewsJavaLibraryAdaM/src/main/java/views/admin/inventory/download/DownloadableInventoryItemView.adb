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


with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
with org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.MultipartRequestParams_Package; use org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package; use org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.file.zip.ZipFileUtil_Package; use org.allbinary.logic.io.file.zip.ZipFileUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileItem_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with views.HttpComponentView_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body views.admin.inventory.download.DownloadableInventoryItemView_Package is

   package ByteArrayInputStream_Package renames Standard.java.io.ByteArrayInputStream_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasicItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
   package DownloadableItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package MultipartRequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FilePathData_Package renames Standard.org.allbinary.logic.io.file.FilePathData_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package ZipFileUtil_Package renames Standard.org.allbinary.logic.io.file.zip.ZipFileUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   function "=" (Left, Right : BasicItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   function "=" (Left, Right : BasicItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   function "=" (Left, Right : BasicItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   function "=" (Left, Right : BasicItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype ItemInterface_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access;
   function "=" (Left, Right : ItemInterface_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   subtype ItemInterface_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array;
   function "=" (Left, Right : ItemInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   subtype ItemInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access;
   function "=" (Left, Right : ItemInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   subtype ItemInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ItemInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   subtype ItemInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References."=";
   subtype DownloadableItem_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access;
   function "=" (Left, Right : DownloadableItem_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array;
   function "=" (Left, Right : DownloadableItem_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access;
   function "=" (Left, Right : DownloadableItem_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access_Array;
   function "=" (Left, Right : DownloadableItem_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype DownloadableItem_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References.DownloadableItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownloadableItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   function "=" (Left, Right : TransformInfoInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype FileItem_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access;
   function "=" (Left, Right : FileItem_Access) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   subtype FileItem_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array;
   function "=" (Left, Right : FileItem_Access_Array) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   subtype FileItem_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access;
   function "=" (Left, Right : FileItem_Access_Array_Access) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   subtype FileItem_Access_Array_Access_Array is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array;
   function "=" (Left, Right : FileItem_Access_Array_Access_Array) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   subtype FileItem_Access_Array_Access_Array_Access is org.apache.commons.fileupload.FileItem_Package_References.FileItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileItem_Access_Array_Access_Array_Access) return Boolean renames org.apache.commons.fileupload.FileItem_Package_References."=";
   procedure Initialize_Fields (This : in out DownloadableInventoryItemView'Class) is
   begin
      null;
      This.DownloadableInventoryItemView_Field_logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      This.id := Null_Unbounded_String;
      This.itemInterface := null;
      This.downloadableItem := null;
      This.requestHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadableInventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (DownloadableInventoryItemView'Class (This).getPageContext.getRequest);
        DownloadableInventoryItemView'Class (This).getFormData;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DownloadableInventoryItemView_Access is
      This : constant DownloadableInventoryItemView_Access := new DownloadableInventoryItemView;
   begin
      DownloadableInventoryItemView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out DownloadableInventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (DownloadableInventoryItemView'Class (This).getPageContext.getRequest);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; empty : Unbounded_String) return DownloadableInventoryItemView_Access is
      This : constant DownloadableInventoryItemView_Access := new DownloadableInventoryItemView;
   begin
      DownloadableInventoryItemView_Package.Initialize (This.all, transformInfoInterface_Param, empty);
      return This;
   end Create;

   function getTypeId (This : in out DownloadableInventoryItemView) return Integer is
   begin
        return DownloadableInventoryItemView_Package.TYPE_ID;
   end getTypeId;

   --  throws Exception
   procedure getFormData (This : in out DownloadableInventoryItemView) is
   begin
        DownloadableInventoryItemView'Class (This).setRequestHashMap (MultipartRequestParams_Package.Create (This.request).toHashMap);
        This.id := Java_Unbox (DownloadableInventoryItemView'Class (This).getRequestHashMap.get (This.basicItemData.ID));
   end getFormData;

   procedure addDomNodeInterfaces (This : in out DownloadableInventoryItemView) is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        if (This.downloadableItem) /= (null) then
            vector.add (Java_Object_Access (DownloadableItemView_Package.Create (This.downloadableItem)));
        end if;
        DownloadableInventoryItemView'Class (This).addDomNodeInterface (BasicItemView_Package.Create (This.itemInterface, vector));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out DownloadableInventoryItemView) return Unbounded_String is
   begin
        begin
            DownloadableInventoryItemView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView_Package.HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.DownloadableInventoryItemView_Field_logUtil.put (This.commonStrings.EXCEPTION_Id, DownloadableInventoryItemView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   --  throws Exception
   procedure processFile (This : in out DownloadableInventoryItemView; fileItem_Param : access FileItem_Package.FileItem'Class) is
      fileItem : constant FileItem_Access := FileItem_Access (fileItem_Param);
      fileName : Unbounded_String;
      fullPath : Unbounded_String;
      itemResourceFile : AbFile_Access;
      stringBuffer : StringMaker_Access;
      file : AbFile_Access;
      byteArray : Short_Short_Integer_Array_Access;
   begin
        fileName := fileItem.getName;
        fullPath := DownloadableInventoryItemView'Class (This).getItemFilePath;
        itemResourceFile := AbFile_Package.createAbFile (fullPath);
        itemResourceFile.mkdir;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (fullPath);
        stringBuffer.append (fileName);
        This.DownloadableInventoryItemView_Field_logUtil.putF (To_Unbounded_String ("FileName: ") & fileName, DownloadableInventoryItemView_Access'(This'Unchecked_Access), To_Unbounded_String ("processFile()"));
        file := AbFile_Package.createAbFile (stringBuffer.toString);
        This.DownloadableInventoryItemView_Field_logUtil.putF (file.getPath, DownloadableInventoryItemView_Access'(This'Unchecked_Access), To_Unbounded_String ("processFiles()"));
        file.createNewFile;
        byteArray := fileItem.get;
        FileUtil_Package.getInstance.write (ByteArrayInputStream_Package.Create (byteArray), file);
   end processFile;

   --  throws Exception
   procedure unzip (This : in out DownloadableInventoryItemView; fileItem_Param : access FileItem_Package.FileItem'Class) is
      fileItem : constant FileItem_Access := FileItem_Access (fileItem_Param);
      fileName : Unbounded_String;
      fullPath : Unbounded_String;
      stringBuffer : StringMaker_Access;
      file : AbFile_Access;
   begin
        fileName := fileItem.getName;
        fullPath := DownloadableInventoryItemView'Class (This).getItemFilePath;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (fullPath);
        stringBuffer.append (fileName);
        This.DownloadableInventoryItemView_Field_logUtil.putF (To_Unbounded_String ("FileName: ") & fileName, DownloadableInventoryItemView_Access'(This'Unchecked_Access), To_Unbounded_String ("unzip()"));
        file := AbFile_Package.createAbFile (stringBuffer.toString);
        This.DownloadableInventoryItemView_Field_logUtil.putF (file.getPath, DownloadableInventoryItemView_Access'(This'Unchecked_Access), To_Unbounded_String ("unzip()"));
        ZipFileUtil_Package.getInstance.unzip (fullPath, file, fileName);
   end unzip;

   function getItemFilePath (This : in out DownloadableInventoryItemView) return Unbounded_String is
      storeFrontInterface : StoreFrontInterface_Access;
      filePathData : FilePathData_Access;
      stringBuffer : StringMaker_Access;
   begin
        storeFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (DownloadableInventoryItemView'Class (This).getWeblisketSession.getStoreName));
        filePathData := FilePathData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS_Package.getWebappPath);
        stringBuffer.append (storeFrontInterface.getCurrentHostNamePath);
        stringBuffer.append (This.itemInterface.getCategory);
        stringBuffer.appendchar (filePathData.SEPARATORCHAR);
        stringBuffer.append (This.itemInterface.getId);
        stringBuffer.appendchar (filePathData.SEPARATORCHAR);
        stringBuffer.append (This.downloadableItem.getId);
        stringBuffer.appendchar (filePathData.SEPARATORCHAR);
        return stringBuffer.toString;
   end getItemFilePath;

   procedure setRequestHashMap (This : in out DownloadableInventoryItemView; requestHashMap_Param : access HashMap_Package.HashMap'Class) is
      requestHashMap : constant HashMap_Access := HashMap_Access (requestHashMap_Param);
   begin
        This.requestHashMap := requestHashMap;
   end setRequestHashMap;

   function getRequestHashMap (This : in out DownloadableInventoryItemView) return HashMap_Access is
   begin
        return This.requestHashMap;
   end getRequestHashMap;

   function getDownloadableItem (This : in out DownloadableInventoryItemView) return DownloadableItem_Access is
   begin
        return This.downloadableItem;
   end getDownloadableItem;

begin
   null;
   TYPE_ID := 11;

end views.admin.inventory.download.DownloadableInventoryItemView_Package;


