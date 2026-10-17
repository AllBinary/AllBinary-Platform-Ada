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


package body admin.taghelpers.StaticPagesRequestHelper_Package is

   procedure Initialize_Fields (This : in out StaticPagesRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      This.storeName := Null_Unbounded_String;
      This.searchParams := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StaticPagesRequestHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        AbContext_Package.Initialize (This, propertiesHashMap, pageContext);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.xslFile := Unbounded_String (propertiesHashMap.get (TransformInfoData_Package.getInstance.TEMPLATEFILENAME));
        This.getFormData;
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StaticPagesRequestHelper_Access is
      This : constant StaticPagesRequestHelper_Access := new StaticPagesRequestHelper;
   begin
      StaticPagesRequestHelper_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure getFormData (This : in out StaticPagesRequestHelper) is
   begin
        This.storeName := This.request.getParameter (StoreFrontData_Package.getInstance.NAME);
        This.searchParams := SearchParams_Package.Create (This.request);
   end getFormData;

   --  throws Exception
   procedure email (This : in out StaticPagesRequestHelper) is
      storeFrontInterface : StoreFrontInterface_Access;
      adminEmailSubject : Unbounded_String;
      adminEmailTextBody : Unbounded_String;
      adminBasicEmailInfo : BasicEmailInfo_Access;
      storeAdminBasicEmailInfo : BasicEmailInfo_Access;
      storeAdminEmailInfo : EmailInfo_Access;
      adminEmailInfo : EmailInfo_Access;
      adminUserEmailEventHandler : UserEmailEventHandler_Access;
      storeAdminUserEmailEventHandler : UserEmailEventHandler_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Generated Static Pages Notification Email"), StaticPagesRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("email"));
            end if;
            storeFrontInterface := StoreFrontFactory_Package.getInstance (This.storeName);
            adminEmailSubject := To_Unbounded_String ("Generated Static Pages Email Notification");
            adminEmailTextBody := To_Unbounded_String ("Generated static pages for store: ") & This.storeName;
            adminBasicEmailInfo := BasicEmailInfo_Access (AdminEmailInfo_Package.Create (adminEmailSubject, adminEmailTextBody));
            storeAdminBasicEmailInfo := BasicEmailInfo_Access (StoreEmailInfo_Package.Create (storeFrontInterface, adminEmailSubject, adminEmailTextBody));
            storeAdminEmailInfo := EmailInfo_Package.Create (storeAdminBasicEmailInfo);
            adminEmailInfo := EmailInfo_Package.Create (adminBasicEmailInfo);
            adminUserEmailEventHandler := AdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (This.abeClientInformation, UserEmailEventNameData_Package.STOREGENERATINGSTATICPAGES);
            storeAdminUserEmailEventHandler := StoreAdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (UserEmailEventNameData_Package.STOREGENERATINGSTATICPAGES, This.abeClientInformation, storeFrontInterface);
            storeAdminUserEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.STOREGENERATINGSTATICPAGES, storeAdminEmailInfo);
            adminUserEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.STOREGENERATINGSTATICPAGES, adminEmailInfo);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, StaticPagesRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("email"), e);
            end if;
                end;
        end;
   end email;

   function generateStaticPages (This : in out StaticPagesRequestHelper) return Unbounded_String is
      contentType : Unbounded_String;
      searchRequest : SearchRequest_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            contentType := AcceptableResponseGenerator_Package.getInstance.get (This.request);
            searchRequest := SearchRequest_Package.Create (null, This.searchParams, This.xslFile, contentType, This.getPropertiesHashMap, This.getPageContext);
            success := ProductListingFactory_Package.getInstance (searchRequest).generateAll (This.storeName);
            This.email;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StaticPagesRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("generateStaticPages()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to generate staticpages table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StaticPagesRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("generateStaticPages()"), e);
            end if;
            return error;
                end;
        end;
   end generateStaticPages;

   function makePublic (This : in out StaticPagesRequestHelper) return Unbounded_String is
      storeFrontInterface : StoreFrontInterface_Access;
      fromAbPath : AbPath_Access;
      toAbPath : AbPath_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            storeFrontInterface := StoreFrontFactory_Package.getInstance (This.storeName);
            fromAbPath := AbPath_Package.Create ((storeFrontInterface.getTestHtmlPath) + (storeFrontInterface.getStaticPath), StringUtil_Package.getInstance.EMPTY_STRING);
            toAbPath := AbPath_Package.Create (Java_Image (URLGLOBALS.getWebappPath) & storeFrontInterface.getName & Java_Image (AbPathData_Package.getInstance.SEPARATOR) & Java_Image (storeFrontInterface.getStaticPath), StringUtil_Package.getInstance.EMPTY_STRING);
            FileUtil_Package.getInstance.copy (fromAbPath, toAbPath);
            success := To_Unbounded_String ("Made Public");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StaticPagesRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("makePublic()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to makePublic");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StaticPagesRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("makePublic()"), e);
            end if;
            return error;
                end;
        end;
   end makePublic;

end admin.taghelpers.StaticPagesRequestHelper_Package;


