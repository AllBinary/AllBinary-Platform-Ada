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


package body admin.taghelpers.StoreFrontsRequestHelper_Package is

   procedure Initialize_Fields (This : in out StoreFrontsRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      
      
      This.storeName := Null_Unbounded_String;
      This.modifyingStoreFrontInterface := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.pageContext := pageContext;
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        This.portion := Portion_Package.Create (hashMap);
        StoreFrontsRequestHelper'Class (This).getFormData;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreFrontsRequestHelper_Access is
      This : constant StoreFrontsRequestHelper_Access := new StoreFrontsRequestHelper;
   begin
      StoreFrontsRequestHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out StoreFrontsRequestHelper) is
   begin
        This.storeName := This.weblisketSession.getStoreName;
        This.modifyingStoreFrontInterface := StoreFrontInterface_Access (StoreFront_Package.Create (This.request));
   end getFormData;

   function update (This : in out StoreFrontsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      hashMapData : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Updated Successfully");
            hashMapData := This.modifyingStoreFrontInterface.toHashMap;
            StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance.update (hashMapData);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StoreFrontsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update storefronts table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

   --  throws Exception
   procedure sendStoreCreatedEmails (This : in out StoreFrontsRequestHelper) is
      storeManagerEmailSubject : Unbounded_String;
      adminEmailSubject : Unbounded_String;
      stringBuffer : StringMaker_Access;
      adminEmailTextBody : Unbounded_String;
      adminBasicEmailInfo : BasicEmailInfo_Access;
      storeAdminBasicEmailInfo : BasicEmailInfo_Access;
      storeAdminEmailInfo : EmailInfo_Access;
      adminEmailInfo : EmailInfo_Access;
      adminUserEmailEventHandler : UserEmailEventHandler_Access;
      storeAdminUserEmailEventHandler : UserEmailEventHandler_Access;
   begin
        storeManagerEmailSubject := To_Unbounded_String ("Store Manager Nofification For Store: ") & This.modifyingStoreFrontInterface.getName;
        adminEmailSubject := To_Unbounded_String ("Admin Notification For Store: ") & This.modifyingStoreFrontInterface.getName;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Store Created: "));
        stringBuffer.append (This.modifyingStoreFrontInterface.getName);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "" & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("Click here for the Admin Interface:" & ASCII.LF & ""));
        stringBuffer.append (This.modifyingStoreFrontInterface.getCurrentHomeHostName);
        stringBuffer.append (To_Unbounded_String ("/admin/login.jsp" & ASCII.LF & "" & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("Goto Your Store:" & ASCII.LF & ""));
        stringBuffer.append (This.modifyingStoreFrontInterface.getCurrentHomeHostName);
        stringBuffer.append (This.modifyingStoreFrontInterface.getName);
        stringBuffer.append (To_Unbounded_String ("/index.jsp"));
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "" & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("UserName: "));
        stringBuffer.append (This.weblisketSession.getUserName);
        adminEmailTextBody := stringBuffer.toString;
        adminBasicEmailInfo := BasicEmailInfo_Access (AdminEmailInfo_Package.Create (adminEmailSubject, adminEmailTextBody));
        storeAdminBasicEmailInfo := BasicEmailInfo_Access (StoreEmailInfo_Package.Create (This.modifyingStoreFrontInterface, storeManagerEmailSubject, adminEmailTextBody));
        storeAdminEmailInfo := EmailInfo_Package.Create (storeAdminBasicEmailInfo);
        adminEmailInfo := EmailInfo_Package.Create (adminBasicEmailInfo);
        adminUserEmailEventHandler := AdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (This.abeClientInformation, UserEmailEventNameData_Package.STORECREATED);
        storeAdminUserEmailEventHandler := StoreAdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (UserEmailEventNameData_Package.STORECREATED, This.abeClientInformation, This.modifyingStoreFrontInterface);
        storeAdminUserEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.STORECREATED, storeAdminEmailInfo);
        adminUserEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.STORECREATED, adminEmailInfo);
   end sendStoreCreatedEmails;

   function install (This : in out StoreFrontsRequestHelper) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Intall StoreFront Successfully: "));
            stringBuffer.appendint (Integer (This.portion.getCurrent.intValue));
            stringBuffer.append (To_Unbounded_String (" of "));
            stringBuffer.appendint (Integer (This.portion.getTotal.intValue));
            success := stringBuffer.toString;
            This.modifyingStoreFrontInterface.install (This.portion.getCurrent.intValue, This.portion.getTotal.intValue);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StoreFrontsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("install()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to Install storefront");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("install()"), e);
            end if;
            return error;
                end;
        end;
   end install;

   function insert (This : in out StoreFrontsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      values : BasicArrayList_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Added Successfully");
            values := This.modifyingStoreFrontInterface.toVector;
            StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance.insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StoreFrontsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add storefront");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function delete (This : in out StoreFrontsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Delete Successfully");
            StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance.delete (This.storeName);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StoreFrontsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete storefronts table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

end admin.taghelpers.StoreFrontsRequestHelper_Package;


