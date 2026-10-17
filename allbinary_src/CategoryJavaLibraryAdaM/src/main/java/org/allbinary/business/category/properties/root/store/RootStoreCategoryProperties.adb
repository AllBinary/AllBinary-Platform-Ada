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


package body org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package is

   procedure Initialize_Fields (This : in out RootStoreCategoryProperties'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.pathData := AbPathData_Package.getInstance;
      This.fileAbPath := null;
      
      
      
      This.webAppAbPath := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.abPath := AbPath_Package.createAbPath;
        This.category := CategoryData_Package.getInstance.ROOTCATEGORY;
        This.isRealRoot := True;
        This.initPath;
        This.log;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return RootStoreCategoryProperties_Access is
      This : constant RootStoreCategoryProperties_Access := new RootStoreCategoryProperties;
   begin
      RootStoreCategoryProperties_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface : TransformInfoInterface_Access; categoryAbPath : AbPath_Access) is
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.abPath := categoryAbPath;
        This.category := This.pathData.getNameFromPath (categoryAbPath.toString);
        if StringValidationUtil_Package.getInstance.isEmpty (This.category) then
            This.isRealRoot := True;
            This.category := CategoryData_Package.getInstance.ROOTCATEGORY;
        end if;
        This.initPath;
        This.log;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; categoryAbPath : AbPath_Access) return RootStoreCategoryProperties_Access is
      This : constant RootStoreCategoryProperties_Access := new RootStoreCategoryProperties;
   begin
      RootStoreCategoryProperties_Package.Initialize (This.all, transformInfoInterface, categoryAbPath);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface : TransformInfoInterface_Access; node : Node_Access) is
      categoryPath : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        categoryPath := CategoryUtil_Package.getNameFromNode (node);
        This.abPath := AbPath_Package.Create (categoryPath, StringUtil_Package.getInstance.EMPTY_STRING);
        This.category := This.pathData.getNameFromPath (categoryPath);
        if StringValidationUtil_Package.getInstance.isEmpty (This.category) then
            This.isRealRoot := True;
            This.category := CategoryData_Package.getInstance.ROOTCATEGORY;
        end if;
        This.initPath;
        This.log;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; node : Node_Access) return RootStoreCategoryProperties_Access is
      This : constant RootStoreCategoryProperties_Access := new RootStoreCategoryProperties;
   begin
      RootStoreCategoryProperties_Package.Initialize (This.all, transformInfoInterface, node);
      return This;
   end Create;

   procedure Initialize (This : in out RootStoreCategoryProperties'Class; transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesHashMap : HashMap_Access) is
      categoryPath : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        categoryPath := Java_New_String (Unbounded_String (categoryPropertiesHashMap.get (CategoryData_Package.getInstance.NAME)));
        This.abPath := AbPath_Package.Create (categoryPath, StringUtil_Package.getInstance.EMPTY_STRING);
        This.category := This.pathData.getNameFromPath (categoryPath);
        if StringValidationUtil_Package.getInstance.isEmpty (This.category) then
            This.isRealRoot := True;
            This.category := CategoryData_Package.getInstance.ROOTCATEGORY;
        end if;
        This.initPath;
        This.log;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesHashMap : HashMap_Access) return RootStoreCategoryProperties_Access is
      This : constant RootStoreCategoryProperties_Access := new RootStoreCategoryProperties;
   begin
      RootStoreCategoryProperties_Package.Initialize (This.all, transformInfoInterface, categoryPropertiesHashMap);
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
        storeFrontInterface := StoreFrontFactory_Package.getInstance (transformInfoHttpStoreInterface.getStoreName);
        postPath := (storeFrontInterface.getCurrentHostNamePath) + (storeFrontInterface.getCategoryPath);
        httpServletRequest := HttpServletRequest_Access (transformInfoHttpStoreInterface.getPageContext.getRequest);
        This.webAppAbPath := AbPath_Package.Create (Java_Image (httpServletRequest.getContextPath) & postPath, StringUtil_Package.getInstance.EMPTY_STRING);
        This.setRootFilePath (AbPath_Package.Create (Java_Image (URLGLOBALS.getMainPath) & postPath, StringUtil_Package.getInstance.EMPTY_STRING));
   end initPath;

   function isRealRoot (This : in out RootStoreCategoryProperties) return Boolean is
   begin
        return This.isRealRoot;
   end isRealRoot;

   function isRoot (This : in out RootStoreCategoryProperties) return Boolean is
   begin
        return True;
   end isRoot;

   function getKey (This : in out RootStoreCategoryProperties) return Java_Object_Access is
   begin
        return Java_Object_Access (This.getValue);
   end getKey;

   procedure setPath (This : in out RootStoreCategoryProperties; path : AbPath_Access) is
   begin
        This.abPath := path;
   end setPath;

   procedure setRootFilePath (This : in out RootStoreCategoryProperties; value : AbPath_Access) is
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

   function getPath (This : in out RootStoreCategoryProperties; categoryHierarchyInterface : CategoryHierarchyInterface_Access) return AbPath_Access is
   begin
        return This.abPath;
   end getPath;

   function getFileName (This : in out RootStoreCategoryProperties) return Unbounded_String is
   begin
        return ((This.getValue) + (AbPathData_Package.getInstance.EXTENSION_SEP)) + (CategoryData_Package.getInstance.UNCRYPTED_EXTENSION);
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
        categoryHashMap.put (CategoryData_Package.getInstance.NAME, This.getValue);
        return categoryHashMap;
   end toHashMap;

   function toVector (This : in out RootStoreCategoryProperties) return BasicArrayList_Access is
      categoryVector : BasicArrayList_Access;
   begin
        categoryVector := BasicArrayListD_Package.Create;
        categoryVector.add (This.getValue);
        return categoryVector;
   end toVector;

   --  throws Exception
   function toValidationInfoDoc (This : in out RootStoreCategoryProperties) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out RootStoreCategoryProperties; document : Document_Access) return Node_Access is
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
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("filePath = ")).append (This.fileAbPath.toString).append (To_Unbounded_String ("" & ASCII.LF & "path = ")).append (This.abPath.toString).append (To_Unbounded_String ("" & ASCII.LF & "category = ")).append (This.category).toString, This'Unchecked_Access, To_Unbounded_String ("log()"));
        end if;
   end log;

   procedure getPath (This : in out RootStoreCategoryProperties; categoryHierarchyInterface : CategoryHierarchyInterface_Access) is
      Java_Result : constant AbPath_Access := RootStoreCategoryProperties'Class (This).getPath (categoryHierarchyInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPath;

   procedure toValidationInfoNode (This : in out RootStoreCategoryProperties; document : Document_Access) is
      Java_Result : constant Node_Access := RootStoreCategoryProperties'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties_Package;


