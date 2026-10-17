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


package body org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package is

   procedure Initialize_Fields (This : in out RootStoreThemeCategoryProperties'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        RootStoreCategoryProperties_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return RootStoreThemeCategoryProperties_Access is
      This : constant RootStoreThemeCategoryProperties_Access := new RootStoreThemeCategoryProperties;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface : TransformInfoInterface_Access; abPath : AbPath_Access) is
   begin
        RootStoreCategoryProperties_Package.Initialize (This, transformInfoInterface, abPath);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; abPath : AbPath_Access) return RootStoreThemeCategoryProperties_Access is
      This : constant RootStoreThemeCategoryProperties_Access := new RootStoreThemeCategoryProperties;
   begin
      Initialize (This.all, transformInfoInterface, abPath);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface : TransformInfoInterface_Access; node : Node_Access) is
   begin
        RootStoreCategoryProperties_Package.Initialize (This, transformInfoInterface, node);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; node : Node_Access) return RootStoreThemeCategoryProperties_Access is
      This : constant RootStoreThemeCategoryProperties_Access := new RootStoreThemeCategoryProperties;
   begin
      Initialize (This.all, transformInfoInterface, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out RootStoreThemeCategoryProperties'Class; transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesHashMap : HashMap_Access) is
   begin
        RootStoreCategoryProperties_Package.Initialize (This, transformInfoInterface, categoryPropertiesHashMap);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesHashMap : HashMap_Access) return RootStoreThemeCategoryProperties_Access is
      This : constant RootStoreThemeCategoryProperties_Access := new RootStoreThemeCategoryProperties;
   begin
      Initialize (This.all, transformInfoInterface, categoryPropertiesHashMap);
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
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
        stringBuffer.append (storeFrontInterface.getName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.THEMEPATH);
        abPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        httpServletRequest := HttpServletRequest_Access (transformInfoHttpStoreInterface.getPageContext.getRequest);
        This.webAppAbPath := AbPath_Package.Create (Java_Image (httpServletRequest.getContextPath) & abPath.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        This.setRootFilePath (AbPath_Package.Create (Java_Image (URLGLOBALS.getMainPath) & abPath.toString, StringUtil_Package.getInstance.EMPTY_STRING));
   end initPath;

end org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryProperties_Package;


