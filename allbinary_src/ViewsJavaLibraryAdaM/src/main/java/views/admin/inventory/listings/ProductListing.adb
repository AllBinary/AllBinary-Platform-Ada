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
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.search.SearchParams_Package; use org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.InputOutputTypeData_Package; use org.allbinary.logic.io.InputOutputTypeData_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.SpecialCharacterUtil_Package; use org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.string_Id.tokens.UniqueTokens_Package; use org.allbinary.logic.string_Id.tokens.UniqueTokens_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with views.generic_Id.inventory.InventoryColumnUtil_Package; use views.generic_Id.inventory.InventoryColumnUtil_Package;
with views.generic_Id.inventory.InventorySearchUtil_Package; use views.generic_Id.inventory.InventorySearchUtil_Package;

package body views.admin.inventory.listings.ProductListing_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SearchParams_Package renames Standard.org.allbinary.logic.control.search.SearchParams_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package InputOutputTypeData_Package renames Standard.org.allbinary.logic.io.InputOutputTypeData_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package SpecialCharacterUtil_Package renames Standard.org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package UniqueTokens_Package renames Standard.org.allbinary.logic.string_Id.tokens.UniqueTokens_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package InventoryColumnUtil_Package renames Standard.views.generic_Id.inventory.InventoryColumnUtil_Package;
   package InventorySearchUtil_Package renames Standard.views.generic_Id.inventory.InventorySearchUtil_Package;
   procedure Initialize_Fields (This : in out ProductListing'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.directory := Directory_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      
      
      
      This.INVENTORY := To_Unbounded_String (".InventoryView");
   end Initialize_Fields;


   procedure Initialize (This : in out ProductListing'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) is
      searchRequest : constant SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
   begin
      Initialize_Fields (This);
        This.searchRequest := searchRequest;
        This.storeFronts := StoreFrontsEntity_Package.Create;
        This.staticPages := StaticPagesEntity_Package.Create;
        This.inventory_Case := InventoryEntity_Package.Create;
   end Initialize;

   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return ProductListing_Access is
      This : constant ProductListing_Access := new ProductListing;
   begin
      ProductListing_Package.Initialize (This.all, searchRequest_Param);
      return This;
   end Create;

   --  throws Exception
   function getHashSet (This : in out ProductListing; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return HashSet_Access is
      storeFront : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFront_Param);
      inventoryColumnUtil : InventoryColumnUtil_Access;
      keywords : BasicArrayList_Access;
      subStoreVector : BasicArrayList_Access;
      size : Integer;
      subStore : Unbounded_String;
      substoreKeywords : BasicArrayList_Access;
      index : Integer;
      uniqueTokens : UniqueTokens_Access;
      keywordHashSet : HashSet_Access;
   begin
        inventoryColumnUtil := InventoryColumnUtil_Package.getInstance;
        keywords := inventoryColumnUtil.getColumnWhereLike (This.inventory_Case, storeFront.getCategoryPath, This.basicItemData.KEYWORDS);
        subStoreVector := storeFront.getSubStores;
        size := subStoreVector.size;
        for index in 0 .. (size) - 1 loop
            subStore := Java_Unbox (subStoreVector.get (index));
            substoreKeywords := inventoryColumnUtil.getColumnWhereLike (This.inventory_Case, Java_Image (AbPathData_Package.getInstance.SEPARATOR) & subStore, This.basicItemData.CATEGORY);
            keywords.addAllList (substoreKeywords);
        end loop;
        uniqueTokens := UniqueTokens_Package.Create;
        keywordHashSet := uniqueTokens.getWhithoutDashesAndSkipNumberOnlyTokens (keywords);
        return keywordHashSet;
   end getHashSet;

   --  throws Exception
   procedure savePage (This : in out ProductListing; file : Unbounded_String; data : Unbounded_String) is
      newFile : AbFile_Access;
      idOutData : AbDataOutputStream_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.STATICPAGEGENERATIONLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Creating File: ") & file, ProductListing_Access'(This'Unchecked_Access), To_Unbounded_String ("generateAll()"));
        end if;
        newFile := AbFile_Package.createAbFile (file);
        if newFile.exists then
            newFile.delete;
        end if;
        newFile.createNewFile;
        if newFile.exists then
            idOutData := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (newFile);
            idOutData.writeBytes (data);
            idOutData.flush;
            StreamUtil_Package.getInstance.close (idOutData);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.STATICPAGEGENERATIONLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Wrote Total Bytes: ") & Java_Image (newFile.length), ProductListing_Access'(This'Unchecked_Access), To_Unbounded_String ("generateAll()"));
            end if;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Could Not Create: ") & file));
        end if;
   end savePage;

   --  throws Exception
   procedure create (This : in out ProductListing; keywordData : Unbounded_String; keywordFilenameHashMap_Param : access HashMap_Package.HashMap'Class; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; staticPath_Param : access AbPath_Package.AbPath'Class) is
      keywordFilenameHashMap : constant HashMap_Access := HashMap_Access (keywordFilenameHashMap_Param);
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      staticPath : constant AbPath_Access := AbPath_Access (staticPath_Param);
      stringBuffer : StringMaker_Access;
      hashMap : HashMap_Access;
      pageName : Unbounded_String;
      searchParams : SearchParams_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      inventorySearchUtil : InventorySearchUtil_Access;
      productListingPages : Unbounded_String_Array_Access;
      indexStr : Unbounded_String;
      file : Unbounded_String;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        hashMap := SpecialCharacterUtil_Package.getHashMap;
        hashMap.put (CommonSeps_Package.getInstance.SPACE, StringUtil_Package.getInstance.EMPTY_STRING);
        pageName := Replace_Package.Create (hashMap).all_Id (keywordData);
        searchParams := This.searchRequest.getParams;
        searchParams.add (This.basicItemData.KEYWORDS, keywordData);
        searchParams.setStartPage (CommonPhoneStrings_Package.getInstance.ZERO);
        This.searchRequest.setParams (searchParams);
        This.searchRequest.setFileBaseName (pageName);
        abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
        inventorySearchUtil := InventorySearchUtil_Package.getInstance;
        productListingPages := inventorySearchUtil.search (abeClientInformation, This.searchRequest, vector);
        for index in 0 .. (productListingPages'Length) - 1 loop
            if (productListingPages (index)) = (null) then
                exit;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.STATICPAGEGENERATIONLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Saving Listing: ") & Java_Image (index), ProductListing_Access'(This'Unchecked_Access), To_Unbounded_String ("generateAll()"));
            end if;
            indexStr := StringUtil_Package.getInstance.EMPTY_STRING;
            if (index) > (0) then
                indexStr := index.toString;
            end if;
            keywordFilenameHashMap.put (Java_Box (keywordData), Java_Box (pageName & indexStr));
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (staticPath.toString);
            stringBuffer.append (pageName);
            stringBuffer.append (indexStr);
            stringBuffer.append (AbPathData_Package.getInstance.EXTENSION_SEP);
            stringBuffer.append (InputOutputTypeData_Package.getInstance.DEFAULT);
            file := stringBuffer.toString;
            if not (This.directory.create (staticPath)) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Could Not Create Directory: ") & Java_Image (staticPath)));
            end if;
            ProductListing'Class (This).savePage (file, productListingPages (index));
        end loop;
   end create;

   procedure addStaticPageInfoToDatabase (This : in out ProductListing; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; keywordFilenameHashMap_Param : access HashMap_Package.HashMap'Class) is
      storeFront : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFront_Param);
      keywordFilenameHashMap : constant HashMap_Access := HashMap_Access (keywordFilenameHashMap_Param);
      keywordHashSet : Set_Access;
      keywordArray : Java_Object_Access_Array_Access;
      size : Integer;
      insertVector : BasicArrayList_Access;
      keywordData : Unbounded_String;
      fileName : Unbounded_String;
      index : Integer;
   begin
        keywordHashSet := keywordFilenameHashMap.keySet;
        keywordArray := keywordHashSet.toArray;
        size := keywordArray'Length;
        for index in 0 .. (size) - 1 loop
            insertVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            keywordData := Java_Unbox (keywordArray (index));
            fileName := Java_Unbox (keywordFilenameHashMap.get (Java_Box (keywordData)));
            insertVector.add (storeFront.getName);
            insertVector.add (keywordData);
            insertVector.add (fileName);
            This.staticPages.insert (insertVector);
        end loop;
   end addStaticPageInfoToDatabase;

   --  throws Exception
   function generateAll (This : in out ProductListing) return Unbounded_String is
      storeFront : StoreFrontInterface_Access;
      stringBuffer : StringMaker_Access;
      staticPath : AbPath_Access;
      keywordHashSet : HashSet_Access;
      keywordArray : Java_Object_Access_Array_Access;
      size : Integer;
      keywordFilenameHashMap : HashMap_Access;
      inventorySearchUtil : InventorySearchUtil_Access;
      vector : BasicArrayList_Access;
      keywordData : Unbounded_String;
      index : Integer;
   begin
        begin
            storeFront := This.searchRequest.getStoreFront;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (URLGLOBALS_Package.getWebappPath);
            stringBuffer.append (storeFront.getName);
            stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
            stringBuffer.append (storeFront.getStaticPath);
            staticPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.STATICPAGEGENERATIONLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Store Static Pages Path: ") & Java_Image (staticPath), ProductListing_Access'(This'Unchecked_Access), To_Unbounded_String ("generateAll()"));
            end if;
            keywordHashSet := ProductListing'Class (This).getHashSet (storeFront);
            keywordArray := keywordHashSet.toArray;
            size := keywordArray'Length;
            keywordFilenameHashMap := StdUtil_Package.getInstance.createHashMap;
            if (size) = (0) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (To_Unbounded_String ("Products For "));
                stringBuffer.append (storeFront.getName);
                stringBuffer.append (To_Unbounded_String (" Store Not Found"));
                return stringBuffer.toString;
            end if;
            inventorySearchUtil := InventorySearchUtil_Package.getInstance;
            vector := inventorySearchUtil.getBasicItemIdColumn (This.searchRequest);
            for index in 0 .. (size) - 1 loop
                keywordData := Java_Unbox (keywordArray (index));
                if (Length (keywordData)) > (1) then
                    ProductListing'Class (This).create (keywordData, keywordFilenameHashMap, vector, staticPath);
                end if;
            end loop;
            ProductListing'Class (This).addStaticPageInfoToDatabase (storeFront, keywordFilenameHashMap);
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("Static Files Generated Successfully For "));
            stringBuffer.append (storeFront.getName);
            stringBuffer.append (To_Unbounded_String (" it used packages "));
            stringBuffer.append (storeFront.getPackageLocation);
            stringBuffer.append (This.INVENTORY);
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end generateAll;

   --  throws Exception
   function generateAll (This : in out ProductListing; storeName_Param : Unbounded_String) return Unbounded_String is
      storeName : Unbounded_String := storeName_Param;
      stringBuffer : StringMaker_Access;
      storeFrontVector : BasicArrayList_Access;
      size : Integer;
      index : Integer;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (storeName) /= (Null_Unbounded_String) then
                if (Java_Compare_To (storeName, GLOBALS2_Package.GENERATEALLSTORES)) /= (0) then
                    This.searchRequest.setStoreFront (This.storeFronts.getStoreFrontInterface (storeName));
                    stringBuffer.append (ProductListing'Class (This).generateAll);
                    stringBuffer.append (To_Unbounded_String ("<br />"));
                else
                    storeFrontVector := This.storeFronts.getStoreFrontNames;
                    size := storeFrontVector.size;
                    for index in 0 .. (size) - 1 loop
                        storeName := Java_Unbox (storeFrontVector.get (index));
                        This.searchRequest.setStoreFront (This.storeFronts.getStoreFrontInterface (storeName));
                        stringBuffer.append (ProductListing'Class (This).generateAll);
                        stringBuffer.append (To_Unbounded_String ("<br />"));
                    end loop;
                end if;
            else
                return To_Unbounded_String ("Generation Failed No Store Specified<br/>");
            end if;
            stringBuffer.append (To_Unbounded_String ("All Static Pages Generated<br/>"));
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end generateAll;

   procedure getHashSet (This : in out ProductListing; storeFront_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      Java_Result : constant HashSet_Access := ProductListing'Class (This).getHashSet (storeFront_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashSet;

   procedure generateAll (This : in out ProductListing; storeName_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := ProductListing'Class (This).generateAll (storeName_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generateAll;

end views.admin.inventory.listings.ProductListing_Package;


