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


package body org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   function getKey (This : in out RootCategoryPropertiesAbstract) return Java_Object_Access is
   begin
        return Java_Object_Access (This.getValue);
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
   procedure setRootFilePath (This : in out RootCategoryPropertiesAbstract; value : AbPath_Access) is
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
   end getRootFilePath;

   --  throws Exception
   function isRealRoot (This : in out RootCategoryPropertiesAbstract) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No A Real Root")));
   end isRealRoot;

   --  throws Exception
   function isRoot (This : in out RootCategoryPropertiesAbstract) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Root but not implemented")));
   end isRoot;

   --  throws Exception
   function getWebAppPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface : CategoryHierarchyInterface_Access) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Root")));
   end getWebAppPath;

   function getPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface : CategoryHierarchyInterface_Access) return AbPath_Access is
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
        categoryHashMap.put (CategoryData_Package.getInstance.NAME, This.category);
        return categoryHashMap;
   end toHashMap;

   function toVector (This : in out RootCategoryPropertiesAbstract) return BasicArrayList_Access is
      categoryVector : BasicArrayList_Access;
   begin
        categoryVector := BasicArrayListD_Package.Create;
        categoryVector.add (This.category);
        return categoryVector;
   end toVector;

   --  throws Exception
   function toValidationInfoDoc (This : in out RootCategoryPropertiesAbstract) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out RootCategoryPropertiesAbstract; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out RootCategoryPropertiesAbstract) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   procedure getKey (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant Java_Object_Access := RootCategoryPropertiesAbstract'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

   procedure getValue (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant Unbounded_String := RootCategoryPropertiesAbstract'Class (This).getValue;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getValue;

   procedure getRootFilePath (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant AbPath_Access := RootCategoryPropertiesAbstract'Class (This).getRootFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootFilePath;

   procedure isRealRoot (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant Boolean := RootCategoryPropertiesAbstract'Class (This).isRealRoot;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRealRoot;

   procedure isRoot (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant Boolean := RootCategoryPropertiesAbstract'Class (This).isRoot;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRoot;

   procedure getWebAppPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface : CategoryHierarchyInterface_Access) is
      Java_Result : constant Unbounded_String := RootCategoryPropertiesAbstract'Class (This).getWebAppPath (categoryHierarchyInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWebAppPath;

   procedure getPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface : CategoryHierarchyInterface_Access) is
      Java_Result : constant AbPath_Access := RootCategoryPropertiesAbstract'Class (This).getPath (categoryHierarchyInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPath;

   procedure getFileName (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant Unbounded_String := RootCategoryPropertiesAbstract'Class (This).getFileName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileName;

   procedure isValid (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant Boolean := RootCategoryPropertiesAbstract'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure toHashMap (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant HashMap_Access := RootCategoryPropertiesAbstract'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toVector (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant BasicArrayList_Access := RootCategoryPropertiesAbstract'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

   procedure toValidationInfoDoc (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant Document_Access := RootCategoryPropertiesAbstract'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out RootCategoryPropertiesAbstract; document : Document_Access) is
      Java_Result : constant Node_Access := RootCategoryPropertiesAbstract'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure validationInfo (This : in out RootCategoryPropertiesAbstract) is
      Java_Result : constant Unbounded_String := RootCategoryPropertiesAbstract'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

end org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package;


