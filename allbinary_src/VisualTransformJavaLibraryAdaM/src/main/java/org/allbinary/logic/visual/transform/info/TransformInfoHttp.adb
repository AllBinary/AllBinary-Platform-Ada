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


package body org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package is

   procedure Initialize_Fields (This : in out TransformInfoHttp'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttp'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access; crud : Boolean) is
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (propertiesHashMap, pageContext);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, This'Unchecked_Access, To_Unbounded_String ("Constructor(HashMap, PageContext, boolean)"));
        end if;
        This.override (propertiesHashMap);
   end Initialize;

   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access; crud : Boolean) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      Initialize (This.all, propertiesHashMap, pageContext, crud);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfoHttp'Class; request : HttpServletRequest_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (propertiesHashMap, pageContext);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, This'Unchecked_Access, To_Unbounded_String ("Constructor(HttpServletRequest, HashMap, PageContext)"));
        end if;
        This.set (RequestParams_Package.Create (HttpServletRequest_Access (request)).toHashMap);
        This.override (propertiesHashMap);
   end Initialize;

   function Create (request : HttpServletRequest_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      Initialize (This.all, request, propertiesHashMap, pageContext);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfoHttp'Class; databaseHashMap : HashMap_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (propertiesHashMap, pageContext);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, This'Unchecked_Access, To_Unbounded_String ("Constructor(HashMap, HashMap, PageContext)"));
        end if;
        This.set (databaseHashMap);
   end Initialize;

   function Create (databaseHashMap : HashMap_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      Initialize (This.all, databaseHashMap, propertiesHashMap, pageContext);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfoHttp'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (propertiesHashMap, pageContext);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, This'Unchecked_Access, To_Unbounded_String ("Constructor(HashMap, PageContext)"));
        end if;
        This.set (propertiesHashMap);
   end Initialize;

   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      Initialize (This.all, propertiesHashMap, pageContext);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfoHttp'Class; parentViewOfThisTransformInfoInterface : TransformInfoHttp_Access) is
   begin
        TransformInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.abContext := AbContext_Package.Create (parentViewOfThisTransformInfoInterface.getPropertiesHashMap, parentViewOfThisTransformInfoInterface.getPageContext);
   end Initialize;

   function Create (parentViewOfThisTransformInfoInterface : TransformInfoHttp_Access) return TransformInfoHttp_Access is
      This : constant TransformInfoHttp_Access := new TransformInfoHttp;
   begin
      Initialize (This.all, parentViewOfThisTransformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   procedure set (This : in out TransformInfoHttp; hashMap : HashMap_Access) is
      transformInfoData : TransformInfoData_Access;
      stringValidationUtil : StringValidationUtil_Access;
      objectConfigString : Unbounded_String;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & hashMap.toString, This'Unchecked_Access, To_Unbounded_String ("set()"));
        end if;
        transformInfoData := TransformInfoData_Package.getInstance;
        This.setName (Unbounded_String (hashMap.get (transformInfoData.NAME)));
        This.setStoreName (Unbounded_String (hashMap.get (StoreFrontData_Package.getInstance.NAME)));
        This.setObjectFile (Unbounded_String (hashMap.get (transformInfoData.OBJECTFILENAME)));
        This.setObject (Unbounded_String (hashMap.get (transformInfoData.OBJECT)));
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        objectConfigString := Unbounded_String (hashMap.get (transformInfoData.OBJECTCONFIG));
        if stringValidationUtil.isValidRequired (objectConfigString, 10, AbSqlData_Package.MAXBLOB) then
            This.setObjectConfig (objectConfigString);
        else
            This.setObjectConfig (TransformInfoObjectConfig_Package.Create (This'Unchecked_Access).toString);
        end if;
        if not (stringValidationUtil.isEmpty (Unbounded_String (hashMap.get (transformInfoData.OBJECTCONFIGFILENAME)))) then
            This.setObjectConfigFile (Unbounded_String (hashMap.get (transformInfoData.OBJECTCONFIGFILENAME)));
        end if;
        This.setTemplateFile (Unbounded_String (hashMap.get (transformInfoData.TEMPLATEFILENAME)));
        This.setTemplate (Unbounded_String (hashMap.get (transformInfoData.TEMPLATE)));
        This.setDataFile (Unbounded_String (hashMap.get (transformInfoData.DATAFILENAME)));
        This.setData (Unbounded_String (hashMap.get (transformInfoData.DATA)));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
            This.logUtil.putF (This.log, This'Unchecked_Access, To_Unbounded_String ("set()"));
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
        return AbPath_Package.Create ((URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH), This.getTemplateFile);
   end getTemplateFilePath;

   --  throws Exception
   function getObjectConfigFilePath (This : in out TransformInfoHttp) return AbPath_Access is
   begin
        return AbPath_Package.Create ((URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH), This.getObjectConfigFile);
   end getObjectConfigFilePath;

   --  throws Exception
   function getDataFilePath (This : in out TransformInfoHttp) return AbPath_Access is
   begin
        return AbPath_Package.Create ((URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH), This.getDataFile);
   end getDataFilePath;

   procedure getWeblisketSession (This : in out TransformInfoHttp) is
      Java_Result : constant WeblisketSessionInterface_Access := TransformInfoHttp'Class (This).getWeblisketSession;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWeblisketSession;

   procedure getPageContext (This : in out TransformInfoHttp) is
      Java_Result : constant PageContext_Access := TransformInfoHttp'Class (This).getPageContext;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPageContext;

   procedure getPropertiesHashMap (This : in out TransformInfoHttp) is
      Java_Result : constant HashMap_Access := TransformInfoHttp'Class (This).getPropertiesHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPropertiesHashMap;

   procedure getTemplateFilePath (This : in out TransformInfoHttp) is
      Java_Result : constant AbPath_Access := TransformInfoHttp'Class (This).getTemplateFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTemplateFilePath;

   procedure getObjectConfigFilePath (This : in out TransformInfoHttp) is
      Java_Result : constant AbPath_Access := TransformInfoHttp'Class (This).getObjectConfigFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObjectConfigFilePath;

   procedure getDataFilePath (This : in out TransformInfoHttp) is
      Java_Result : constant AbPath_Access := TransformInfoHttp'Class (This).getDataFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDataFilePath;

end org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;


