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
with org.allbinary.business.category.properties.CategoryProperties_Package; use org.allbinary.business.category.properties.CategoryProperties_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package body org.allbinary.data.tree.category.CategoryLoader_Package is

   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package CategoryProperties_Package renames Standard.org.allbinary.business.category.properties.CategoryProperties_Package;
   package CategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   procedure Initialize_Fields (This : in out CategoryLoader'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryLoader'Class; categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) is
      categoryFactoryInterface : constant CategoryFactoryInterface_Access := CategoryFactoryInterface_Access (categoryFactoryInterface_Param);
   begin
        CategoryModifierTree_Package.Initialize (This, categoryFactoryInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (This.commonStrings.START, CategoryLoader_Access'(This'Unchecked_Access), To_Unbounded_String ("CategoryLoader(CategoryFactoryInterface categoryFactoryInterface)"));
        end if;
   end Initialize;

   function Create (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryLoader_Access is
      This : constant CategoryLoader_Access := new CategoryLoader;
   begin
      CategoryLoader_Package.Initialize (This.all, categoryFactoryInterface_Param);
      return This;
   end Create;

   function getDoc (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Document_Access is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
      rootAbFile : AbFile_Access;
      fileAbPath : AbPath_Access;
      cryptFileReader : CryptFileReader_Access;
      document : Document_Access;
   begin
        begin
            if (categoryInterface.getProperties.getPath (categoryInterface.getHierarchy)) /= (null) then
                if (categoryInterface.getHierarchy.getLevel) = (1) then
                    rootAbFile := AbFile_Package.createAbFileFromAbPath (categoryInterface.getRootFilePath);
                    if not (rootAbFile.isDirectory) then
                        rootAbFile.mkdirs;
                        if not (rootAbFile.isDirectory) then
                            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Could Not Create Directory")));
                        end if;
                        CategoryLoader'Class (This).save (categoryInterface);
                    end if;
                end if;
                fileAbPath := categoryInterface.getFilePath;
                cryptFileReader := CryptFileReader_Package.Create (CategoryData_Package.getInstance.UNCRYPTED_EXTENSION, CategoryData_Package.getInstance.ENCRYPTED_EXTENSION);
                document := DomDocumentHelper_Package.create (cryptFileReader.get (fileAbPath));
                return document;
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Null Category")));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                begin
                    categoryInterface.log;
                exception
                    when Java_Occurrence : others =>
                        declare
                            e2 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                        begin
                    This.logUtil.put (To_Unbounded_String ("Could Not Log Category"), CategoryLoader_Access'(This'Unchecked_Access), To_Unbounded_String ("getDoc"), e);
                        end;
                end;
                This.logUtil.put (This.commonStrings.FAILURE, CategoryLoader_Access'(This'Unchecked_Access), To_Unbounded_String ("getDoc"), e);
            end if;
            return null;
                end;
        end;
   end getDoc;

   function get (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryInterface_Access is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
      document : Document_Access;
      categoryNode : Node_Access;
   begin
        begin
            document := CategoryLoader'Class (This).getDoc (categoryInterface);
            categoryNode := DomSearchHelper_Package.getNode (CategoryData_Package.getInstance.NAME, document.getChildNodes);
            return CategoryInterface_Access (CategoryLoader'Class (This).addProperties (categoryInterface, categoryNode.getChildNodes));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, CategoryLoader_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end get;

   function get (This : in out CategoryLoader; document_Param : access Document_Package.Document'Class) return CategoryInterface_Access is
      document : constant Document_Access := Document_Access (document_Param);
      categoryNode : Node_Access;
      loadedCategoryInterface : CategoryInterface_Access;
   begin
        begin
            categoryNode := DomSearchHelper_Package.getNode (CategoryData_Package.getInstance.NAME, document.getChildNodes);
            loadedCategoryInterface := CategoryInterface_Access (This.categoryFactoryInterface.getRootInstanceFromNode (categoryNode));
            return CategoryInterface_Access (CategoryLoader'Class (This).addProperties (loadedCategoryInterface, categoryNode.getChildNodes));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, CategoryLoader_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end get;

   function getAll (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryInterface_Access is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
      document : Document_Access;
   begin
        begin
            document := CategoryLoader'Class (This).getDoc (categoryInterface);
            return CategoryInterface_Access (CategoryLoader'Class (This).getAll (document));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, CategoryLoader_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end getAll;

   function getAll (This : in out CategoryLoader; document_Param : access Document_Package.Document'Class) return CategoryInterface_Access is
      document : constant Document_Access := Document_Access (document_Param);
      categoryNode : Node_Access;
      loadedCategoryInterface : CategoryInterface_Access;
   begin
        begin
            categoryNode := DomSearchHelper_Package.getNode (CategoryData_Package.getInstance.NAME, document.getChildNodes);
            loadedCategoryInterface := CategoryInterface_Access (This.categoryFactoryInterface.getRootInstanceFromNode (categoryNode));
            return CategoryInterface_Access (CategoryLoader'Class (This).addProperties (loadedCategoryInterface, categoryNode.getChildNodes));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, CategoryLoader_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end getAll;

   function getAll (This : in out CategoryLoader; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryNodeList_Param : access NodeList_Package.NodeList'Class) return CategoryInterface_Access is
      parentCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (parentCategoryInterface_Param);
      categoryNodeList : constant NodeList_Access := NodeList_Access (categoryNodeList_Param);
      categoryNode : Node_Access;
      categoryInterface : CategoryInterface_Access;
      index : Integer;
   begin
        begin
            if (categoryNodeList) /= (null) then
                for index in 0 .. (categoryNodeList.getLength) - 1 loop
                    categoryNode := categoryNodeList.item (index);
                    if ((categoryNode) /= (null)) and then ((categoryNode.getNodeName.compareTo (CategoryData_Package.getInstance.NAME)) = (0)) then
                        categoryInterface := CategoryInterface_Access (This.categoryFactoryInterface.getInstance (parentCategoryInterface.getHierarchy.getRoot, parentCategoryInterface, categoryNode));
                        parentCategoryInterface.addChild (categoryInterface);
                    end if;
                end loop;
            end if;
            return parentCategoryInterface;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, CategoryLoader_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end getAll;

   function addProperties (This : in out CategoryLoader; loadedCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryNodeList_Param : access NodeList_Package.NodeList'Class) return CategoryInterface_Access is
      loadedCategoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (loadedCategoryInterface_Param);
      categoryNodeList : constant NodeList_Access := NodeList_Access (categoryNodeList_Param);
      categoryNode : Node_Access;
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
      index : Integer;
   begin
        begin
            if (categoryNodeList) /= (null) then
                for index in 0 .. (categoryNodeList.getLength) - 1 loop
                    categoryNode := categoryNodeList.item (index);
                    if ((categoryNode) /= (null)) and then ((categoryNode.getNodeName.compareTo (CategoryData_Package.getInstance.NAME)) = (0)) then
                        categoryPropertiesInterface := CategoryPropertiesInterface_Access (CategoryProperties_Package.Create (categoryNode));
                        loadedCategoryInterface.addChildProperty (categoryPropertiesInterface);
                    end if;
                end loop;
            end if;
            return loadedCategoryInterface;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, CategoryLoader_Access'(This'Unchecked_Access), This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end addProperties;

   procedure getDoc (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      Java_Result : constant Document_Access := CategoryLoader'Class (This).getDoc (categoryInterface_Param => categoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDoc;

   procedure get (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).get (categoryInterface_Param => categoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure get (This : in out CategoryLoader; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).get (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getAll (This : in out CategoryLoader; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).getAll (categoryInterface_Param => categoryInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure getAll (This : in out CategoryLoader; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).getAll (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure getAll (This : in out CategoryLoader; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryNodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).getAll (parentCategoryInterface_Param => parentCategoryInterface_Param, categoryNodeList_Param => categoryNodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure addProperties (This : in out CategoryLoader; loadedCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryNodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).addProperties (loadedCategoryInterface_Param => loadedCategoryInterface_Param, categoryNodeList_Param => categoryNodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addProperties;

end org.allbinary.data.tree.category.CategoryLoader_Package;


