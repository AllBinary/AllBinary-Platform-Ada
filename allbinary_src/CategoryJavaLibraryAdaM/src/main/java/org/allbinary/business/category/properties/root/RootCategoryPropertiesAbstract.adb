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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;

package body org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   procedure Initialize_Fields (This : in out RootCategoryPropertiesAbstract'Class) is
   begin
      null;
      This.category := CategoryData_Package.getInstance.ROOTCATEGORY;
      This.fileName := This.category & Java_Image (AbPathData_Package.getInstance.EXTENSION_SEP) & Java_Image (CategoryData_Package.getInstance.UNCRYPTED_EXTENSION);
   end Initialize_Fields;


   procedure Initialize (This : in out RootCategoryPropertiesAbstract'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RootCategoryPropertiesAbstract_Access is
      This : constant RootCategoryPropertiesAbstract_Access := new RootCategoryPropertiesAbstract;
   begin
      RootCategoryPropertiesAbstract_Package.Initialize (This.all);
      return This;
   end Create;

   function getKey (This : in out RootCategoryPropertiesAbstract) return Java_Object_Access is
   begin
        return Java_Object_Access (RootCategoryPropertiesAbstract'Class (This).getValue);
   end getKey;

   function getValue (This : in out RootCategoryPropertiesAbstract) return Unbounded_String is
   begin
        return This.category;
   end getValue;

   --  throws Exception
   procedure setValue (This : in out RootCategoryPropertiesAbstract; value : Unbounded_String) is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Value Allowed")));
   end setValue;

   --  throws Exception
   procedure setRootFilePath (This : in out RootCategoryPropertiesAbstract; value_Param : access AbPath_Package.AbPath'Class) is
      value : constant AbPath_Access := AbPath_Access (value_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setRootFilePath;

   --  throws Exception
   procedure setRootFilePath (This : in out RootCategoryPropertiesAbstract; value : Unbounded_String) is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Value Allowed")));
   end setRootFilePath;

   --  throws Exception
   function getRootFilePath (This : in out RootCategoryPropertiesAbstract) return AbPath_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Value Allowed")));
        return null;
   end getRootFilePath;

   --  throws Exception
   function isRealRoot (This : in out RootCategoryPropertiesAbstract) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No A Real Root")));
        return False;
   end isRealRoot;

   --  throws Exception
   function isRoot (This : in out RootCategoryPropertiesAbstract) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Root but not implemented")));
        return False;
   end isRoot;

   --  throws Exception
   function getWebAppPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) return Unbounded_String is
      categoryHierarchyInterface : constant CategoryHierarchyInterface_Access := CategoryHierarchyInterface_Access (categoryHierarchyInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Root")));
        return Null_Unbounded_String;
   end getWebAppPath;

   function getPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) return AbPath_Access is
      categoryHierarchyInterface : constant CategoryHierarchyInterface_Access := CategoryHierarchyInterface_Access (categoryHierarchyInterface_Param);
   begin
        return AbPath_Package.createAbPath;
   end getPath;

   function getFileName (This : in out RootCategoryPropertiesAbstract) return Unbounded_String is
   begin
        return This.fileName;
   end getFileName;

   function isValid (This : in out RootCategoryPropertiesAbstract) return Boolean is
   begin
        return True;
   end isValid;

   function toHashMap (This : in out RootCategoryPropertiesAbstract) return HashMap_Access is
      categoryHashMap : HashMap_Access;
   begin
        categoryHashMap := StdUtil_Package.getInstance.createHashMap;
        categoryHashMap.put (CategoryData_Package.getInstance.NAME, Java_Box (This.category));
        return categoryHashMap;
   end toHashMap;

   function toVector (This : in out RootCategoryPropertiesAbstract) return BasicArrayList_Access is
      categoryVector : BasicArrayList_Access;
   begin
        categoryVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        categoryVector.add (This.category);
        return categoryVector;
   end toVector;

   --  throws Exception
   function toValidationInfoDoc (This : in out RootCategoryPropertiesAbstract) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out RootCategoryPropertiesAbstract; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out RootCategoryPropertiesAbstract) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   procedure getWebAppPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) is
      Java_Result : constant Unbounded_String := RootCategoryPropertiesAbstract'Class (This).getWebAppPath (categoryHierarchyInterface_Param => categoryHierarchyInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWebAppPath;

   procedure getPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) is
      Java_Result : constant AbPath_Access := RootCategoryPropertiesAbstract'Class (This).getPath (categoryHierarchyInterface_Param => categoryHierarchyInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPath;

   procedure toValidationInfoNode (This : in out RootCategoryPropertiesAbstract; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := RootCategoryPropertiesAbstract'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package;


