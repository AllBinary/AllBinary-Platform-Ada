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


package body admin.taghelpers.CategoryRequestHelper_Package is

   procedure Initialize_Fields (This : in out CategoryRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.pageContext := null;
      This.hashMap := null;
      This.request := null;
      This.categoryLoaderInterface := null;
      This.categoryInterface := null;
      This.childCategoryInterface := null;
      This.transformInfoInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        begin
            This.request := HttpServletRequest_Access (pageContext.getRequest);
            This.pageContext := pageContext;
            This.hashMap := hashMap;
            This.getXmlData;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("CategoryRequestHelper()"), e);
            end if;
                end;
        end;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return CategoryRequestHelper_Access is
      This : constant CategoryRequestHelper_Access := new CategoryRequestHelper;
   begin
      CategoryRequestHelper_Package.Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   procedure getXmlData (This : in out CategoryRequestHelper) is
      map : Map_Access;
      categoryData : CategoryData_Access;
      keys : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      xmlRequest : Unbounded_String;
      index : Integer;
      document : Document_Access;
      requestNode : Node_Access;
      parentCategoryNode : Node_Access;
      categoryNode : Node_Access;
      childCategoryNode : Node_Access;
   begin
        begin
            map := This.request.getParameterMap;
            categoryData := CategoryData_Package.getInstance;
            keys := map.keySet;
            keyArray := keys.toArray;
            size := keyArray'Length;
            if (size) > (0) then
                xmlRequest := Unbounded_String (keyArray (0));
                index := 1;
                while ((index) < (size)) and then (not (xmlRequest.startsWith (CategoryRequestHelper_Package.categoryRequest))) loop
                    xmlRequest := Unbounded_String (keyArray (index));
                    if xmlRequest.startsWith (CategoryRequestHelper_Package.categoryRequest) then
                        exit;
                    end if;
                end loop;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                    This.logUtil.putF (xmlRequest, This'Unchecked_Access, To_Unbounded_String ("getXmlData()"));
                end if;
                document := DomDocumentHelper_Package.create (xmlRequest);
                requestNode := DomSearchHelper_Package.getNode (categoryData.REQUEST, document.getChildNodes);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                    This.logUtil.putF (XmlDocumentHelper_Package.toString (document), This'Unchecked_Access, To_Unbounded_String ("getXmlData()"));
                end if;
                This.setCategoryLoader (requestNode);
                parentCategoryNode := DomSearchHelper_Package.getNode (categoryData.PARENT, requestNode.getChildNodes);
                categoryNode := DomSearchHelper_Package.getNode (categoryData.NAME, parentCategoryNode.getChildNodes);
                This.categoryInterface := CategoryInterface_Access (StoreCategoryFactory_Package.Create (This.transformInfoInterface).getRootInstanceFromNode (categoryNode));
                This.categoryInterface := This.categoryLoaderInterface.get (This.categoryInterface);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                    This.categoryInterface.log;
                    This.logUtil.putF (To_Unbounded_String ("Loaded Parent Category"), This'Unchecked_Access, To_Unbounded_String ("getXmlData()"));
                end if;
                childCategoryNode := DomSearchHelper_Package.getNodeNoThrow (categoryData.NAME, requestNode.getChildNodes);
                if (childCategoryNode) /= (null) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                        This.logUtil.putF (To_Unbounded_String ("Loading Child Category"), This'Unchecked_Access, To_Unbounded_String ("getXmlData()"));
                    end if;
                    This.childCategoryInterface := CategoryInterface_Access (StoreCategoryFactory_Package.Create (This.transformInfoInterface).getInstance (childCategoryNode));
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                        This.childCategoryInterface.log;
                        This.logUtil.putF (To_Unbounded_String ("Loaded Child Category"), This'Unchecked_Access, To_Unbounded_String ("getXmlData()"));
                    end if;
                else
                    This.childCategoryInterface := This.categoryInterface;
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getXmlData()"), e);
            end if;
                end;
        end;
   end getXmlData;

   --  throws Exception
   procedure setCategoryLoader (This : in out CategoryRequestHelper; requestNode : Node_Access) is
      storeNameNode : Node_Access;
      storeName : Unbounded_String;
      storeFrontInterface : StoreFrontInterface_Access;
      storeCategoryFactory : StoreCategoryFactory_Access;
   begin
        storeNameNode := DomSearchHelper_Package.getNode (StoreFrontData_Package.getInstance.NAME, requestNode.getChildNodes);
        if (storeNameNode) /= (null) then
            storeName := DomNodeHelper_Package.getTextNodeValue (storeNameNode);
            if (storeName) /= (Null_Unbounded_String) then
                storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
                This.transformInfoInterface := TransformInfoInterface_Access (TransformInfoBasic_Package.Create (storeFrontInterface, This.hashMap, This.pageContext));
                if (This.transformInfoInterface) = (null) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("TransformInfo null")));
                end if;
                storeCategoryFactory := StoreCategoryFactory_Package.Create (This.transformInfoInterface);
                This.categoryLoaderInterface := CategoryLoaderFactory_Package.getInstance (storeCategoryFactory);
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Store Name Error: ") & storeName));
            end if;
        end if;
   end setCategoryLoader;

   function insert (This : in out CategoryRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Added the following to the Category table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("inserting"), This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            This.categoryLoaderInterface.insert (This.categoryInterface, This.childCategoryInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add item to Category");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("insert()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function delete (This : in out CategoryRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Removed ") & Java_Image (CategoryData_Package.getInstance.NAME) & To_Unbounded_String ("=") & Java_Image (This.childCategoryInterface.getPath);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Deleting"), This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            This.categoryLoaderInterface.delete (This.categoryInterface, This.childCategoryInterface);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            begin
                error := To_Unbounded_String ("Failed to remove category: ") & Java_Image (This.childCategoryInterface.getPath);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                    This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
                end if;
                return error;
            exception
                when Java_Occurrence : others =>
                    declare
                        e2 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                error := To_Unbounded_String ("Failed to remove category and show the path of the failed category");
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                    This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e2);
                end if;
                return error;
                    end;
            end;
                end;
        end;
   end delete;

   function viewCategory (This : in out CategoryRequestHelper) return Unbounded_String is
      document : Document_Access;
      xmlString : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            document := CategoryComponent_Package.Create (This.childCategoryInterface).toXmlDoc;
            xmlString := XmlDocumentHelper_Package.toString (document);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (xmlString, This'Unchecked_Access, To_Unbounded_String ("viewCategory()"));
            end if;
            return xmlString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to get Category");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("viewCategory()"), e);
            end if;
            return error;
                end;
        end;
   end viewCategory;

   function viewCategories (This : in out CategoryRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := StringUtil_Package.getInstance.EMPTY_STRING;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("viewCategories()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view Categories table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("viewCategories()"), e);
            end if;
            return error;
                end;
        end;
   end viewCategories;

   function update (This : in out CategoryRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("New Item Successfully added");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add Item");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

begin
   null;
   categoryRequest := StringMaker_Package.Create.append (To_Unbounded_String ("<")).append (CategoryData_Package.getInstance.REQUEST).append (To_Unbounded_String (">")).toString;

end admin.taghelpers.CategoryRequestHelper_Package;


