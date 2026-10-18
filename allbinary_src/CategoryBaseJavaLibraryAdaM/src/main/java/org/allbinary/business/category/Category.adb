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
with org.allbinary.business.category.hierarchy.CategoryHierarchy_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchy_Package;
with org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.business.category.Category_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryHierarchy_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchy_Package;
   package RootCategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out Category'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.childCategoryVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.typeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.PROPERTIES := 1;
      This.CATEGORY_Var := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out Category'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) is
      categoryPropertiesFactoryInterface : constant CategoryPropertiesFactoryInterface_Access := CategoryPropertiesFactoryInterface_Access (categoryPropertiesFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY_Var) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, Category_Access'(This'Unchecked_Access), To_Unbounded_String ("Category(CategoryPropertiesFactoryInterface)"));
        end if;
        This.categoryPropertiesInterface := categoryPropertiesFactoryInterface.getInstance;
        This.categoryHierarchyInterface := CategoryHierarchyInterface_Access (CategoryHierarchy_Package.Create (Category_Access'(This'Unchecked_Access), Category_Access'(This'Unchecked_Access)));
        Category'Class (This).log;
   end Initialize;

   function Create (categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return Category_Access is
      This : constant Category_Access := new Category;
   begin
      Category_Package.Initialize (This.all, categoryPropertiesFactoryInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out Category'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) is
      categoryPropertiesFactoryInterface : constant CategoryPropertiesFactoryInterface_Access := CategoryPropertiesFactoryInterface_Access (categoryPropertiesFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := categoryPropertiesFactoryInterface.getInstance;
        This.categoryHierarchyInterface := CategoryHierarchyInterface_Access (CategoryHierarchy_Package.Create (Category_Access'(This'Unchecked_Access), Category_Access'(This'Unchecked_Access), level));
        Category'Class (This).log;
   end Initialize;

   function Create (categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) return Category_Access is
      This : constant Category_Access := new Category;
   begin
      Category_Package.Initialize (This.all, categoryPropertiesFactoryInterface_Param, level);
      return This;
   end Create;

   procedure Initialize (This : in out Category'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) is
      rootCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (rootCategoryInterface_Param);
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      categoryPropertiesFactoryInterface : constant CategoryPropertiesFactoryInterface_Access := CategoryPropertiesFactoryInterface_Access (categoryPropertiesFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (categoryPropertiesFactoryInterface.getInstance);
        This.categoryHierarchyInterface := CategoryHierarchyInterface_Access (CategoryHierarchy_Package.Create (rootCategoryInterface, parentCategoryInterface));
        Category'Class (This).log;
   end Initialize;

   function Create (rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return Category_Access is
      This : constant Category_Access := new Category;
   begin
      Category_Package.Initialize (This.all, rootCategoryInterface_Param, parentCategoryInterface_Param, categoryPropertiesFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getKey (This : in out Category) return Java_Object_Access is
   begin
        return This.categoryPropertiesInterface.getKey;
   end getKey;

   --  throws Exception
   function getRootFilePath (This : in out Category) return AbPath_Access is
      rootAbPath : AbPath_Access;
      categoryInterface : CategoryInterface_Access;
      rootCategoryPropertiesInterface : RootCategoryPropertiesInterface_Access;
   begin
        rootAbPath := AbPath_Package.Create (NOT_ROOT, StringUtil_Package.getInstance.EMPTY_STRING);
        categoryInterface := This.categoryHierarchyInterface.getRoot;
        if categoryInterface.getProperties.isRoot then
            rootCategoryPropertiesInterface := RootCategoryPropertiesInterface_Access (categoryInterface.getProperties);
            rootAbPath := rootCategoryPropertiesInterface.getRootFilePath;
        end if;
        return rootAbPath;
   end getRootFilePath;

   --  throws Exception
   function getFilePath (This : in out Category) return AbPath_Access is
   begin
        return AbPath_Package.Create (Category'Class (This).getRootFilePath.toString & Category'Class (This).getProperties.getPath (Category'Class (This).getHierarchy).toString, Category'Class (This).getProperties.getFileName);
   end getFilePath;

   --  throws Exception
   function getWebAppPath (This : in out Category) return AbPath_Access is
      categoryInterface : CategoryInterface_Access;
   begin
        categoryInterface := This.categoryHierarchyInterface.getRoot;
        return categoryInterface.getProperties.getWebAppPath;
   end getWebAppPath;

   --  throws Exception
   function getPath (This : in out Category) return AbPath_Access is
   begin
        return This.categoryPropertiesInterface.getPath (This.categoryHierarchyInterface);
   end getPath;

   function addChildProperty (This : in out Category; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) return Boolean is
      categoryPropertiesInterface : constant CategoryPropertiesInterface_Access := CategoryPropertiesInterface_Access (categoryPropertiesInterface_Param);
   begin
        This.typeVector.add (This.PROPERTIES);
        return This.childCategoryVector.add (Java_Object_Access (categoryPropertiesInterface));
   end addChildProperty;

   function addChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
      childCategoryHierarchyInterface : CategoryHierarchyInterface_Access;
   begin
        Category'Class (This).removeDuplicateChild (categoryInterface);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY_Var) then
            This.logUtil.putF (To_Unbounded_String ("adding"), Category_Access'(This'Unchecked_Access), To_Unbounded_String ("addChild"));
        end if;
        childCategoryHierarchyInterface := categoryInterface.getHierarchy;
        childCategoryHierarchyInterface.setParent (Category_Access'(This'Unchecked_Access));
        childCategoryHierarchyInterface.setRoot (Category'Class (This).getHierarchy.getRoot);
        categoryInterface.setHierarchy (childCategoryHierarchyInterface);
        This.typeVector.add (This.CATEGORY_Var);
        return This.childCategoryVector.add (Java_Object_Access (categoryInterface));
   end addChild;

   function getChildNodes (This : in out Category) return BasicArrayList_Access is
   begin
        return This.childCategoryVector;
   end getChildNodes;

   function removeChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
      removalVector : BasicArrayList_Access;
      bool_return : Boolean;
      size : Integer;
      anyType : Java_Object_Access;
      currentCategoryInterface : CategoryInterface_Access;
      index : Integer;
   begin
        removalVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        bool_return := False;
        size := This.childCategoryVector.size;
        for index in 0 .. (size) - 1 loop
            if (This.CATEGORY_Var) = (This.typeVector.get (index)) then
                anyType := This.childCategoryVector.get (index);
                currentCategoryInterface := CategoryInterface_Access (anyType);
                if (currentCategoryInterface.getProperties.getValue.compareTo (categoryInterface.getProperties.getValue)) = (0) then
                    removalVector.add (Java_Object_Access (currentCategoryInterface));
                    bool_return := True;
                end if;
            end if;
        end loop;
        Category'Class (This).removal (removalVector);
        return bool_return;
   end removeChild;

   procedure removal (This : in out Category; removalVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      removalVector : constant BasicArrayList_Access := BasicArrayList_Access (removalVector_Param);
      removalSize : Integer;
      anyType : Java_Object_Access;
      objectIndex : Integer;
      index : Integer;
   begin
        removalSize := removalVector.size;
        for index in 0 .. (removalSize) - 1 loop
            anyType := removalVector.get (index);
            objectIndex := This.childCategoryVector.indexOf (anyType);
            This.typeVector.remove (objectIndex);
            This.childCategoryVector.remove (objectIndex);
        end loop;
   end removal;

   function removeDuplicateChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
      removalVector : BasicArrayList_Access;
      bool_return : Boolean;
      size : Integer;
      anyType : Java_Object_Access;
      existingCategoryInterface : CategoryInterface_Access;
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
      index : Integer;
   begin
        removalVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        bool_return := False;
        size := This.childCategoryVector.size;
        for index in 0 .. (size) - 1 loop
            anyType := This.childCategoryVector.get (index);
            if (This.PROPERTIES) = (This.typeVector.get (index)) then
                categoryPropertiesInterface := CategoryPropertiesInterface_Access (anyType);
                if (categoryInterface.getProperties.getValue.compareTo (categoryPropertiesInterface.getValue)) = (0) then
                    removalVector.add (Java_Object_Access (categoryPropertiesInterface));
                    bool_return := True;
                    exit;
                end if;
            elsif (This.CATEGORY_Var) = (This.typeVector.get (index)) then
                existingCategoryInterface := CategoryInterface_Access (anyType);
                categoryPropertiesInterface := existingCategoryInterface.getProperties;
                if (categoryInterface.getProperties.getValue.compareTo (categoryPropertiesInterface.getValue)) = (0) then
                    removalVector.add (Java_Object_Access (existingCategoryInterface));
                    bool_return := True;
                    exit;
                end if;
            end if;
        end loop;
        Category'Class (This).removal (removalVector);
        return bool_return;
   end removeDuplicateChild;

   --  throws Exception
   function isLeaf (This : in out Category) return Boolean is
   begin
        if (This.childCategoryVector) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Category Error")));
        end if;
        if (This.childCategoryVector.size) = (0) then
            return True;
        else
            return False;
        end if;
   end isLeaf;

   function getProperties (This : in out Category) return CategoryPropertiesInterface_Access is
   begin
        return This.categoryPropertiesInterface;
   end getProperties;

   procedure setProperties (This : in out Category; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) is
      categoryPropertiesInterface : constant CategoryPropertiesInterface_Access := CategoryPropertiesInterface_Access (categoryPropertiesInterface_Param);
   begin
        This.categoryPropertiesInterface := categoryPropertiesInterface;
   end setProperties;

   function getHierarchy (This : in out Category) return CategoryHierarchyInterface_Access is
   begin
        return This.categoryHierarchyInterface;
   end getHierarchy;

   procedure setHierarchy (This : in out Category; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) is
      categoryHierarchyInterface : constant CategoryHierarchyInterface_Access := CategoryHierarchyInterface_Access (categoryHierarchyInterface_Param);
   begin
        This.categoryHierarchyInterface := categoryHierarchyInterface;
   end setHierarchy;

   --  throws Exception
   function isValid (This : in out Category) return Boolean is
      size : Integer;
      anyType : Java_Object_Access;
      categoryInterface : CategoryInterface_Access;
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
      index : Integer;
   begin
        if not (This.categoryPropertiesInterface.isValid.booleanValue) then
            return False;
        end if;
        size := This.childCategoryVector.size;
        for index in 0 .. (size) - 1 loop
            anyType := This.childCategoryVector.get (index);
            if (This.PROPERTIES) = (This.typeVector.get (index)) then
                categoryPropertiesInterface := CategoryPropertiesInterface_Access (anyType);
                if not (categoryPropertiesInterface.isValid.booleanValue) then
                    return False;
                end if;
            elsif (This.CATEGORY_Var) = (This.typeVector.get (index)) then
                categoryInterface := CategoryInterface_Access (anyType);
                if not (categoryInterface.isValid.booleanValue) then
                    return False;
                end if;
            end if;
        end loop;
        return True;
   end isValid;

   --  throws Exception
   function toValidationInfoDoc (This : in out Category) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out Category; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out Category) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   --  throws Exception
   function toHashMap (This : in out Category) return HashMap_Access is
      categoryHashMap : HashMap_Access;
   begin
        categoryHashMap := This.categoryPropertiesInterface.toHashMap;
        return categoryHashMap;
   end toHashMap;

   --  throws Exception
   function toVector (This : in out Category) return BasicArrayList_Access is
      categoryVector : BasicArrayList_Access;
   begin
        categoryVector := This.categoryPropertiesInterface.toVector;
        categoryVector.add (Java_Object_Access (This.childCategoryVector));
        return categoryVector;
   end toVector;

   --  throws Exception
   procedure log (This : in out Category) is
      stringBuffer : StringMaker_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY_Var) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Category Name: "));
            stringBuffer.append (This.categoryPropertiesInterface.getValue);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Path = "));
            stringBuffer.append (Category'Class (This).getPath.toString);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "File Path: "));
            stringBuffer.append (Category'Class (This).getFilePath.toString);
            This.logUtil.putF (stringBuffer.toString, Category_Access'(This'Unchecked_Access), To_Unbounded_String ("log()"));
        end if;
   end log;

   procedure addChildProperty (This : in out Category; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) is
      Java_Result : constant Boolean := Category'Class (This).addChildProperty (categoryPropertiesInterface_Param => categoryPropertiesInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addChildProperty;

   procedure addChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      Java_Result : constant Boolean := Category'Class (This).addChild (categoryInterface_Param => categoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addChild;

   procedure removeChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      Java_Result : constant Boolean := Category'Class (This).removeChild (categoryInterface_Param => categoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeChild;

   procedure removeDuplicateChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      Java_Result : constant Boolean := Category'Class (This).removeDuplicateChild (categoryInterface_Param => categoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeDuplicateChild;

   procedure toValidationInfoNode (This : in out Category; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := Category'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

begin
   null;
   NOT_ROOT := To_Unbounded_String ("This is not the root so it has no file path.");

end org.allbinary.business.category.Category_Package;


