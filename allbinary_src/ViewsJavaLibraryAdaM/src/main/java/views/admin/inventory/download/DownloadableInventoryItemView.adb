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


package body views.admin.inventory.download.DownloadableInventoryItemView_Package is

   procedure Initialize_Fields (This : in out DownloadableInventoryItemView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      This.id := Null_Unbounded_String;
      This.itemInterface := null;
      This.downloadableItem := null;
      This.requestHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadableInventoryItemView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (This.getPageContext.getRequest);
        This.getFormData;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return DownloadableInventoryItemView_Access is
      This : constant DownloadableInventoryItemView_Access := new DownloadableInventoryItemView;
   begin
      DownloadableInventoryItemView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out DownloadableInventoryItemView'Class; transformInfoInterface : TransformInfoInterface_Access; empty : Unbounded_String) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (This.getPageContext.getRequest);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; empty : Unbounded_String) return DownloadableInventoryItemView_Access is
      This : constant DownloadableInventoryItemView_Access := new DownloadableInventoryItemView;
   begin
      DownloadableInventoryItemView_Package.Initialize (This.all, transformInfoInterface, empty);
      return This;
   end Create;

   function getTypeId (This : in out DownloadableInventoryItemView) return Integer is
   begin
        return DownloadableInventoryItemView_Package.TYPE_ID;
   end getTypeId;

   --  throws Exception
   procedure getFormData (This : in out DownloadableInventoryItemView) is
   begin
        This.setRequestHashMap (MultipartRequestParams_Package.Create (This.request).toHashMap);
        This.id := Unbounded_String (This.getRequestHashMap.get (This.basicItemData.ID));
   end getFormData;

   procedure addDomNodeInterfaces (This : in out DownloadableInventoryItemView) is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayListD_Package.Create;
        if (This.downloadableItem) /= (null) then
            vector.add (DownloadableItemView_Package.Create (This.downloadableItem));
        end if;
        This.addDomNodeInterface (BasicItemView_Package.Create (This.itemInterface, vector));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out DownloadableInventoryItemView) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   --  throws Exception
   procedure processFile (This : in out DownloadableInventoryItemView; fileItem : FileItem_Access) is
      fileName : Unbounded_String;
      fullPath : Unbounded_String;
      itemResourceFile : AbFile_Access;
      stringBuffer : StringMaker_Access;
      file : AbFile_Access;
      byteArray : Short_Short_Integer_Array_Access;
   begin
        fileName := fileItem.getName;
        fullPath := This.getItemFilePath;
        itemResourceFile := AbFile_Package.createAbFile (fullPath);
        itemResourceFile.mkdir;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (fullPath);
        stringBuffer.append (fileName);
        This.logUtil.putF (To_Unbounded_String ("FileName: ") & fileName, This'Unchecked_Access, To_Unbounded_String ("processFile()"));
        file := AbFile_Package.createAbFile (stringBuffer.toString);
        This.logUtil.putF (file.getPath, This'Unchecked_Access, To_Unbounded_String ("processFiles()"));
        file.createNewFile;
        byteArray := fileItem.get;
        FileUtil_Package.getInstance.write (ByteArrayInputStream_Package.Create (byteArray), file);
   end processFile;

   --  throws Exception
   procedure unzip (This : in out DownloadableInventoryItemView; fileItem : FileItem_Access) is
      fileName : Unbounded_String;
      fullPath : Unbounded_String;
      stringBuffer : StringMaker_Access;
      file : AbFile_Access;
   begin
        fileName := fileItem.getName;
        fullPath := This.getItemFilePath;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (fullPath);
        stringBuffer.append (fileName);
        This.logUtil.putF (To_Unbounded_String ("FileName: ") & fileName, This'Unchecked_Access, To_Unbounded_String ("unzip()"));
        file := AbFile_Package.createAbFile (stringBuffer.toString);
        This.logUtil.putF (file.getPath, This'Unchecked_Access, To_Unbounded_String ("unzip()"));
        ZipFileUtil_Package.getInstance.unzip (fullPath, file, fileName);
   end unzip;

   function getItemFilePath (This : in out DownloadableInventoryItemView) return Unbounded_String is
      storeFrontInterface : StoreFrontInterface_Access;
      filePathData : FilePathData_Access;
      stringBuffer : StringMaker_Access;
   begin
        storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getWeblisketSession.getStoreName);
        filePathData := FilePathData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS.getWebappPath);
        stringBuffer.append (storeFrontInterface.getCurrentHostNamePath);
        stringBuffer.append (This.itemInterface.getCategory);
        stringBuffer.appendchar (filePathData.SEPARATORCHAR);
        stringBuffer.append (This.itemInterface.getId);
        stringBuffer.appendchar (filePathData.SEPARATORCHAR);
        stringBuffer.append (This.downloadableItem.getId);
        stringBuffer.appendchar (filePathData.SEPARATORCHAR);
        return stringBuffer.toString;
   end getItemFilePath;

   procedure setRequestHashMap (This : in out DownloadableInventoryItemView; requestHashMap : HashMap_Access) is
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


