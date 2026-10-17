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


package body org.allbinary.business.category.Category_Package is

   procedure Initialize_Fields (This : in out Category'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.childCategoryVector := BasicArrayListD_Package.Create;
      This.typeVector := BasicArrayListD_Package.Create;
      This.PROPERTIES := 1;
      This.CATEGORY := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out Category'Class; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access) is
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, This'Unchecked_Access, To_Unbounded_String ("Category(CategoryPropertiesFactoryInterface)"));
        end if;
        This.categoryPropertiesInterface := categoryPropertiesFactoryInterface.getInstance;
        This.categoryHierarchyInterface := CategoryHierarchyInterface_Access (CategoryHierarchy_Package.Create (This'Unchecked_Access, This'Unchecked_Access));
        This.log;
   end Initialize;

   function Create (categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access) return Category_Access is
      This : constant Category_Access := new Category;
   begin
      Category_Package.Initialize (This.all, categoryPropertiesFactoryInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out Category'Class; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access; level : Integer) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := categoryPropertiesFactoryInterface.getInstance;
        This.categoryHierarchyInterface := CategoryHierarchyInterface_Access (CategoryHierarchy_Package.Create (This'Unchecked_Access, This'Unchecked_Access, level));
        This.log;
   end Initialize;

   function Create (categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access; level : Integer) return Category_Access is
      This : constant Category_Access := new Category;
   begin
      Category_Package.Initialize (This.all, categoryPropertiesFactoryInterface, level);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out Category'Class; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access) is
   begin
      Initialize_Fields (This);
        This.categoryPropertiesInterface := CategoryPropertiesInterface_Access (categoryPropertiesFactoryInterface.getInstance);
        This.categoryHierarchyInterface := CategoryHierarchyInterface_Access (CategoryHierarchy_Package.Create (rootCategoryInterface, parentCategoryInterface));
        This.log;
   end Initialize;

   function Create (rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access) return Category_Access is
      This : constant Category_Access := new Category;
   begin
      Category_Package.Initialize (This.all, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface);
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
        return AbPath_Package.Create (This.getRootFilePath.toString & This.getProperties.getPath (This.getHierarchy).toString, This.getProperties.getFileName);
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

   function addChildProperty (This : in out Category; categoryPropertiesInterface : CategoryPropertiesInterface_Access) return Boolean is
   begin
        This.typeVector.add (This.PROPERTIES);
        return This.childCategoryVector.add (categoryPropertiesInterface);
   end addChildProperty;

   function addChild (This : in out Category; categoryInterface : CategoryInterface_Access) return Boolean is
      childCategoryHierarchyInterface : CategoryHierarchyInterface_Access;
   begin
        This.removeDuplicateChild (categoryInterface);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (To_Unbounded_String ("adding"), This'Unchecked_Access, To_Unbounded_String ("addChild"));
        end if;
        childCategoryHierarchyInterface := categoryInterface.getHierarchy;
        childCategoryHierarchyInterface.setParent (This'Unchecked_Access);
        childCategoryHierarchyInterface.setRoot (This.getHierarchy.getRoot);
        categoryInterface.setHierarchy (childCategoryHierarchyInterface);
        This.typeVector.add (This.CATEGORY);
        return This.childCategoryVector.add (categoryInterface);
   end addChild;

   function getChildNodes (This : in out Category) return BasicArrayList_Access is
   begin
        return This.childCategoryVector;
   end getChildNodes;

   function removeChild (This : in out Category; categoryInterface : CategoryInterface_Access) return Boolean is
      removalVector : BasicArrayList_Access;
      bool_return : Boolean;
      size : Integer;
      anyType : Java_Object_Access;
      currentCategoryInterface : CategoryInterface_Access;
      index : Integer;
   begin
        removalVector := BasicArrayListD_Package.Create;
        bool_return := False;
        size := This.childCategoryVector.size;
        for index in 0 .. (size) - 1 loop
            if (This.CATEGORY) = (This.typeVector.get (index)) then
                anyType := This.childCategoryVector.get (index);
                currentCategoryInterface := CategoryInterface_Access (anyType);
                if (currentCategoryInterface.getProperties.getValue.compareTo (categoryInterface.getProperties.getValue)) = (0) then
                    removalVector.add (currentCategoryInterface);
                    bool_return := True;
                end if;
            end if;
        end loop;
        This.removal (removalVector);
        return bool_return;
   end removeChild;

   procedure removal (This : in out Category; removalVector : BasicArrayList_Access) is
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

   function removeDuplicateChild (This : in out Category; categoryInterface : CategoryInterface_Access) return Boolean is
      removalVector : BasicArrayList_Access;
      bool_return : Boolean;
      size : Integer;
      anyType : Java_Object_Access;
      existingCategoryInterface : CategoryInterface_Access;
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
      index : Integer;
   begin
        removalVector := BasicArrayListD_Package.Create;
        bool_return := False;
        size := This.childCategoryVector.size;
        for index in 0 .. (size) - 1 loop
            anyType := This.childCategoryVector.get (index);
            if (This.PROPERTIES) = (This.typeVector.get (index)) then
                categoryPropertiesInterface := CategoryPropertiesInterface_Access (anyType);
                if (categoryInterface.getProperties.getValue.compareTo (categoryPropertiesInterface.getValue)) = (0) then
                    removalVector.add (categoryPropertiesInterface);
                    bool_return := True;
                    exit;
                end if;
            elsif (This.CATEGORY) = (This.typeVector.get (index)) then
                existingCategoryInterface := CategoryInterface_Access (anyType);
                categoryPropertiesInterface := existingCategoryInterface.getProperties;
                if (categoryInterface.getProperties.getValue.compareTo (categoryPropertiesInterface.getValue)) = (0) then
                    removalVector.add (existingCategoryInterface);
                    bool_return := True;
                    exit;
                end if;
            end if;
        end loop;
        This.removal (removalVector);
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

   procedure setProperties (This : in out Category; categoryPropertiesInterface : CategoryPropertiesInterface_Access) is
   begin
        This.categoryPropertiesInterface := categoryPropertiesInterface;
   end setProperties;

   function getHierarchy (This : in out Category) return CategoryHierarchyInterface_Access is
   begin
        return This.categoryHierarchyInterface;
   end getHierarchy;

   procedure setHierarchy (This : in out Category; categoryHierarchyInterface : CategoryHierarchyInterface_Access) is
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
            elsif (This.CATEGORY) = (This.typeVector.get (index)) then
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
   function toValidationInfoNode (This : in out Category; document : Document_Access) return Node_Access is
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
        categoryVector.add (This.childCategoryVector);
        return categoryVector;
   end toVector;

   --  throws Exception
   procedure log (This : in out Category) is
      stringBuffer : StringMaker_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Category Name: "));
            stringBuffer.append (This.categoryPropertiesInterface.getValue);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Path = "));
            stringBuffer.append (This.getPath.toString);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "File Path: "));
            stringBuffer.append (This.getFilePath.toString);
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("log()"));
        end if;
   end log;

   procedure addChildProperty (This : in out Category; categoryPropertiesInterface : CategoryPropertiesInterface_Access) is
      Java_Result : constant Boolean := Category'Class (This).addChildProperty (categoryPropertiesInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addChildProperty;

   procedure addChild (This : in out Category; categoryInterface : CategoryInterface_Access) is
      Java_Result : constant Boolean := Category'Class (This).addChild (categoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addChild;

   procedure removeChild (This : in out Category; categoryInterface : CategoryInterface_Access) is
      Java_Result : constant Boolean := Category'Class (This).removeChild (categoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeChild;

   procedure removeDuplicateChild (This : in out Category; categoryInterface : CategoryInterface_Access) is
      Java_Result : constant Boolean := Category'Class (This).removeDuplicateChild (categoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeDuplicateChild;

   procedure toValidationInfoNode (This : in out Category; document : Document_Access) is
      Java_Result : constant Node_Access := Category'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

begin
   null;
   NOT_ROOT := To_Unbounded_String ("This is not the root so it has no file path.");

end org.allbinary.business.category.Category_Package;


