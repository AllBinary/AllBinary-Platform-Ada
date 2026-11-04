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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.category.Category_Package; use org.allbinary.business.category.Category_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.visual.theme.ThemeData_Package; use org.allbinary.logic.visual.theme.ThemeData_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package; use org.allbinary.logic.visual.theme.ThemeValidation_Package;
with org.allbinary.logic.visual.theme.ThemesData_Package; use org.allbinary.logic.visual.theme.ThemesData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
with org.allbinary.logic.visual.theme.ThemeInterface_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package;

package body org.allbinary.business.category.store.theme.StoreThemeCategory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ThemeData_Package renames Standard.org.allbinary.logic.visual.theme.ThemeData_Package;
   package ThemesData_Package renames Standard.org.allbinary.logic.visual.theme.ThemesData_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype CategoryInterface_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access;
   function "=" (Left, Right : CategoryInterface_Access) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array;
   function "=" (Left, Right : CategoryInterface_Access_Array) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryPropertiesFactoryInterface_Access is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   subtype CategoryPropertiesFactoryInterface_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   subtype CategoryPropertiesFactoryInterface_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   subtype CategoryPropertiesFactoryInterface_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   subtype CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   subtype ThemeValidation_Access is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access;
   function "=" (Left, Right : ThemeValidation_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeValidation_Package_References."=";
   subtype ThemeValidation_Access_Array is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array;
   function "=" (Left, Right : ThemeValidation_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemeValidation_Package_References."=";
   subtype ThemeValidation_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array_Access;
   function "=" (Left, Right : ThemeValidation_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeValidation_Package_References."=";
   subtype ThemeValidation_Access_Array_Access_Array is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array_Access_Array;
   function "=" (Left, Right : ThemeValidation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemeValidation_Package_References."=";
   subtype ThemeValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThemeValidation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemeValidation_Package_References."=";
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   function "=" (Left, Right : TransformInfoInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
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
        This.themeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
        This.themeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
        This.themeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
        This.themeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
                This.themeVector.add (Java_Object_Access (ThemeValidation_Package.Create (StoreThemeCategory_Access'(This'Unchecked_Access), themeNode)));
            end if;
        end loop;
   end addThemes;

   procedure addTheme (This : in out StoreThemeCategory; themeValidation_Param : access ThemeValidation_Package.ThemeValidation'Class) is
      themeValidation : constant ThemeValidation_Access := ThemeValidation_Access (themeValidation_Param);
   begin
        This.themeVector.add (Java_Object_Access (themeValidation));
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


