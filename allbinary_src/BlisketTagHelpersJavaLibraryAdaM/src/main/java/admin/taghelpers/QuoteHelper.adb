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


package body admin.taghelpers.QuoteHelper_Package is

   procedure Initialize_Fields (This : in out QuoteHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      This.storeFrontInterface := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out QuoteHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
      storeName : Unbounded_String;
   begin
      BasicTable_Package.Initialize (This);
      Initialize_Fields (This);
        storeName := Unbounded_String (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        if (storeName) /= (Null_Unbounded_String) then
            This.storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
        else
            This.storeFrontInterface := StoreFront_Package.Create;
        end if;
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        This.portion := Portion_Package.Create (hashMap);
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return QuoteHelper_Access is
      This : constant QuoteHelper_Access := new QuoteHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   --  throws Exception
   procedure emailUser (This : in out QuoteHelper; quoteRequest : QuoteRequest_Access) is
      user : UserInterface_Access;
      userEmailSubject : Unbounded_String;
      stringBuffer : StringMaker_Access;
      userEmailTextBody : Unbounded_String;
      basicEmailInfo : BasicEmailInfo_Access;
      emailInfo : EmailInfo_Access;
      userEmailEventHandler : UserEmailEventHandler_Access;
   begin
        user := UserEntityFactory_Package.getInstance.getUser (quoteRequest.getUserName);
        userEmailSubject := To_Unbounded_String ("Quote Request Receipt");
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("This is just a verification email. "));
        stringBuffer.append (To_Unbounded_String ("We usually respond to quote request within 24 hours."));
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "" & ASCII.LF & "Thank You For Your Business."));
        userEmailTextBody := stringBuffer.toString;
        basicEmailInfo := BasicEmailInfo_Access (StoreEmailInfo_Package.Create (This.storeFrontInterface, userEmailSubject, userEmailTextBody));
        emailInfo := EmailInfo_Package.Create (basicEmailInfo);
        userEmailEventHandler := UserEmailEventHandlerSingletons_Package.getInstance.getInstance (This.abeClientInformation, UserEmailEventNameData_Package.QUOTEREQUEST, user);
        userEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.QUOTEREQUEST, emailInfo);
   end emailUser;

   --  throws Exception
   procedure emailAdmins (This : in out QuoteHelper; quoteRequest : QuoteRequest_Access) is
      adminEmailSubject : Unbounded_String;
      stringBuffer : StringMaker_Access;
      adminEmailTextBody : Unbounded_String;
      basicEmailInfo : BasicEmailInfo_Access;
      emailInfo : EmailInfo_Access;
      storeAdminUserEmailEventHandler : UserEmailEventHandler_Access;
      adminUserEmailEventHandler : UserEmailEventHandler_Access;
   begin
        adminEmailSubject := To_Unbounded_String ("Quote Request");
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "UserName: "));
        stringBuffer.append (quoteRequest.getUserName);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Project Info: " & ASCII.LF & ""));
        stringBuffer.append (quoteRequest.getProjectInfo);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "User Comments: " & ASCII.LF & ""));
        stringBuffer.append (quoteRequest.getUserComments);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Budget: " & ASCII.LF & ""));
        stringBuffer.append (quoteRequest.getBudget);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Time Frame: " & ASCII.LF & ""));
        stringBuffer.append (quoteRequest.getTimeFrame);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Comments: " & ASCII.LF & ""));
        stringBuffer.append (quoteRequest.getComments);
        adminEmailTextBody := stringBuffer.toString;
        basicEmailInfo := BasicEmailInfo_Access (StoreEmailInfo_Package.Create (This.storeFrontInterface, adminEmailSubject, adminEmailTextBody));
        emailInfo := EmailInfo_Package.Create (basicEmailInfo);
        storeAdminUserEmailEventHandler := AdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (This.abeClientInformation, UserEmailEventNameData_Package.QUOTEREQUEST);
        adminUserEmailEventHandler := StoreAdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (UserEmailEventNameData_Package.QUOTEREQUEST, This.abeClientInformation, This.storeFrontInterface);
        storeAdminUserEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.QUOTEREQUEST, emailInfo);
        adminUserEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.QUOTEREQUEST, emailInfo);
   end emailAdmins;

   --  throws Exception
   function email (This : in out QuoteHelper) return Unbounded_String is
      quoteRequestEntity : QuoteRequestEntity_Access;
      userName : Unbounded_String;
      vector : BasicArrayList_Access;
      id : Integer;
      size : Integer;
      nextId : Integer;
      index : Integer;
      quoteRequest : QuoteRequest_Access;
   begin
        begin
            quoteRequestEntity := QuoteRequestEntityFactory_Package.getInstance.getQuoteRequestEntityInstance;
            userName := This.weblisketSession.getUserName;
            vector := quoteRequestEntity.getIds (userName);
            id := 0;
            size := vector.size;
            for index in 0 .. (size) - 1 loop
                nextId := (Integer (vector.get (index))).intValue;
                if (id) < (nextId) then
                    id := nextId;
                end if;
            end loop;
            quoteRequest := quoteRequestEntity.get (userName, id);
            if (quoteRequest) /= (null) then
                This.emailUser (quoteRequest);
                This.emailAdmins (quoteRequest);
                return To_Unbounded_String ("Thank You For Your Business.<p/>");
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Quote Request")));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("email"), e);
            end if;
            return To_Unbounded_String ("Thank You For Your Business.<p>");
                end;
        end;
   end email;

   function drop (This : in out QuoteHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := QuoteRequestEntityFactory_Package.getInstance.getQuoteRequestEntityInstance.dropTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, This.commonStrings.DROP);
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop QuoteRequest table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   function create (This : in out QuoteHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := QuoteRequestEntityFactory_Package.getInstance.getQuoteRequestEntityInstance.createTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("create()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create new QuoteRequest table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   function restore (This : in out QuoteHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.restoreTable (QuoteRequestEntityFactory_Package.getInstance.getQuoteRequestEntityInstance, This.portion);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("restore()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to restore backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("restore()"), e);
            end if;
            return error;
                end;
        end;
   end restore;

   function backup (This : in out QuoteHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (QuoteRequestEntityFactory_Package.getInstance.getQuoteRequestEntityInstance);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("backup()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to make backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("backup()"), e);
            end if;
            return error;
                end;
        end;
   end backup;

   procedure email (This : in out QuoteHelper) is
      Java_Result : constant Unbounded_String := QuoteHelper'Class (This).email;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end email;

   procedure drop (This : in out QuoteHelper) is
      Java_Result : constant Unbounded_String := QuoteHelper'Class (This).drop;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drop;

   procedure create (This : in out QuoteHelper) is
      Java_Result : constant Unbounded_String := QuoteHelper'Class (This).create;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure restore (This : in out QuoteHelper) is
      Java_Result : constant Unbounded_String := QuoteHelper'Class (This).restore;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restore;

   procedure backup (This : in out QuoteHelper) is
      Java_Result : constant Unbounded_String := QuoteHelper'Class (This).backup;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backup;

end admin.taghelpers.QuoteHelper_Package;


