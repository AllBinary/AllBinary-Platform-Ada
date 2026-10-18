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


with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.business.category.hierarchy.CategoryHierarchy_Package is

   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out CategoryHierarchy'Class) is
   begin
      null;
      This.rootCategoryInterface := null;
      This.parentCategoryInterface := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryHierarchy'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.level := 0;
        CategoryHierarchy'Class (This).setRoot (rootCategoryInterface);
        CategoryHierarchy'Class (This).setParent (parentCategoryInterface);
   end Initialize;

   function Create (rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryHierarchy_Access is
      This : constant CategoryHierarchy_Access := new CategoryHierarchy;
   begin
      CategoryHierarchy_Package.Initialize (This.all, rootCategoryInterface_Param, parentCategoryInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out CategoryHierarchy'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; level : Integer) is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.level := level;
        CategoryHierarchy'Class (This).setRoot (rootCategoryInterface);
        CategoryHierarchy'Class (This).setParent (parentCategoryInterface);
   end Initialize;

   function Create (rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; level : Integer) return CategoryHierarchy_Access is
      This : constant CategoryHierarchy_Access := new CategoryHierarchy;
   begin
      CategoryHierarchy_Package.Initialize (This.all, rootCategoryInterface_Param, parentCategoryInterface_Param, level);
      return This;
   end Create;

   procedure Initialize (This : in out CategoryHierarchy'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      categoryPropertiesHashMap : constant HashMap_Access := HashMap_Access (categoryPropertiesHashMap_Param);
      levelString : Unbounded_String;
   begin
      Initialize_Fields (This);
        levelString := StringUtil_Package.getInstance.getNonNull (Java_Unbox (categoryPropertiesHashMap.get (CategoryData_Package.getInstance.LEVEL)));
        This.level := To_Unbounded_String (Java_Image (levelString)).intValue;
        CategoryHierarchy'Class (This).setRoot (rootCategoryInterface);
        CategoryHierarchy'Class (This).setParent (parentCategoryInterface);
   end Initialize;

   function Create (rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return CategoryHierarchy_Access is
      This : constant CategoryHierarchy_Access := new CategoryHierarchy;
   begin
      CategoryHierarchy_Package.Initialize (This.all, rootCategoryInterface_Param, parentCategoryInterface_Param, categoryPropertiesHashMap_Param);
      return This;
   end Create;

   function getLevel (This : in out CategoryHierarchy) return Integer is
   begin
        return This.level;
   end getLevel;

   function getLevelString (This : in out CategoryHierarchy) return Unbounded_String is
   begin
        return To_Unbounded_String (Java_Image (This.level));
   end getLevelString;

   procedure setLevel (This : in out CategoryHierarchy; level : Integer) is
   begin
        This.level := level;
   end setLevel;

   procedure setParent (This : in out CategoryHierarchy; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
   begin
        This.parentCategoryInterface := categoryInterface;
   end setParent;

   procedure setRoot (This : in out CategoryHierarchy; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
   begin
        This.rootCategoryInterface := categoryInterface;
   end setRoot;

   function getRoot (This : in out CategoryHierarchy) return CategoryInterface_Access is
   begin
        return This.rootCategoryInterface;
   end getRoot;

   function getParent (This : in out CategoryHierarchy) return CategoryInterface_Access is
   begin
        return This.parentCategoryInterface;
   end getParent;

end org.allbinary.business.category.hierarchy.CategoryHierarchy_Package;


