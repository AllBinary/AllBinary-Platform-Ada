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
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.sql.AbSqlData_Package; use org.allbinary.logic.communication.sql.AbSqlData_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;

package body org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package AbSqlData_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlData_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoObjectConfig_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
   procedure Initialize_Fields (This : in out TransformInfoHttp'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttp'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class; crud : Boolean) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (propertiesHashMap, pageContext);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, TransformInfoHttp_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(HashMap, PageContext, boolean)"));
        end if;
        TransformInfoHttp'Class (This).override (propertiesHashMap);
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class; crud : Boolean) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      TransformInfoHttp_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param, crud);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoHttp'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (propertiesHashMap, pageContext);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, TransformInfoHttp_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(HttpServletRequest, HashMap, PageContext)"));
        end if;
        TransformInfoHttp'Class (This).set (RequestParams_Package.Create (HttpServletRequest_Access (request)).toHashMap);
        TransformInfoHttp'Class (This).override (propertiesHashMap);
   end Initialize;

   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      TransformInfoHttp_Package.Initialize (This.all, request_Param, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoHttp'Class; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      databaseHashMap : constant HashMap_Access := HashMap_Access (databaseHashMap_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (propertiesHashMap, pageContext);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, TransformInfoHttp_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(HashMap, HashMap, PageContext)"));
        end if;
        TransformInfoHttp'Class (This).set (databaseHashMap);
   end Initialize;

   function Create (databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      TransformInfoHttp_Package.Initialize (This.all, databaseHashMap_Param, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoHttp'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (propertiesHashMap, pageContext);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, TransformInfoHttp_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(HashMap, PageContext)"));
        end if;
        TransformInfoHttp'Class (This).set (propertiesHashMap);
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      TransformInfoHttp_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoHttp'Class; parentViewOfThisTransformInfoInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class) is
      parentViewOfThisTransformInfoInterface : constant TransformInfoHttp_Access := TransformInfoHttp_Access (parentViewOfThisTransformInfoInterface_Param);
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (parentViewOfThisTransformInfoInterface.getPropertiesHashMap, parentViewOfThisTransformInfoInterface.getPageContext);
   end Initialize;

   function Create (parentViewOfThisTransformInfoInterface_Param : access TransformInfoHttp_Package.TransformInfoHttp'Class) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      TransformInfoHttp_Package.Initialize (This.all, parentViewOfThisTransformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure set (This : in out TransformInfoHttp; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      transformInfoData : TransformInfoData_Access;
      stringValidationUtil : StringValidationUtil_Access;
      objectConfigString : Unbounded_String;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & hashMap.toString, TransformInfoHttp_Access'(This'Unchecked_Access), To_Unbounded_String ("set()"));
        end if;
        transformInfoData := TransformInfoData_Package.getInstance;
        TransformInfoHttp'Class (This).setName (Java_Unbox (hashMap.get (transformInfoData.NAME)));
        TransformInfoHttp'Class (This).setStoreName (Java_Unbox (hashMap.get (StoreFrontData_Package.getInstance.NAME)));
        TransformInfoHttp'Class (This).setObjectFile (Java_Unbox (hashMap.get (transformInfoData.OBJECTFILENAME)));
        TransformInfoHttp'Class (This).setObject (Java_Unbox (hashMap.get (transformInfoData.OBJECT)));
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        objectConfigString := Java_Unbox (hashMap.get (transformInfoData.OBJECTCONFIG));
        if stringValidationUtil.isValidRequired (objectConfigString, 10, AbSqlData_Package.MAXBLOB) then
            TransformInfoHttp'Class (This).setObjectConfig (objectConfigString);
        else
            TransformInfoHttp'Class (This).setObjectConfig (TransformInfoObjectConfig_Package.Create (TransformInfoHttp_Access'(This'Unchecked_Access)).toString);
        end if;
        if not (stringValidationUtil.isEmpty (Java_Unbox (hashMap.get (transformInfoData.OBJECTCONFIGFILENAME)))) then
            TransformInfoHttp'Class (This).setObjectConfigFile (Java_Unbox (hashMap.get (transformInfoData.OBJECTCONFIGFILENAME)));
        end if;
        TransformInfoHttp'Class (This).setTemplateFile (Java_Unbox (hashMap.get (transformInfoData.TEMPLATEFILENAME)));
        TransformInfoHttp'Class (This).setTemplate (Java_Unbox (hashMap.get (transformInfoData.TEMPLATE)));
        TransformInfoHttp'Class (This).setDataFile (Java_Unbox (hashMap.get (transformInfoData.DATAFILENAME)));
        TransformInfoHttp'Class (This).setData (Java_Unbox (hashMap.get (transformInfoData.DATA)));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
            This.logUtil.putF (TransformInfoHttp'Class (This).log, TransformInfoHttp_Access'(This'Unchecked_Access), To_Unbounded_String ("set()"));
        end if;
   end set;

   function getWeblisketSession (This : in out TransformInfoHttp) return WeblisketSessionInterface_Access is
   begin
        return This.abContext.getWeblisketSession;
   end getWeblisketSession;

   function getPageContext (This : in out TransformInfoHttp) return PageContext_Access is
   begin
        return This.abContext.getPageContext;
   end getPageContext;

   function getPropertiesHashMap (This : in out TransformInfoHttp) return HashMap_Access is
   begin
        return This.abContext.getPropertiesHashMap;
   end getPropertiesHashMap;

   --  throws Exception
   function getTemplateFilePath (This : in out TransformInfoHttp) return AbPath_Access is
   begin
        return AbPath_Package.Create ((URLGLOBALS_Package.getMainPath) + (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH), TransformInfoHttp'Class (This).getTemplateFile);
   end getTemplateFilePath;

   --  throws Exception
   function getObjectConfigFilePath (This : in out TransformInfoHttp) return AbPath_Access is
   begin
        return AbPath_Package.Create ((URLGLOBALS_Package.getMainPath) + (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH), TransformInfoHttp'Class (This).getObjectConfigFile);
   end getObjectConfigFilePath;

   --  throws Exception
   function getDataFilePath (This : in out TransformInfoHttp) return AbPath_Access is
   begin
        return AbPath_Package.Create ((URLGLOBALS_Package.getMainPath) + (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH), TransformInfoHttp'Class (This).getDataFile);
   end getDataFilePath;

end org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;


