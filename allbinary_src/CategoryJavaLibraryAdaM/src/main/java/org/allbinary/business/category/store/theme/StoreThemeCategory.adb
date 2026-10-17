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


   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access; level : Integer) is
   begin
        Category_Package.Initialize (This, categoryPropertiesFactoryInterface, level);
        Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.themeVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access; level : Integer) return StoreThemeCategory_Access is
      This : constant StoreThemeCategory_Access := new StoreThemeCategory;
   begin
      Initialize (This.all, transformInfoInterface, categoryPropertiesFactoryInterface, level);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface : TransformInfoInterface_Access; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access) is
   begin
        Category_Package.Initialize (This, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface);
        Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.themeVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access) return StoreThemeCategory_Access is
      This : constant StoreThemeCategory_Access := new StoreThemeCategory;
   begin
      Initialize (This.all, transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface : TransformInfoInterface_Access; node : Node_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access; level : Integer) is
   begin
        Category_Package.Initialize (This, categoryPropertiesFactoryInterface, level);
        Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.themeVector := BasicArrayListD_Package.Create;
        This.addThemes (node);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; node : Node_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access; level : Integer) return StoreThemeCategory_Access is
      This : constant StoreThemeCategory_Access := new StoreThemeCategory;
   begin
      Initialize (This.all, transformInfoInterface, node, categoryPropertiesFactoryInterface, level);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface : TransformInfoInterface_Access; node : Node_Access; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access) is
   begin
        Category_Package.Initialize (This, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface);
        Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.themeVector := BasicArrayListD_Package.Create;
        This.addThemes (node);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; node : Node_Access; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access) return StoreThemeCategory_Access is
      This : constant StoreThemeCategory_Access := new StoreThemeCategory;
   begin
      Initialize (This.all, transformInfoInterface, node, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface);
      return This;
   end Create;

   function getTransformInfoInterface (This : in out StoreThemeCategory) return TransformInfoInterface_Access is
   begin
        return This.transformInfoInterface;
   end getTransformInfoInterface;

   --  throws Exception
   procedure addThemes (This : in out StoreThemeCategory; node : Node_Access) is
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
                This.themeVector.add (ThemeValidation_Package.Create (This'Unchecked_Access, themeNode));
            end if;
        end loop;
   end addThemes;

   procedure addTheme (This : in out StoreThemeCategory; themeValidation : ThemeValidation_Access) is
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

   procedure getTransformInfoInterface (This : in out StoreThemeCategory) is
      Java_Result : constant TransformInfoInterface_Access := StoreThemeCategory'Class (This).getTransformInfoInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoInterface;

   procedure getThemes (This : in out StoreThemeCategory) is
      Java_Result : constant BasicArrayList_Access := StoreThemeCategory'Class (This).getThemes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getThemes;

   procedure isValid (This : in out StoreThemeCategory) is
      Java_Result : constant Boolean := StoreThemeCategory'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure toHashMap (This : in out StoreThemeCategory) is
      Java_Result : constant HashMap_Access := StoreThemeCategory'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toVector (This : in out StoreThemeCategory) is
      Java_Result : constant BasicArrayList_Access := StoreThemeCategory'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

end org.allbinary.business.category.store.theme.StoreThemeCategory_Package;


