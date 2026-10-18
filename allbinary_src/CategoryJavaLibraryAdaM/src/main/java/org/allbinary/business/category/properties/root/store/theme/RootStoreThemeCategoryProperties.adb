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


with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package;

package body org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package TransformInfoHttpStoreInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package;
   procedure Initialize_Fields (This : in out RootStoreThemeCategoryProperties'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        RootStoreCategoryProperties_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return RootStoreThemeCategoryProperties_Access is
      This : constant RootStoreThemeCategoryProperties_Access := new RootStoreThemeCategoryProperties;
   begin
      RootStoreThemeCategoryProperties_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; abPath_Param : access AbPath_Package.AbPath'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      abPath : constant AbPath_Access := AbPath_Access (abPath_Param);
   begin
        RootStoreCategoryProperties_Package.Initialize (This, transformInfoInterface, abPath);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; abPath_Param : access AbPath_Package.AbPath'Class) return RootStoreThemeCategoryProperties_Access is
      This : constant RootStoreThemeCategoryProperties_Access := new RootStoreThemeCategoryProperties;
   begin
      RootStoreThemeCategoryProperties_Package.Initialize (This.all, transformInfoInterface_Param, abPath_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      node : constant Node_Access := Node_Access (node_Param);
   begin
        RootStoreCategoryProperties_Package.Initialize (This, transformInfoInterface, node);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class) return RootStoreThemeCategoryProperties_Access is
      This : constant RootStoreThemeCategoryProperties_Access := new RootStoreThemeCategoryProperties;
   begin
      RootStoreThemeCategoryProperties_Package.Initialize (This.all, transformInfoInterface_Param, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      categoryPropertiesHashMap : constant HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
   begin
        RootStoreCategoryProperties_Package.Initialize (This, transformInfoInterface, categoryPropertiesHashMap);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return RootStoreThemeCategoryProperties_Access is
      This : constant RootStoreThemeCategoryProperties_Access := new RootStoreThemeCategoryProperties;
   begin
      RootStoreThemeCategoryProperties_Package.Initialize (This.all, transformInfoInterface_Param, categoryPropertiesHashMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure initPath (This : in out RootStoreThemeCategoryProperties) is
      transformInfoHttpStoreInterface : TransformInfoHttpStoreInterface_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      stringBuffer : StringMaker_Access;
      abPath : AbPath_Access;
      httpServletRequest : HttpServletRequest_Access;
   begin
        transformInfoHttpStoreInterface := TransformInfoHttpStoreInterface_Access (This.transformInfoInterface);
        storeFrontInterface := StoreFrontFactory_Package.getInstance (transformInfoHttpStoreInterface.getStoreName);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH);
        stringBuffer.append (storeFrontInterface.getName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.THEMEPATH);
        abPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        httpServletRequest := HttpServletRequest_Access (transformInfoHttpStoreInterface.getPageContext.getRequest);
        This.webAppAbPath := AbPath_Package.Create (Java_Image (httpServletRequest.getContextPath) & abPath.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        RootStoreThemeCategoryProperties'Class (This).setRootFilePath (AbPath_Package.Create (Java_Image (URLGLOBALS_Package.getMainPath) & abPath.toString, StringUtil_Package.getInstance.EMPTY_STRING));
   end initPath;

end org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package;


