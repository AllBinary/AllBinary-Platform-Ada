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


package body views.admin.inventory.InventoryItemView_Package is

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


   procedure Initialize (This : in out InventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (This.getPageContext.getRequest);
        This.getFormData;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return InventoryItemView_Access is
      This : constant InventoryItemView_Access := new InventoryItemView;
   begin
      InventoryItemView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InventoryItemView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; empty : Unbounded_String) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (This.getPageContext.getRequest);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class; empty : Unbounded_String) return InventoryItemView_Access is
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
        This.setRequestHashMap (MultipartRequestParams_Package.Create (This.request).toHashMap);
        imageFileItemObject := This.getRequestHashMap.get (This.basicItemData.IMAGE);
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
        This.itemInterface := ItemInterface_Access (BasicItem_Package.Create (This.getRequestHashMap));
   end getFormData;

   procedure addDomNodeInterfaces (This : in out InventoryItemView) is
      vector : BasicArrayList_Access;
      downloadableItem : DownloadableItem_Access;
      size : Integer;
      index : Integer;
   begin
        vector := BasicArrayListD_Package.Create;
        downloadableItem := null;
        size := This.downloadableItemVector.size;
        for index in 0 .. (size) - 1 loop
            downloadableItem := DownloadableItem_Access (This.downloadableItemVector.get (index));
            vector.add (DownloadableItemView_Package.Create (downloadableItem));
        end loop;
        This.addDomNodeInterface (BasicItemView_Package.Create (This.itemInterface, vector));
   end addDomNodeInterfaces;

   function getItemInterface (This : in out InventoryItemView) return ItemInterface_Access is
   begin
        return This.itemInterface;
   end getItemInterface;

   --  throws Exception
   function view (This : in out InventoryItemView) return Unbounded_String is
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
        set := This.getRequestHashMap.keySet;
        fieldNameArray := set.toArray;
        size := fieldNameArray'Length;
        for index in 0 .. (size) - 1 loop
            fieldName := Unbounded_String (fieldNameArray (index));
            if (fieldName.compareTo (This.basicItemData.IMAGE)) = (0) then
                storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getWeblisketSession.getStoreName);
                inventoryUploadMediaUtil := InventoryUploadMediaUtil_Package.Create (storeFrontInterface, This.itemInterface);
                fileItem := FileItem_Access (This.getRequestHashMap.get (This.basicItemData.IMAGE));
                This.itemInterface := inventoryUploadMediaUtil.saveFiles (fileItem.get, This.imageFileName, This.mediaData);
            end if;
        end loop;
   end processImageFiles;

   procedure setRequestHashMap (This : in out InventoryItemView; requestHashMap_Param : access HashMap'Class) is
      requestHashMap : HashMap_Access := HashMap_Access (requestHashMap_Param);
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


