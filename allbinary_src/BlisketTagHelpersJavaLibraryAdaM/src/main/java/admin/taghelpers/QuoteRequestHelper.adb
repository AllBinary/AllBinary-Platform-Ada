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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package; use org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;

package body admin.taghelpers.QuoteRequestHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package QuoteRequestEntityFactory_Package renames Standard.org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;
   procedure Initialize_Fields (This : in out QuoteRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.storeFrontInterface := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out QuoteRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      request : HttpServletRequest_Access;
      storeName : Unbounded_String;
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        request := HttpServletRequest_Access (pageContext.getRequest);
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        This.quoteRequest := QuoteRequest_Package.Create (This.weblisketSession.getUserName, request);
        storeName := Java_Unbox (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        if (storeName) /= (Null_Unbounded_String) then
            This.storeFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (storeName));
        end if;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return QuoteRequestHelper_Access is
      This : constant QuoteRequestHelper_Access := new QuoteRequestHelper;
   begin
      QuoteRequestHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   function isValid (This : in out QuoteRequestHelper) return Boolean is
   begin
        return This.quoteRequest.isValid;
   end isValid;

   function validationInfo (This : in out QuoteRequestHelper) return Unbounded_String is
   begin
        return This.quoteRequest.validationInfo;
   end validationInfo;

   function insert (This : in out QuoteRequestHelper) return Unbounded_String is
      values : BasicArrayList_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            values := This.quoteRequest.toVector;
            QuoteRequestEntityFactory_Package.getInstance.getQuoteRequestEntityInstance.insert (values);
            success := To_Unbounded_String ("New QuoteRequest Successfully added to the QuoteRequest Table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, QuoteRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("add()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add QuoteRequest");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, QuoteRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("add()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function update (This : in out QuoteRequestHelper) return Unbounded_String is
      values : HashMap_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            values := This.quoteRequest.toHashMap;
            QuoteRequestEntityFactory_Package.getInstance.getQuoteRequestEntityInstance.update (This.quoteRequest.getUserName, values);
            success := To_Unbounded_String ("New QuoteRequest Successfully updated");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, QuoteRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update QuoteRequest");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, QuoteRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

   function delete (This : in out QuoteRequestHelper) return Unbounded_String is
   begin
        return This.commonStrings.NOT_IMPLEMENTED;
   end delete;

end admin.taghelpers.QuoteRequestHelper_Package;


