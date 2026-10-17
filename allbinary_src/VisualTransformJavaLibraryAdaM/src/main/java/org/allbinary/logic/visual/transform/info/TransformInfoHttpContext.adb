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


package body org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package is

   procedure Initialize_Fields (This : in out TransformInfoHttpContext'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttpContext'Class; databaseHashMap_Param : access HashMap'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      databaseHashMap : HashMap_Access := HashMap_Access (databaseHashMap_Param);
      propertiesHashMap : HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
      stringBuffer : StringMaker_Access;
   begin
        TransformInfoHttp_Package.Initialize (This, databaseHashMap, propertiesHashMap, pageContext);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Database HashMap: "));
            stringBuffer.append (databaseHashMap.toString);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Properties HashMap: "));
            stringBuffer.append (propertiesHashMap.toString);
            This.logUtil.putF (stringBuffer.toString, TransformInfoHttpContext_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        This.setStoreName (StringUtil_Package.getInstance.EMPTY_STRING);
   end Initialize;

   function Create (databaseHashMap_Param : access HashMap'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return TransformInfoHttpContext_Access is
      This : constant TransformInfoHttpContext_Access := new TransformInfoHttpContext;
   begin
      TransformInfoHttpContext_Package.Initialize (This.all, databaseHashMap_Param, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoHttpContext'Class; propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      propertiesHashMap : HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        TransformInfoHttp_Package.Initialize (This, propertiesHashMap, pageContext);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, TransformInfoHttpContext_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        This.setStoreName (StringUtil_Package.getInstance.EMPTY_STRING);
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return TransformInfoHttpContext_Access is
      This : constant TransformInfoHttpContext_Access := new TransformInfoHttpContext;
   begin
      TransformInfoHttpContext_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   function getPath (This : in out TransformInfoHttpContext) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.INSTALLPATH);
        stringBuffer.append (This.getStoreName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        return stringBuffer.toString;
   end getPath;

   --  throws Exception
   function getTemplateFilePath (This : in out TransformInfoHttpContext) return AbPath_Access is
   begin
        return AbPath_Package.Create (This.getPath, This.getTemplateFile);
   end getTemplateFilePath;

   --  throws Exception
   function getObjectConfigFilePath (This : in out TransformInfoHttpContext) return AbPath_Access is
   begin
        return AbPath_Package.Create (This.getPath, This.getObjectConfigFile);
   end getObjectConfigFilePath;

   --  throws Exception
   function getDataFilePath (This : in out TransformInfoHttpContext) return AbPath_Access is
   begin
        return AbPath_Package.Create (This.getPath, This.getDataFile);
   end getDataFilePath;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package;


