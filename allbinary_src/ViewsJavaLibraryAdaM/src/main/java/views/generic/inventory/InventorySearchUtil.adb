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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.InventoryData_Package; use org.allbinary.business.user.commerce.inventory.InventoryData_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketData_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;
with org.allbinary.logic.control.search.SearchParams_Package; use org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.visual.transform.StoreTransformer_Package; use org.allbinary.logic.visual.transform.StoreTransformer_Package;
with org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with views.generic_Id.inventory.InventoryColumnUtil_Package; use views.generic_Id.inventory.InventoryColumnUtil_Package;

package body views.generic_Id.inventory.InventorySearchUtil_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package InventoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.InventoryData_Package;
   package BasketData_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
   package BasicItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package SearchData_Package renames Standard.org.allbinary.logic.control.search.SearchData_Package;
   package SearchParams_Package renames Standard.org.allbinary.logic.control.search.SearchParams_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package StoreTransformer_Package renames Standard.org.allbinary.logic.visual.transform.StoreTransformer_Package;
   package TransformStoreDocumentFactory_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;
   package TransformInfoHttpSearch_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   procedure Initialize_Fields (This : in out InventorySearchUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out InventorySearchUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InventorySearchUtil_Access is
      This : constant InventorySearchUtil_Access := new InventorySearchUtil;
   begin
      InventorySearchUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InventorySearchUtil_Access is
   begin
        return InventorySearchUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getBasicItemIdColumn (This : in out InventorySearchUtil; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return BasicArrayList_Access is
      searchRequest : constant SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
      inventoryEntityInterface : InventoryEntity_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      inventorySearchUtil_Var : InventoryColumnUtil_Access;
      column : BasicArrayList_Access;
      subStoreVector : BasicArrayList_Access;
      size : Integer;
      subStore : Unbounded_String;
      substoreIdColumn : BasicArrayList_Access;
      index : Integer;
   begin
        inventoryEntityInterface := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
        storeFrontInterface := StoreFrontInterface_Access (searchRequest.getStoreFront);
        inventorySearchUtil_Var := InventoryColumnUtil_Package.getInstance;
        column := inventorySearchUtil_Var.getColumnWhereLike (inventoryEntityInterface, storeFrontInterface.getCategoryPath, This.basicItemData.ID);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Number Of Items Found: ") & Java_Image (column.size), InventorySearchUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("search"));
        end if;
        subStoreVector := storeFrontInterface.getSubStores;
        size := subStoreVector.size;
        for index in 0 .. (size) - 1 loop
            subStore := Java_Unbox (subStoreVector.get (index));
            substoreIdColumn := inventorySearchUtil_Var.getColumnWhereLike (inventoryEntityInterface, subStore, This.basicItemData.ID);
            column.addAllList (substoreIdColumn);
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Number Of Items Found Including SubStores: ") & Java_Image (column.size), InventorySearchUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("search"));
        end if;
        return column;
   end getBasicItemIdColumn;

   --  throws Exception
   function getNoResults (This : in out InventorySearchUtil; viewDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class; inventoryNode_Param : access Node_Package.Node'Class) return Unbounded_String is
      viewDocumentInterface : constant TransformDocumentInterface_Access := TransformDocumentInterface_Access (viewDocumentInterface_Param);
      inventoryNode : constant Node_Access := Node_Access (inventoryNode_Param);
      success : Unbounded_String;
   begin
        inventoryNode.appendChild (ModDomHelper_Package.createNameValueNodes (viewDocumentInterface.getDoc, SearchData_Package.TOTAL_NUMBER_PAGES, This.commonPhoneStrings.ZERO));
        inventoryNode.appendChild (ModDomHelper_Package.createNameValueNodes (viewDocumentInterface.getDoc, SearchData_Package.TOTAL_NUMBER_ITEMS, This.commonPhoneStrings.ZERO));
        success := XmlDocumentHelper_Package.toString (viewDocumentInterface.getDoc);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("No Results Xml: ") & success, InventorySearchUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("search"));
        end if;
        return success;
   end getNoResults;

   function search (This : in out InventorySearchUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class; column_Param : access BasicArrayList_Package.BasicArrayList'Class) return Unbounded_String_Array_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      searchRequest : constant SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
      column : constant BasicArrayList_Access := BasicArrayList_Access (column_Param);
      inventoryEntityInterface : InventoryEntity_Access;
      searchParams : SearchParams_Access;
      startPage : Integer;
      endPage : Integer;
      pageLength : Integer;
      savedPagesInRange : Integer;
      columnValueHashMap : HashMap_Access;
      keyword : Unbounded_String;
      stringBuffer : StringMaker_Access;
      MAXPAGES : Integer;
      productListingPages : Unbounded_String_Array_Access;
      documents : Document_Access_Array_Access;
      inventoryNodes : Node_Access_Array_Access;
      lastPage : Integer;
      numberOfResultsOnCurrentPage : Integer;
      numberOfResults : Integer;
      viewDocumentInterface : TransformDocumentInterface_Access;
      inventoryNode : Node_Access;
      currentPage : Integer;
      size : Integer;
      product : Unbounded_String;
      itemInterface : ItemInterface_Access;
      keywords : Unbounded_String;
      itemNode : Node_Access;
      index : Integer;
      tempDocument : Document_Access;
      pageIndex : Integer;
      success : Unbounded_String;
      result : Unbounded_String;
   begin
        begin
            inventoryEntityInterface := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
            searchParams := searchRequest.getParams;
            startPage := searchParams.getStartPageInt.intValue;
            endPage := searchParams.getEndPageInt.intValue;
            pageLength := searchParams.getLengthInt.intValue;
            savedPagesInRange := 0;
            columnValueHashMap := searchParams.get;
            keyword := Replace_Package.Create (To_Unbounded_String ("-"), CommonSeps_Package.getInstance.SPACE).all_Id (Java_Unbox (columnValueHashMap.get (This.basicItemData.KEYWORDS)));
            if StringValidationUtil_Package.getInstance.isEmpty (keyword) then
                return null;
            end if;
            stringBuffer := StringMaker_Package.Create;
            if (startPage) >= (0) then
                if (pageLength) = (0) then
                    pageLength := SearchData_Package.DEFAULT_PAGE_LENGTH;
                end if;
                MAXPAGES := 100;
                productListingPages := new Unbounded_String_Array'(0 .. (MAXPAGES) - 1 => Null_Unbounded_String);
                documents := new Document_Access_Array'(0 .. (MAXPAGES) - 1 => null);
                inventoryNodes := new Node_Access_Array'(0 .. (MAXPAGES) - 1 => null);
                keyword := Translate (keyword, Ada.Strings.Maps.Constants.Upper_Case_Map);
                lastPage := -(1);
                numberOfResultsOnCurrentPage := 0;
                numberOfResults := 0;
                viewDocumentInterface := TransformDocumentInterface_Access (TransformStoreDocumentFactory_Package.getInstance (searchRequest));
                inventoryNode := viewDocumentInterface.getDoc.createElement (InventoryData_Package.INVENTORY);
                viewDocumentInterface.getBaseNode.appendChild (inventoryNode);
                inventoryNode.appendChild (ModDomHelper_Package.createNameValueNodes (viewDocumentInterface.getDoc, SearchData_Package.PAGE, startPage.toString));
                if (searchRequest.getFileBaseName) /= (null) then
                    inventoryNode.appendChild (searchRequest.getFileBaseNameNode (viewDocumentInterface.getDoc));
                end if;
                currentPage := -(1);
                size := column.size;
                for index in 0 .. (size) - 1 loop
                    product := Java_New_String (Java_Unbox (column.get (index)));
                    itemInterface := ItemInterface_Access (inventoryEntityInterface.getItem (product));
                    keywords := itemInterface.getKeywords;
                    keywords := Translate (keywords, Ada.Strings.Maps.Constants.Upper_Case_Map);
                    if (Java_Index_Of (keywords, Java_Image (keyword))) /= (-(1)) then
                        if (((currentPage) + (1)) >= (startPage)) and then (((currentPage) + (1)) <= (endPage)) then
                            itemNode := BasicItemView_Package.Create (itemInterface, BasicArrayListD_Package.Create).toXmlNode (viewDocumentInterface.getDoc);
                            itemNode.appendChild (ModDomHelper_Package.createNameValueNodes (viewDocumentInterface.getDoc, BasketData_Package.ITEMTOTALINBASKET, This.commonPhoneStrings.ONE));
                            inventoryNode.appendChild (itemNode.cloneNode (True));
                        end if;
                        currentPage := (((((numberOfResults) + (1))) / (pageLength))) - (1);
                        numberOfResultsOnCurrentPage := numberOfResultsOnCurrentPage + 1;
                        if (lastPage) < (currentPage) then
                            if ((currentPage) >= (startPage)) and then ((currentPage) <= (endPage)) then
                                inventoryNode.appendChild (ModDomHelper_Package.createNameValueNodes (viewDocumentInterface.getDoc, SearchData_Package.TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, numberOfResultsOnCurrentPage.toString));
                                documents (currentPage) := viewDocumentInterface.getDoc;
                                inventoryNodes (currentPage) := inventoryNode;
                                savedPagesInRange := savedPagesInRange + 1;
                                viewDocumentInterface := TransformDocumentInterface_Access (TransformStoreDocumentFactory_Package.getInstance (searchRequest));
                                inventoryNode := viewDocumentInterface.getDoc.createElement (InventoryData_Package.INVENTORY);
                                viewDocumentInterface.getBaseNode.appendChild (inventoryNode);
                                inventoryNode.appendChild (ModDomHelper_Package.createNameValueNodes (viewDocumentInterface.getDoc, SearchData_Package.PAGE, (currentPage) + (1).toString));
                                if (searchRequest.getFileBaseName) /= (null) then
                                    inventoryNode.appendChild (searchRequest.getFileBaseNameNode (viewDocumentInterface.getDoc));
                                end if;
                            end if;
                            lastPage := currentPage;
                            numberOfResultsOnCurrentPage := 0;
                        end if;
                        numberOfResults := numberOfResults + 1;
                        if (lastPage) >= ((MAXPAGES) - (1)) then
                            exit;
                        end if;
                    end if;
                end loop;
                if ((numberOfResultsOnCurrentPage) > (0)) and then (((((currentPage) + (1)) >= (startPage)) and then (((currentPage) + (1)) <= (endPage)))) then
                    inventoryNode.appendChild (ModDomHelper_Package.createNameValueNodes (viewDocumentInterface.getDoc, SearchData_Package.TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, (numberOfResultsOnCurrentPage) - (1).toString));
                    documents ((lastPage) + (1)) := viewDocumentInterface.getDoc;
                    inventoryNodes ((lastPage) + (1)) := inventoryNode;
                    savedPagesInRange := savedPagesInRange + 1;
                end if;
                if (numberOfResultsOnCurrentPage) > (0) then
                    lastPage := lastPage + 1;
                end if;
                if (endPage) > ((MAXPAGES) - (1)) then
                    endPage := (MAXPAGES) - (1);
                end if;
                for index in startPage .. endPage loop
                    if (index) <= (lastPage) then
                        tempDocument := documents (index);
                        inventoryNodes (index).appendChild (ModDomHelper_Package.createNameValueNodes (tempDocument, SearchData_Package.TOTAL_NUMBER_PAGES, (lastPage) + (1).toString));
                        inventoryNodes (index).appendChild (ModDomHelper_Package.createNameValueNodes (tempDocument, SearchData_Package.TOTAL_NUMBER_ITEMS, numberOfResults.toString));
                        for pageIndex in 0 .. lastPage loop
                            stringBuffer.delete (0, stringBuffer.length);
                            stringBuffer.append (searchRequest.getFileBaseName);
                            if (stringBuffer.length) > (0) then
                                if (pageIndex) /= (0) then
                                    stringBuffer.append (To_Unbounded_String (Java_Image (pageIndex)));
                                end if;
                                inventoryNodes (index).appendChild (ModDomHelper_Package.createNameValueNodes (tempDocument, SearchData_Package.PAGE_INFO, To_Unbounded_String (Java_Image (pageIndex)), stringBuffer.toString));
                            else
                                inventoryNodes (index).appendChild (ModDomHelper_Package.createNameValueNodes (tempDocument, SearchData_Package.PAGE_INFO, To_Unbounded_String (Java_Image (pageIndex)), SearchData_Package.SEARCH));
                            end if;
                        end loop;
                        success := XmlDocumentHelper_Package.toString (tempDocument);
                        productListingPages (index) := StoreTransformer_Package.Create (abeClientInformation, TransformInfoInterface_Access (TransformInfoHttpSearch_Package.Create (searchRequest))).translate (success);
                    end if;
                end loop;
                if (savedPagesInRange) = (0) then
                    result := InventorySearchUtil'Class (This).getNoResults (viewDocumentInterface, inventoryNode);
                    productListingPages (0) := StoreTransformer_Package.Create (abeClientInformation, TransformInfoHttpSearch_Package.Create (searchRequest)).translate (result);
                end if;
                return productListingPages;
            else
                return null;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, InventorySearchUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("search"), e);
            end if;
            return null;
                end;
        end;
   end search;

   procedure getBasicItemIdColumn (This : in out InventorySearchUtil; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) is
      Java_Result : constant BasicArrayList_Access := InventorySearchUtil'Class (This).getBasicItemIdColumn (searchRequest_Param => searchRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicItemIdColumn;

   procedure getNoResults (This : in out InventorySearchUtil; viewDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class; inventoryNode_Param : access Node_Package.Node'Class) is
      Java_Result : constant Unbounded_String := InventorySearchUtil'Class (This).getNoResults (viewDocumentInterface_Param => viewDocumentInterface_Param, inventoryNode_Param => inventoryNode_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNoResults;

   procedure search (This : in out InventorySearchUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class; column_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Unbounded_String_Array_Access := InventorySearchUtil'Class (This).search (abeClientInformation_Param => abeClientInformation_Param, searchRequest_Param => searchRequest_Param, column_Param => column_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

begin
   null;
   instance := InventorySearchUtil_Package.Create;

end views.generic_Id.inventory.InventorySearchUtil_Package;


