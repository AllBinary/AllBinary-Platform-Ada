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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.business.category.CategoryUtil_Package; use org.allbinary.business.category.CategoryUtil_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;

package body org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package CategoryUtil_Package renames Standard.org.allbinary.business.category.CategoryUtil_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   procedure Initialize_Fields (This : in out RootStoreCategoryProperties'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.pathData := AbPathData_Package.getInstance;
      This.fileAbPath := null;
      
      
      
      This.webAppAbPath := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.abPath := AbPath_Package.createAbPath;
        This.category := CategoryData_Package.getInstance.ROOTCATEGORY;
        This.isRealRoot_Field := True;
        RootStoreCategoryProperties'Class (This).initPath;
        RootStoreCategoryProperties'Class (This).log;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return RootStoreCategoryProperties_Access is
      This : constant RootStoreCategoryProperties_Access := new RootStoreCategoryProperties;
   begin
      RootStoreCategoryProperties_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryAbPath_Param : access AbPath_Package.AbPath'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      categoryAbPath : constant AbPath_Access := AbPath_Access (categoryAbPath_Param);
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.abPath := categoryAbPath;
        This.category := This.pathData.getNameFromPath (categoryAbPath.toString);
        if StringValidationUtil_Package.getInstance.isEmpty (This.category) then
            This.isRealRoot_Field := True;
            This.category := CategoryData_Package.getInstance.ROOTCATEGORY;
        end if;
        RootStoreCategoryProperties'Class (This).initPath;
        RootStoreCategoryProperties'Class (This).log;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryAbPath_Param : access AbPath_Package.AbPath'Class) return RootStoreCategoryProperties_Access is
      This : constant RootStoreCategoryProperties_Access := new RootStoreCategoryProperties;
   begin
      RootStoreCategoryProperties_Package.Initialize (This.all, transformInfoInterface_Param, categoryAbPath_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      node : constant Node_Access := Node_Access (node_Param);
      categoryPath : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        categoryPath := CategoryUtil_Package.getNameFromNode (node);
        This.abPath := AbPath_Package.Create (categoryPath, StringUtil_Package.getInstance.EMPTY_STRING);
        This.category := This.pathData.getNameFromPath (categoryPath);
        if StringValidationUtil_Package.getInstance.isEmpty (This.category) then
            This.isRealRoot_Field := True;
            This.category := CategoryData_Package.getInstance.ROOTCATEGORY;
        end if;
        RootStoreCategoryProperties'Class (This).initPath;
        RootStoreCategoryProperties'Class (This).log;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class) return RootStoreCategoryProperties_Access is
      This : constant RootStoreCategoryProperties_Access := new RootStoreCategoryProperties;
   begin
      RootStoreCategoryProperties_Package.Initialize (This.all, transformInfoInterface_Param, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      categoryPropertiesHashMap : constant HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
      categoryPath : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        categoryPath := Java_New_String (Java_Unbox (categoryPropertiesHashMap.get (CategoryData_Package.getInstance.NAME)));
        This.abPath := AbPath_Package.Create (categoryPath, StringUtil_Package.getInstance.EMPTY_STRING);
        This.category := This.pathData.getNameFromPath (categoryPath);
        if StringValidationUtil_Package.getInstance.isEmpty (This.category) then
            This.isRealRoot_Field := True;
            This.category := CategoryData_Package.getInstance.ROOTCATEGORY;
        end if;
        RootStoreCategoryProperties'Class (This).initPath;
        RootStoreCategoryProperties'Class (This).log;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return RootStoreCategoryProperties_Access is
      This : constant RootStoreCategoryProperties_Access := new RootStoreCategoryProperties;
   begin
      RootStoreCategoryProperties_Package.Initialize (This.all, transformInfoInterface_Param, categoryPropertiesHashMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure initPath (This : in out RootStoreCategoryProperties) is
      transformInfoHttpStoreInterface : TransformInfoHttpInterface_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      postPath : Unbounded_String;
      httpServletRequest : HttpServletRequest_Access;
   begin
        transformInfoHttpStoreInterface := TransformInfoHttpInterface_Access (This.transformInfoInterface);
        storeFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (transformInfoHttpStoreInterface.getStoreName));
        postPath := (storeFrontInterface.getCurrentHostNamePath) + (storeFrontInterface.getCategoryPath);
        httpServletRequest := HttpServletRequest_Access (transformInfoHttpStoreInterface.getPageContext.getRequest);
        This.webAppAbPath := AbPath_Package.Create (Java_Image (httpServletRequest.getContextPath) & postPath, StringUtil_Package.getInstance.EMPTY_STRING);
        RootStoreCategoryProperties'Class (This).setRootFilePath (AbPath_Package.Create (Java_Image (URLGLOBALS_Package.getMainPath) & postPath, StringUtil_Package.getInstance.EMPTY_STRING));
   end initPath;

   function isRealRoot (This : in out RootStoreCategoryProperties) return Boolean is
   begin
        return This.isRealRoot_Field;
   end isRealRoot;

   function isRoot (This : in out RootStoreCategoryProperties) return Boolean is
   begin
        return True;
   end isRoot;

   function getKey (This : in out RootStoreCategoryProperties) return Java_Object_Access is
   begin
        return Java_Object_Access (RootStoreCategoryProperties'Class (This).getValue);
   end getKey;

   procedure setPath (This : in out RootStoreCategoryProperties; path_Param : access AbPath_Package.AbPath'Class) is
      path : constant AbPath_Access := AbPath_Access (path_Param);
   begin
        This.abPath := path;
   end setPath;

   procedure setRootFilePath (This : in out RootStoreCategoryProperties; value_Param : access AbPath_Package.AbPath'Class) is
      value : constant AbPath_Access := AbPath_Access (value_Param);
   begin
        This.fileAbPath := value;
   end setRootFilePath;

   function getRootFilePath (This : in out RootStoreCategoryProperties) return AbPath_Access is
   begin
        return This.fileAbPath;
   end getRootFilePath;

   function getValue (This : in out RootStoreCategoryProperties) return Unbounded_String is
   begin
        return This.category;
   end getValue;

   --  throws Exception
   function getWebAppPath (This : in out RootStoreCategoryProperties) return AbPath_Access is
   begin
        return This.webAppAbPath;
   end getWebAppPath;

   function getPath (This : in out RootStoreCategoryProperties; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) return AbPath_Access is
      categoryHierarchyInterface : constant CategoryHierarchyInterface_Access := CategoryHierarchyInterface_Access (categoryHierarchyInterface_Param);
   begin
        return This.abPath;
   end getPath;

   function getFileName (This : in out RootStoreCategoryProperties) return Unbounded_String is
   begin
        return ((RootStoreCategoryProperties'Class (This).getValue) + (AbPathData_Package.getInstance.EXTENSION_SEP)) + (CategoryData_Package.getInstance.UNCRYPTED_EXTENSION);
   end getFileName;

   procedure setValue (This : in out RootStoreCategoryProperties; value : Unbounded_String) is
   begin
        This.category := value;
   end setValue;

   function isValid (This : in out RootStoreCategoryProperties) return Boolean is
   begin
        return True;
   end isValid;

   function toHashMap (This : in out RootStoreCategoryProperties) return HashMap_Access is
      categoryHashMap : HashMap_Access;
   begin
        categoryHashMap := StdUtil_Package.getInstance.createHashMap;
        categoryHashMap.put (CategoryData_Package.getInstance.NAME, RootStoreCategoryProperties'Class (This).getValue);
        return categoryHashMap;
   end toHashMap;

   function toVector (This : in out RootStoreCategoryProperties) return BasicArrayList_Access is
      categoryVector : BasicArrayList_Access;
   begin
        categoryVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        categoryVector.add (RootStoreCategoryProperties'Class (This).getValue);
        return categoryVector;
   end toVector;

   --  throws Exception
   function toValidationInfoDoc (This : in out RootStoreCategoryProperties) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out RootStoreCategoryProperties; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out RootStoreCategoryProperties) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   procedure log (This : in out RootStoreCategoryProperties) is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("filePath = ")).append (This.fileAbPath.toString).append (To_Unbounded_String ("" & ASCII.LF & "path = ")).append (This.abPath.toString).append (To_Unbounded_String ("" & ASCII.LF & "category = ")).append (This.category).toString, RootStoreCategoryProperties_Access'(This'Unchecked_Access), To_Unbounded_String ("log()"));
        end if;
   end log;

   procedure getPath (This : in out RootStoreCategoryProperties; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) is
      Java_Result : constant AbPath_Access := RootStoreCategoryProperties'Class (This).getPath (categoryHierarchyInterface_Param => categoryHierarchyInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPath;

   procedure toValidationInfoNode (This : in out RootStoreCategoryProperties; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := RootStoreCategoryProperties'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package;


