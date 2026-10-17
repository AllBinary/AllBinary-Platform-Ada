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


package body taghelpers.InventoryHelper_Package is

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


   procedure Initialize (This : in out InventoryHelper'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
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
        storeName := Unbounded_String (propertiesHashMap.get (StoreFrontData_Package.getInstance.NAME));
        xslFile := Unbounded_String (propertiesHashMap.get (TransformInfoData_Package.getInstance.TEMPLATEFILENAME));
        if (storeName) /= (Null_Unbounded_String) then
            storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
            contentType := AcceptableResponseGenerator_Package.getInstance.get (This.request);
            searchParams := SearchParams_Package.Create (This.request);
            This.searchRequest := SearchRequest_Package.Create (storeFrontInterface, searchParams, xslFile, contentType, propertiesHashMap, pageContext);
        end if;
        This.getFormData;
   end Initialize;

   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return InventoryHelper_Access is
      This : constant InventoryHelper_Access := new InventoryHelper;
   begin
      InventoryHelper_Package.Initialize (This.all, propertiesHashMap, pageContext);
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
                This.logUtil.putF (To_Unbounded_String ("Successfull Inventory View Summary"), This'Unchecked_Access, To_Unbounded_String ("viewSummary()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to View Summary");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("viewSummary()"), e);
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
            keywords := Unbounded_String (This.searchRequest.getParams.get.get (This.basicItemData.KEYWORDS));
            if ((keywords) = (Null_Unbounded_String)) or else ((keywords.compareTo (stringUtil.EMPTY_STRING)) = (0)) then
                return To_Unbounded_String ("Please enter a keyword in the search field above the Search button.");
            end if;
            inventoryViewSearchInterface := InventoryViewFactory_Package.getInstance (This.searchRequest);
            result := inventoryViewSearchInterface.searchSingleDynamicPage;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Successful Inventory Dynamic Search"), This'Unchecked_Access, To_Unbounded_String ("searchSingleDynamicPage()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to search Inventory by keyword");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("searchSingleDynamicPage()"), e);
            end if;
            return error & To_Unbounded_String ("<br>") & To_Unbounded_String ("Exception: ") & Java_Image (e) & To_Unbounded_String ("<br>");
                end;
        end;
   end search;

end taghelpers.InventoryHelper_Package;


