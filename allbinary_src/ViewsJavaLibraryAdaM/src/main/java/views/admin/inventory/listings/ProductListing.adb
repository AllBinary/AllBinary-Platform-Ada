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


package body views.admin.inventory_Case.listings.ProductListing_Package is

   procedure Initialize_Fields (This : in out ProductListing'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.directory := Directory_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
      
      
      
      This.INVENTORY := To_Unbounded_String (".InventoryView");
   end Initialize_Fields;


   procedure Initialize (This : in out ProductListing'Class; searchRequest : SearchRequest_Access) is
   begin
      Initialize_Fields (This);
        This.searchRequest := searchRequest;
        This.storeFronts := StoreFrontsEntity_Package.Create;
        This.staticPages := StaticPagesEntity_Package.Create;
        This.inventory_Case := InventoryEntity_Package.Create;
   end Initialize;

   function Create (searchRequest : SearchRequest_Access) return ProductListing_Access is
      This : constant ProductListing_Access := new ProductListing;
   begin
      Initialize (This.all, searchRequest);
      return This;
   end Create;

   --  throws Exception
   function getHashSet (This : in out ProductListing; storeFront : StoreFrontInterface_Access) return HashSet_Access is
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
            subStore := Unbounded_String (subStoreVector.get (index));
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
            This.logUtil.putF (To_Unbounded_String ("Creating File: ") & file, This'Unchecked_Access, To_Unbounded_String ("generateAll()"));
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
                This.logUtil.putF (To_Unbounded_String ("Wrote Total Bytes: ") & Java_Image (newFile.length), This'Unchecked_Access, To_Unbounded_String ("generateAll()"));
            end if;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Could Not Create: ") & file));
        end if;
   end savePage;

   --  throws Exception
   procedure create (This : in out ProductListing; keywordData : Unbounded_String; keywordFilenameHashMap : HashMap_Access; vector : BasicArrayList_Access; staticPath : AbPath_Access) is
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
                This.logUtil.putF (To_Unbounded_String ("Saving Listing: ") & Java_Image (index), This'Unchecked_Access, To_Unbounded_String ("generateAll()"));
            end if;
            indexStr := StringUtil_Package.getInstance.EMPTY_STRING;
            if (index) > (0) then
                indexStr := index.toString;
            end if;
            keywordFilenameHashMap.put (keywordData, pageName & indexStr);
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
            This.savePage (file, productListingPages (index));
        end loop;
   end create;

   procedure addStaticPageInfoToDatabase (This : in out ProductListing; storeFront : StoreFrontInterface_Access; keywordFilenameHashMap : HashMap_Access) is
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
            insertVector := BasicArrayListD_Package.Create;
            keywordData := Unbounded_String (keywordArray (index));
            fileName := Unbounded_String (keywordFilenameHashMap.get (keywordData));
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
            stringBuffer.append (URLGLOBALS.getWebappPath);
            stringBuffer.append (storeFront.getName);
            stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
            stringBuffer.append (storeFront.getStaticPath);
            staticPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.STATICPAGEGENERATIONLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Store Static Pages Path: ") & Java_Image (staticPath), This'Unchecked_Access, To_Unbounded_String ("generateAll()"));
            end if;
            keywordHashSet := This.getHashSet (storeFront);
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
                keywordData := Unbounded_String (keywordArray (index));
                if (Length (keywordData)) > (1) then
                    This.create (keywordData, keywordFilenameHashMap, vector, staticPath);
                end if;
            end loop;
            This.addStaticPageInfoToDatabase (storeFront, keywordFilenameHashMap);
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("Static Files Generated Successfully For "));
            stringBuffer.append (storeFront.getName);
            stringBuffer.append (To_Unbounded_String (" it used packages "));
            stringBuffer.append (storeFront.getPackageLocation);
            stringBuffer.append (This.INVENTORY);
            return stringBuffer.toString;
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end generateAll;

   --  throws Exception
   function generateAll (This : in out ProductListing; storeName : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      storeFrontVector : BasicArrayList_Access;
      size : Integer;
      index : Integer;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (storeName) /= (Null_Unbounded_String) then
                if (storeName.compareTo (GLOBALS2.GENERATEALLSTORES)) /= (0) then
                    This.searchRequest.setStoreFront (This.storeFronts.getStoreFrontInterface (storeName));
                    stringBuffer.append (This.generateAll);
                    stringBuffer.append (To_Unbounded_String ("<br />"));
                else
                    storeFrontVector := This.storeFronts.getStoreFrontNames;
                    size := storeFrontVector.size;
                    for index in 0 .. (size) - 1 loop
                        storeName := Unbounded_String (storeFrontVector.get (index));
                        This.searchRequest.setStoreFront (This.storeFronts.getStoreFrontInterface (storeName));
                        stringBuffer.append (This.generateAll);
                        stringBuffer.append (To_Unbounded_String ("<br />"));
                    end loop;
                end if;
            else
                return To_Unbounded_String ("Generation Failed No Store Specified<br/>");
            end if;
            stringBuffer.append (To_Unbounded_String ("All Static Pages Generated<br/>"));
            return stringBuffer.toString;
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end generateAll;

   procedure getHashSet (This : in out ProductListing; storeFront : StoreFrontInterface_Access) is
      Java_Result : constant HashSet_Access := ProductListing'Class (This).getHashSet (storeFront);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashSet;

   procedure generateAll (This : in out ProductListing) is
      Java_Result : constant Unbounded_String := ProductListing'Class (This).generateAll;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generateAll;

   procedure generateAll (This : in out ProductListing; storeName : Unbounded_String) is
      Java_Result : constant Unbounded_String := ProductListing'Class (This).generateAll (storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generateAll;

end views.admin.inventory_Case.listings.ProductListing_Package;


