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
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out TransformInfoHttpStore'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttpStore'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        TransformInfoHttp_Package.Initialize (This, propertiesHashMap, pageContext, True);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, TransformInfoHttpStore_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttpStore_Access is
      This : constant TransformInfoHttpStore_Access := new TransformInfoHttpStore;
   begin
      TransformInfoHttpStore_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoHttpStore'Class; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      databaseHashMap : constant HashMap_Access := HashMap_Access (databaseHashMap_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
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
            This.logUtil.putF (stringBuffer.toString, TransformInfoHttpStore_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(HashMap, HashMap , PageContext)"));
        end if;
        TransformInfoHttpStore'Class (This).setStoreName (Java_Unbox (databaseHashMap.get (StoreFrontData_Package.getInstance.NAME)));
   end Initialize;

   function Create (databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttpStore_Access is
      This : constant TransformInfoHttpStore_Access := new TransformInfoHttpStore;
   begin
      TransformInfoHttpStore_Package.Initialize (This.all, databaseHashMap_Param, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoHttpStore'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        TransformInfoHttp_Package.Initialize (This, propertiesHashMap, pageContext);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, TransformInfoHttpStore_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        TransformInfoHttpStore'Class (This).setStoreName (storeFrontInterface.getName);
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttpStore_Access is
      This : constant TransformInfoHttpStore_Access := new TransformInfoHttpStore;
   begin
      TransformInfoHttpStore_Package.Initialize (This.all, storeFrontInterface_Param, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   function getPath (This : in out TransformInfoHttpStore) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS_Package.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH);
        stringBuffer.append (TransformInfoHttpStore'Class (This).getStoreName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        return stringBuffer.toString;
   end getPath;

   --  throws Exception
   function getTemplateFilePath (This : in out TransformInfoHttpStore) return AbPath_Access is
   begin
        return AbPath_Package.Create (TransformInfoHttpStore'Class (This).getPath, TransformInfoHttpStore'Class (This).getTemplateFile);
   end getTemplateFilePath;

   --  throws Exception
   function getObjectConfigFilePath (This : in out TransformInfoHttpStore) return AbPath_Access is
   begin
        return AbPath_Package.Create (TransformInfoHttpStore'Class (This).getPath, TransformInfoHttpStore'Class (This).getObjectConfigFile);
   end getObjectConfigFilePath;

   --  throws Exception
   function getDataFilePath (This : in out TransformInfoHttpStore) return AbPath_Access is
   begin
        return AbPath_Package.Create (TransformInfoHttpStore'Class (This).getPath, TransformInfoHttpStore'Class (This).getDataFile);
   end getDataFilePath;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package;


