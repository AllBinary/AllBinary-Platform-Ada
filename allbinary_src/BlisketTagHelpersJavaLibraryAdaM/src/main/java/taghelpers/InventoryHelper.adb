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


with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package; use org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;
with org.allbinary.logic.control.search.SearchParams_Package; use org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with views.admin.inventory.listings.InventoryViewFactory_Package; use views.admin.inventory.listings.InventoryViewFactory_Package;
with views.admin.inventory.listings.InventoryViewSearchInterface_Package; use views.admin.inventory.listings.InventoryViewSearchInterface_Package;

package body taghelpers.InventoryHelper_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package AcceptableResponseGenerator_Package renames Standard.org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;
   package SearchParams_Package renames Standard.org.allbinary.logic.control.search.SearchParams_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package InventoryViewFactory_Package renames Standard.views.admin.inventory.listings.InventoryViewFactory_Package;
   package InventoryViewSearchInterface_Package renames Standard.views.admin.inventory.listings.InventoryViewSearchInterface_Package;
   procedure Initialize_Fields (This : in out InventoryHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      This.weblisketSession := null;
      
      
      This.streetAddress := null;
      This.id := Null_Unbounded_String;
      This.searchRequest := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      storeName : Unbounded_String;
      xslFile : Unbounded_String;
      storeFrontInterface : StoreFrontInterface_Access;
      contentType : Unbounded_String;
      searchParams : SearchParams_Access;
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.response := HttpServletResponse_Access (pageContext.getResponse);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        storeName := Java_Unbox (propertiesHashMap.get (StoreFrontData_Package.getInstance.NAME));
        xslFile := Java_Unbox (propertiesHashMap.get (TransformInfoData_Package.getInstance.TEMPLATEFILENAME));
        if (storeName) /= (Null_Unbounded_String) then
            storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
            contentType := AcceptableResponseGenerator_Package.getInstance.get (This.request);
            searchParams := SearchParams_Package.Create (This.request);
            This.searchRequest := SearchRequest_Package.Create (storeFrontInterface, searchParams, xslFile, contentType, propertiesHashMap, pageContext);
        end if;
        InventoryHelper'Class (This).getFormData;
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return InventoryHelper_Access is
      This : constant InventoryHelper_Access := new InventoryHelper;
   begin
      InventoryHelper_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure getFormData (This : in out InventoryHelper) is
   begin
        This.id := This.request.getParameter (This.basicItemData.ID);
   end getFormData;

   function viewSummary (This : in out InventoryHelper) return Unbounded_String is
      inventoryViewSearchInterface : InventoryViewSearchInterface_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            inventoryViewSearchInterface := InventoryViewFactory_Package.getInstance (This.searchRequest);
            result := inventoryViewSearchInterface.getProduct (This.id);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Successfull Inventory View Summary"), InventoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("viewSummary()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to View Summary");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, InventoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("viewSummary()"), e);
            end if;
            return error & To_Unbounded_String ("<br>") & To_Unbounded_String ("Exception: ") & Java_Image (e) & To_Unbounded_String ("<br>");
                end;
        end;
   end viewSummary;

   function search (This : in out InventoryHelper) return Unbounded_String is
      stringUtil : StringUtil_Access;
      keywords : Unbounded_String;
      inventoryViewSearchInterface : InventoryViewSearchInterface_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            stringUtil := StringUtil_Package.getInstance;
            keywords := Java_Unbox (This.searchRequest.getParams.get.get (This.basicItemData.KEYWORDS));
            if ((keywords) = (Null_Unbounded_String)) or else ((Java_Compare_To (keywords, stringUtil.EMPTY_STRING)) = (0)) then
                return To_Unbounded_String ("Please enter a keyword in the search field above the Search button.");
            end if;
            inventoryViewSearchInterface := InventoryViewFactory_Package.getInstance (This.searchRequest);
            result := inventoryViewSearchInterface.searchSingleDynamicPage;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Successful Inventory Dynamic Search"), InventoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("searchSingleDynamicPage()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to search Inventory by keyword");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, InventoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("searchSingleDynamicPage()"), e);
            end if;
            return error & To_Unbounded_String ("<br>") & To_Unbounded_String ("Exception: ") & Java_Image (e) & To_Unbounded_String ("<br>");
                end;
        end;
   end search;

end taghelpers.InventoryHelper_Package;


