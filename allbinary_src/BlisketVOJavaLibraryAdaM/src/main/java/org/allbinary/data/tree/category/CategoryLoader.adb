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


package body org.allbinary.data.tree.category.CategoryLoader_Package is

   procedure Initialize_Fields (This : in out CategoryLoader'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryLoader'Class; categoryFactoryInterface : CategoryFactoryInterface_Access) is
   begin
        CategoryModifierTree_Package.Initialize (This, categoryFactoryInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.CATEGORY) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("CategoryLoader(CategoryFactoryInterface categoryFactoryInterface)"));
        end if;
   end Initialize;

   function Create (categoryFactoryInterface : CategoryFactoryInterface_Access) return CategoryLoader_Access is
      This : constant CategoryLoader_Access := new CategoryLoader;
   begin
      CategoryLoader_Package.Initialize (This.all, categoryFactoryInterface);
      return This;
   end Create;

   function getDoc (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access) return Document_Access is
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
                        This.save (categoryInterface);
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
                    This.logUtil.put (To_Unbounded_String ("Could Not Log Category"), This'Unchecked_Access, To_Unbounded_String ("getDoc"), e);
                        end;
                end;
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("getDoc"), e);
            end if;
            return null;
                end;
        end;
   end getDoc;

   function get (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access) return CategoryInterface_Access is
      document : Document_Access;
      categoryNode : Node_Access;
   begin
        begin
            document := This.getDoc (categoryInterface);
            categoryNode := DomSearchHelper_Package.getNode (CategoryData_Package.getInstance.NAME, document.getChildNodes);
            return This.addProperties (categoryInterface, categoryNode.getChildNodes);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end get;

   function get (This : in out CategoryLoader; document : Document_Access) return CategoryInterface_Access is
      categoryNode : Node_Access;
      loadedCategoryInterface : CategoryInterface_Access;
   begin
        begin
            categoryNode := DomSearchHelper_Package.getNode (CategoryData_Package.getInstance.NAME, document.getChildNodes);
            loadedCategoryInterface := This.categoryFactoryInterface.getRootInstanceFromNode (categoryNode);
            return This.addProperties (loadedCategoryInterface, categoryNode.getChildNodes);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end get;

   function getAll (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access) return CategoryInterface_Access is
      document : Document_Access;
   begin
        begin
            document := This.getDoc (categoryInterface);
            return This.getAll (document);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end getAll;

   function getAll (This : in out CategoryLoader; document : Document_Access) return CategoryInterface_Access is
      categoryNode : Node_Access;
      loadedCategoryInterface : CategoryInterface_Access;
   begin
        begin
            categoryNode := DomSearchHelper_Package.getNode (CategoryData_Package.getInstance.NAME, document.getChildNodes);
            loadedCategoryInterface := This.categoryFactoryInterface.getRootInstanceFromNode (categoryNode);
            return This.addProperties (loadedCategoryInterface, categoryNode.getChildNodes);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end getAll;

   function getAll (This : in out CategoryLoader; parentCategoryInterface : CategoryInterface_Access; categoryNodeList : NodeList_Access) return CategoryInterface_Access is
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
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end getAll;

   function addProperties (This : in out CategoryLoader; loadedCategoryInterface : CategoryInterface_Access; categoryNodeList : NodeList_Access) return CategoryInterface_Access is
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
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.GET, e);
            end if;
            return null;
                end;
        end;
   end addProperties;

   procedure getDoc (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access) is
      Java_Result : constant Document_Access := CategoryLoader'Class (This).getDoc (categoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDoc;

   procedure get (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).get (categoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure get (This : in out CategoryLoader; document : Document_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).get (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getAll (This : in out CategoryLoader; categoryInterface : CategoryInterface_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).getAll (categoryInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure getAll (This : in out CategoryLoader; document : Document_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).getAll (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure getAll (This : in out CategoryLoader; parentCategoryInterface : CategoryInterface_Access; categoryNodeList : NodeList_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).getAll (parentCategoryInterface, categoryNodeList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAll;

   procedure addProperties (This : in out CategoryLoader; loadedCategoryInterface : CategoryInterface_Access; categoryNodeList : NodeList_Access) is
      Java_Result : constant CategoryInterface_Access := CategoryLoader'Class (This).addProperties (loadedCategoryInterface, categoryNodeList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addProperties;

end org.allbinary.data.tree.category.CategoryLoader_Package;


