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


package body org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package is

   procedure Initialize_Fields (This : in out TransformInfoHttpStore'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttpStore'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
        TransformInfoHttp_Package.Initialize (This, propertiesHashMap, pageContext, True);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoHttpStore_Access is
      This : constant TransformInfoHttpStore_Access := new TransformInfoHttpStore;
   begin
      TransformInfoHttpStore_Package.Initialize (This.all, propertiesHashMap, pageContext);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoHttpStore'Class; databaseHashMap : HashMap_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
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
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("Constructor(HashMap, HashMap , PageContext)"));
        end if;
        This.setStoreName (Unbounded_String (databaseHashMap.get (StoreFrontData_Package.getInstance.NAME)));
   end Initialize;

   function Create (databaseHashMap : HashMap_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoHttpStore_Access is
      This : constant TransformInfoHttpStore_Access := new TransformInfoHttpStore;
   begin
      TransformInfoHttpStore_Package.Initialize (This.all, databaseHashMap, propertiesHashMap, pageContext);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoHttpStore'Class; storeFrontInterface : StoreFrontInterface_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
        TransformInfoHttp_Package.Initialize (This, propertiesHashMap, pageContext);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Properties HashMap: ") & propertiesHashMap.toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
        This.setStoreName (storeFrontInterface.getName);
   end Initialize;

   function Create (storeFrontInterface : StoreFrontInterface_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoHttpStore_Access is
      This : constant TransformInfoHttpStore_Access := new TransformInfoHttpStore;
   begin
      TransformInfoHttpStore_Package.Initialize (This.all, storeFrontInterface, propertiesHashMap, pageContext);
      return This;
   end Create;

   --  throws Exception
   function getPath (This : in out TransformInfoHttpStore) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
        stringBuffer.append (This.getStoreName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        return stringBuffer.toString;
   end getPath;

   --  throws Exception
   function getTemplateFilePath (This : in out TransformInfoHttpStore) return AbPath_Access is
   begin
        return AbPath_Package.Create (This.getPath, This.getTemplateFile);
   end getTemplateFilePath;

   --  throws Exception
   function getObjectConfigFilePath (This : in out TransformInfoHttpStore) return AbPath_Access is
   begin
        return AbPath_Package.Create (This.getPath, This.getObjectConfigFile);
   end getObjectConfigFilePath;

   --  throws Exception
   function getDataFilePath (This : in out TransformInfoHttpStore) return AbPath_Access is
   begin
        return AbPath_Package.Create (This.getPath, This.getDataFile);
   end getDataFilePath;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package;


