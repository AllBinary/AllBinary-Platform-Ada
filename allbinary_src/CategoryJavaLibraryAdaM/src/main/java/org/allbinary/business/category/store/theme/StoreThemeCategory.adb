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


package body org.allbinary.business.category.store.theme.StoreThemeCategory_Package is

   procedure Initialize_Fields (This : in out StoreThemeCategory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      categoryPropertiesFactoryInterface : constant CategoryPropertiesFactoryInterface_Access := CategoryPropertiesFactoryInterface_Access (categoryPropertiesFactoryInterface_Param);
   begin
        Category_Package.Initialize (This, categoryPropertiesFactoryInterface, level);
        Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.themeVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) return StoreThemeCategory_Access is
      This : constant StoreThemeCategory_Access := new StoreThemeCategory;
   begin
      StoreThemeCategory_Package.Initialize (This.all, transformInfoInterface_Param, categoryPropertiesFactoryInterface_Param, level);
      return This;
   end Create;

   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      categoryPropertiesFactoryInterface : constant CategoryPropertiesFactoryInterface_Access := CategoryPropertiesFactoryInterface_Access (categoryPropertiesFactoryInterface_Param);
   begin
        Category_Package.Initialize (This, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface);
        Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.themeVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return StoreThemeCategory_Access is
      This : constant StoreThemeCategory_Access := new StoreThemeCategory;
   begin
      StoreThemeCategory_Package.Initialize (This.all, transformInfoInterface_Param, rootCategoryInterface_Param, parentCategoryInterface_Param, categoryPropertiesFactoryInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      node : constant Node_Access := Node_Access (node_Param);
      categoryPropertiesFactoryInterface : constant CategoryPropertiesFactoryInterface_Access := CategoryPropertiesFactoryInterface_Access (categoryPropertiesFactoryInterface_Param);
   begin
        Category_Package.Initialize (This, categoryPropertiesFactoryInterface, level);
        Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.themeVector := BasicArrayListD_Package.Create;
        StoreThemeCategory'Class (This).addThemes (node);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) return StoreThemeCategory_Access is
      This : constant StoreThemeCategory_Access := new StoreThemeCategory;
   begin
      StoreThemeCategory_Package.Initialize (This.all, transformInfoInterface_Param, node_Param, categoryPropertiesFactoryInterface_Param, level);
      return This;
   end Create;

   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      node : constant Node_Access := Node_Access (node_Param);
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      categoryPropertiesFactoryInterface : constant CategoryPropertiesFactoryInterface_Access := CategoryPropertiesFactoryInterface_Access (categoryPropertiesFactoryInterface_Param);
   begin
        Category_Package.Initialize (This, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface);
        Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.themeVector := BasicArrayListD_Package.Create;
        StoreThemeCategory'Class (This).addThemes (node);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return StoreThemeCategory_Access is
      This : constant StoreThemeCategory_Access := new StoreThemeCategory;
   begin
      StoreThemeCategory_Package.Initialize (This.all, transformInfoInterface_Param, node_Param, rootCategoryInterface_Param, parentCategoryInterface_Param, categoryPropertiesFactoryInterface_Param);
      return This;
   end Create;

   function getTransformInfoInterface (This : in out StoreThemeCategory) return TransformInfoInterface_Access is
   begin
        return This.transformInfoInterface;
   end getTransformInfoInterface;

   --  throws Exception
   procedure addThemes (This : in out StoreThemeCategory; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      themesNode : Node_Access;
      nodeList : NodeList_Access;
      themeNode : Node_Access;
      index : Integer;
   begin
        themesNode := DomSearchHelper_Package.getNode (ThemesData_Package.getInstance.NAME, node.getChildNodes);
        nodeList := themesNode.getChildNodes;
        for index in 0 .. (nodeList.getLength) - 1 loop
            themeNode := nodeList.item (index);
            if (themeNode.getNodeName.compareTo (ThemeData_Package.getInstance.NAME)) = (0) then
                This.themeVector.add (ThemeValidation_Package.Create (StoreThemeCategory_Access'(This'Unchecked_Access), themeNode));
            end if;
        end loop;
   end addThemes;

   procedure addTheme (This : in out StoreThemeCategory; themeValidation_Param : access ThemeValidation_Package.ThemeValidation'Class) is
      themeValidation : constant ThemeValidation_Access := ThemeValidation_Access (themeValidation_Param);
   begin
        This.themeVector.add (themeValidation);
   end addTheme;

   function getThemes (This : in out StoreThemeCategory) return BasicArrayList_Access is
   begin
        return This.themeVector;
   end getThemes;

   --  throws Exception
   function isValid (This : in out StoreThemeCategory) return Boolean is
   begin
        if not (Category (This).isValid.booleanValue) then
            return False;
        end if;
        return True;
   end isValid;

   --  throws Exception
   function toHashMap (This : in out StoreThemeCategory) return HashMap_Access is
      categoryHashMap : HashMap_Access;
   begin
        categoryHashMap := Category (This).toHashMap;
        categoryHashMap.put (ThemesData_Package.getInstance.NAME, This.themeVector);
        return categoryHashMap;
   end toHashMap;

   --  throws Exception
   function toVector (This : in out StoreThemeCategory) return BasicArrayList_Access is
      categoryVector : BasicArrayList_Access;
   begin
        categoryVector := Category (This).toVector;
        return categoryVector;
   end toVector;

end org.allbinary.business.category.store.theme.StoreThemeCategory_Package;


