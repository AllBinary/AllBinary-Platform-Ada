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


package body views.generic_Id.inventory.InventorySearch_Package is

   procedure Initialize_Fields (This : in out InventorySearch'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out InventorySearch'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) is
      searchRequest : constant SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
   begin
        null;
        Initialize_Fields (This);
        This.searchRequest := searchRequest;
   end Initialize;

   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return InventorySearch_Access is
      This : constant InventorySearch_Access := new InventorySearch;
   begin
      InventorySearch_Package.Initialize (This.all, searchRequest_Param);
      return This;
   end Create;

   --  throws Exception
   function searchSingleStaticPage (This : in out InventorySearch) return Unbounded_String is
      storeFront : StoreFrontInterface_Access;
      searchParams : SearchParams_Access;
      columnValueHashMap : HashMap_Access;
      file : Unbounded_String;
      stringBuffer : StringMaker_Access;
      filePath : Unbounded_String;
   begin
        begin
            storeFront := This.searchRequest.getStoreFront;
            searchParams := This.searchRequest.getParams;
            columnValueHashMap := searchParams.get;
            file := StaticPagesEntity_Package.Create.getFile (storeFront.getName, Replace_Package.Create (To_Unbounded_String ("-"), CommonSeps_Package.getInstance.SPACE).all_Id (Java_Unbox (columnValueHashMap.get (This.basicItemData.KEYWORDS))));
            if StringValidationUtil_Package.getInstance.isEmpty (file) then
                return Null_Unbounded_String;
            else
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (storeFront.getCurrentHostName);
                stringBuffer.append (storeFront.getCurrentHostNamePath);
                stringBuffer.append (storeFront.getStaticPath);
                stringBuffer.append (file);
                stringBuffer.append (This.searchRequest.getParams.getEndPage);
                stringBuffer.append (AbPathData_Package.getInstance.EXTENSION_SEP);
                stringBuffer.append (InputOutputTypeData_Package.getInstance.DEFAULT);
                filePath := Replace_Package.Create (CommonSeps_Package.getInstance.SPACE, To_Unbounded_String ("%20")).all_Id (stringBuffer.toString);
                return filePath;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, InventorySearch_Access'(This'Unchecked_Access), To_Unbounded_String ("searchSingleStaticPage"), e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Failed retrieve Single Product Page Static")));
                end;
        end;
   end searchSingleStaticPage;

   --  throws Exception
   function searchSingleDynamicPage (This : in out InventorySearch) return Unbounded_String is
      str : Unbounded_String_Array_Access;
   begin
        begin
            str := InventorySearch'Class (This).search;
            return str (This.searchRequest.getParams.getStartPageInt.intValue);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, InventorySearch_Access'(This'Unchecked_Access), To_Unbounded_String ("searchSingleDynamicPage"), e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Failed retrieve Single Product Page Dynamically")));
                end;
        end;
   end searchSingleDynamicPage;

   --  throws Exception
   function search (This : in out InventorySearch) return Unbounded_String_Array_Access is
      abeClientInformation : AbeClientInformationInterface_Access;
      inventorySearchUtil : InventorySearchUtil_Access;
      vector : BasicArrayList_Access;
   begin
        abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
        inventorySearchUtil := InventorySearchUtil_Package.getInstance;
        vector := inventorySearchUtil.getBasicItemIdColumn (This.searchRequest);
        return inventorySearchUtil.search (abeClientInformation, This.searchRequest, vector);
   end search;

   --  throws Exception
   function getProduct (This : in out InventorySearch; product : Unbounded_String) return Unbounded_String is
      abeClientInformation : AbeClientInformationInterface_Access;
   begin
        abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
        return InventorySearchProductUtil_Package.getInstance.getProduct (abeClientInformation, This.searchRequest, product);
   end getProduct;

   procedure getProduct (This : in out InventorySearch; product : Unbounded_String) is
      Java_Result : constant Unbounded_String := InventorySearch'Class (This).getProduct (product);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProduct;

end views.generic_Id.inventory.InventorySearch_Package;


