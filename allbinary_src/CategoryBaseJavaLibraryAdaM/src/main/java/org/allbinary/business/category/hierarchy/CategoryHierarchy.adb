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


package body org.allbinary.business.category.hierarchy.CategoryHierarchy_Package is

   procedure Initialize_Fields (This : in out CategoryHierarchy'Class) is
   begin
      null;
      This.rootCategoryInterface := null;
      This.parentCategoryInterface := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryHierarchy'Class; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access) is
   begin
      Initialize_Fields (This);
        This.level := 0;
        This.setRoot (rootCategoryInterface);
        This.setParent (parentCategoryInterface);
   end Initialize;

   function Create (rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access) return CategoryHierarchy_Access is
      This : constant CategoryHierarchy_Access := new CategoryHierarchy;
   begin
      CategoryHierarchy_Package.Initialize (This.all, rootCategoryInterface, parentCategoryInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CategoryHierarchy'Class; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; level : Integer) is
   begin
      Initialize_Fields (This);
        This.level := level;
        This.setRoot (rootCategoryInterface);
        This.setParent (parentCategoryInterface);
   end Initialize;

   function Create (rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; level : Integer) return CategoryHierarchy_Access is
      This : constant CategoryHierarchy_Access := new CategoryHierarchy;
   begin
      CategoryHierarchy_Package.Initialize (This.all, rootCategoryInterface, parentCategoryInterface, level);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CategoryHierarchy'Class; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesHashMap : HashMap_Access) is
      levelString : Unbounded_String;
   begin
      Initialize_Fields (This);
        levelString := StringUtil_Package.getInstance.getNonNull (Unbounded_String (categoryPropertiesHashMap.get (CategoryData_Package.getInstance.LEVEL)));
        This.level := To_Unbounded_String (Java_Image (levelString)).intValue;
        This.setRoot (rootCategoryInterface);
        This.setParent (parentCategoryInterface);
   end Initialize;

   function Create (rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesHashMap : HashMap_Access) return CategoryHierarchy_Access is
      This : constant CategoryHierarchy_Access := new CategoryHierarchy;
   begin
      CategoryHierarchy_Package.Initialize (This.all, rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap);
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

   procedure setParent (This : in out CategoryHierarchy; categoryInterface : CategoryInterface_Access) is
   begin
        This.parentCategoryInterface := categoryInterface;
   end setParent;

   procedure setRoot (This : in out CategoryHierarchy; categoryInterface : CategoryInterface_Access) is
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


