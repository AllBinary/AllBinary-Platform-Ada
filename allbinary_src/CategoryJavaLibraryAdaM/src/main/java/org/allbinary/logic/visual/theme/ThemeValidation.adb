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
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package;
with org.allbinary.data.tree.category.CategoryLoaderFactory_Package; use org.allbinary.data.tree.category.CategoryLoaderFactory_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package; use org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlData_Package; use org.allbinary.logic.communication.sql.AbSqlData_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package; use org.allbinary.logic.io.path.PathUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.theme.ThemeData_Package; use org.allbinary.logic.visual.theme.ThemeData_Package;

package body org.allbinary.logic.visual.theme.ThemeValidation_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package StoreThemeCategoryFactory_Package renames Standard.org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package;
   package CategoryLoaderFactory_Package renames Standard.org.allbinary.data.tree.category.CategoryLoaderFactory_Package;
   package CategoryLoaderInterface_Package renames Standard.org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
   package DomData_Package renames Standard.org.allbinary.data.tree.dom.DomData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbSqlData_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlData_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package PathUtil_Package renames Standard.org.allbinary.logic.io.path.PathUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out ThemeValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
      
      
      
      This.fileAbPath := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ThemeValidation'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; cssStyleValidation_Param : access CssStyleValidation_Package.CssStyleValidation'Class; categoryThemePath : Unbounded_String) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      cssStyleValidation : constant CssStyleValidation_Access := CssStyleValidation_Access (cssStyleValidation_Param);
      pathData : AbPathData_Access;
      pathUtil : PathUtil_Access;
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        pathData := AbPathData_Package.getInstance;
        pathUtil := PathUtil_Package.getInstance;
        This.categoryAbPath := pathUtil.removeNameFromPath (categoryThemePath);
        This.themeName := pathData.getNameFromPath (categoryThemePath);
        This.styleValidationInterface := ValidationInterface_Access (cssStyleValidation);
        ThemeValidation'Class (This).init;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; cssStyleValidation_Param : access CssStyleValidation_Package.CssStyleValidation'Class; categoryThemePath : Unbounded_String) return ThemeValidation_Access is
      This : constant ThemeValidation_Access := new ThemeValidation;
   begin
      ThemeValidation_Package.Initialize (This.all, transformInfoInterface_Param, cssStyleValidation_Param, categoryThemePath);
      return This;
   end Create;

   procedure Initialize (This : in out ThemeValidation'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      categoryThemeAbPath : AbPath_Access;
      pathData : AbPathData_Access;
      pathUtil : PathUtil_Access;
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        categoryThemeAbPath := AbPath_Package.Create (Java_Unbox (hashMap.get (ThemeData_Package.getInstance.PATH)), StringUtil_Package.getInstance.EMPTY_STRING);
        pathData := AbPathData_Package.getInstance;
        pathUtil := PathUtil_Package.getInstance;
        This.categoryAbPath := pathUtil.removeNameFromPath (categoryThemeAbPath.toString);
        This.themeName := pathData.getNameFromPath (categoryThemeAbPath.toString);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("CategoryThemePath: "));
            stringBuffer.append (categoryThemeAbPath.toString);
            stringBuffer.append (To_Unbounded_String (" & CategoryPath: "));
            stringBuffer.append (This.categoryAbPath.toString);
            stringBuffer.append (To_Unbounded_String (" & ThemeName: "));
            stringBuffer.append (This.themeName);
            This.logUtil.putF (To_Unbounded_String ("Http Request Constructor"), ThemeValidation_Access'(This'Unchecked_Access), stringBuffer.toString);
        end if;
        ThemeValidation'Class (This).init;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class) return ThemeValidation_Access is
      This : constant ThemeValidation_Access := new ThemeValidation;
   begin
      ThemeValidation_Package.Initialize (This.all, transformInfoInterface_Param, hashMap_Param);
      return This;
   end Create;

   procedure Initialize (This : in out ThemeValidation'Class; storeThemeCategoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class; node_Param : access Node_Package.Node'Class) is
      storeThemeCategoryInterface : constant StoreThemeCategoryInterface_Access := StoreThemeCategoryInterface_Access (storeThemeCategoryInterface_Param);
      node : constant Node_Access := Node_Access (node_Param);
      themeNameNode : Node_Access;
      valueNode : Node_Access;
      previewImageNameNode : Node_Access;
      previewImageNameValueNode : Node_Access;
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := storeThemeCategoryInterface.getTransformInfoInterface;
        This.categoryAbPath := storeThemeCategoryInterface.getPath;
        themeNameNode := DomSearchHelper_Package.getNode (ThemeData_Package.getInstance.NAME, node.getChildNodes);
        valueNode := DomSearchHelper_Package.getNode (DomData_Package.VALUE, themeNameNode.getChildNodes);
        This.themeName := DomNodeHelper_Package.getTextNodeValue (valueNode);
        previewImageNameNode := DomSearchHelper_Package.getNode (ThemeData_Package.getInstance.PREVIEW_IMAGE_NAME, node.getChildNodes);
        previewImageNameValueNode := DomSearchHelper_Package.getNode (DomData_Package.VALUE, previewImageNameNode.getChildNodes);
        This.themePreviewImageName := DomNodeHelper_Package.getTextNodeValue (previewImageNameValueNode);
        This.webAppAbPath := storeThemeCategoryInterface.getWebAppPath;
        ThemeValidation'Class (This).init (storeThemeCategoryInterface);
   end Initialize;

   function Create (storeThemeCategoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class; node_Param : access Node_Package.Node'Class) return ThemeValidation_Access is
      This : constant ThemeValidation_Access := new ThemeValidation;
   begin
      ThemeValidation_Package.Initialize (This.all, storeThemeCategoryInterface_Param, node_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out ThemeValidation) is
      categoryFactoryInterface : CategoryFactoryInterface_Access;
      categoryLoaderInterface : CategoryLoaderInterface_Access;
      rootStoreThemeCategoryInterface : StoreThemeCategoryInterface_Access;
   begin
        categoryFactoryInterface := CategoryFactoryInterface_Access (StoreThemeCategoryFactory_Package.Create (ThemeValidation'Class (This).getTransformInfoInterface));
        categoryLoaderInterface := CategoryLoaderFactory_Package.getInstance (categoryFactoryInterface);
        rootStoreThemeCategoryInterface := StoreThemeCategoryInterface_Access (categoryFactoryInterface.getRootInstance);
        ThemeValidation'Class (This).init (rootStoreThemeCategoryInterface);
   end init;

   --  throws Exception
   procedure init (This : in out ThemeValidation; storeThemeCategoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class) is
      storeThemeCategoryInterface : constant StoreThemeCategoryInterface_Access := StoreThemeCategoryInterface_Access (storeThemeCategoryInterface_Param);
   begin
        This.fileAbPath := AbPath_Package.Create (storeThemeCategoryInterface.getRootFilePath.toString & This.categoryAbPath.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        This.webAppAbPath := storeThemeCategoryInterface.getWebAppPath;
   end init;

   --  throws Exception
   function getTransformInfoInterface (This : in out ThemeValidation) return TransformInfoInterface_Access is
   begin
        return This.transformInfoInterface;
   end getTransformInfoInterface;

   function getName (This : in out ThemeValidation) return Unbounded_String is
   begin
        return This.themeName;
   end getName;

   function getPreviewImageName (This : in out ThemeValidation) return Unbounded_String is
   begin
        return This.themePreviewImageName;
   end getPreviewImageName;

   function getPreviewImagePath (This : in out ThemeValidation) return Unbounded_String is
   begin
        return This.webAppAbPath.toString & This.categoryAbPath.toString;
   end getPreviewImagePath;

   function getPath (This : in out ThemeValidation) return Unbounded_String is
   begin
        return This.categoryAbPath.toString;
   end getPath;

   --  throws Exception
   function getCssStyleValidation (This : in out ThemeValidation) return CssStyleValidation_Access is
      cssStyleFileAbPath : AbPath_Access;
      cryptFileReader : CryptFileReader_Access;
      document : Document_Access;
   begin
        if (This.styleValidationInterface) = (null) then
            cssStyleFileAbPath := AbPath_Package.Create (This.fileAbPath.toString, This.themeName & Java_Image (AbPathData_Package.getInstance.EXTENSION_SEP) & Java_Image (CategoryData_Package.getInstance.UNCRYPTED_EXTENSION));
            cryptFileReader := CryptFileReader_Package.Create (CategoryData_Package.getInstance.UNCRYPTED_EXTENSION, CategoryData_Package.getInstance.ENCRYPTED_EXTENSION);
            document := DomDocumentHelper_Package.create (cryptFileReader.get (cssStyleFileAbPath));
            This.styleValidationInterface := ValidationInterface_Access (CssStyleValidation_Package.Create (document));
        end if;
        return CssStyleValidation_Access (This.styleValidationInterface);
   end getCssStyleValidation;

   function isValid (This : in out ThemeValidation) return Boolean is
      isValid : Boolean;
   begin
        begin
            isValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, ThemeValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidRequired (This.categoryAbPath.toString, AbSqlData_Package.MINSTRING, AbSqlData_Package.MAXSTRING)) then
                isValid := False;
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidRequired (This.themeName, AbSqlData_Package.MINSTRING, AbSqlData_Package.MAXSTRING)) then
                isValid := False;
            end if;
            if not (ThemeValidation'Class (This).getCssStyleValidation.isValid.booleanValue) then
                isValid := False;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("End: ") & Java_Image (isValid), ThemeValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), ThemeValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out ThemeValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Theme Validation Error"));
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), ThemeValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out ThemeValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out ThemeValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function getKey (This : in out ThemeValidation) return Java_Object_Access is
   begin
        return Java_Box (ThemeValidation'Class (This).getName);
   end getKey;

   function toVector (This : in out ThemeValidation) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.add (ThemeValidation'Class (This).getName);
        vector.add (ThemeValidation'Class (This).getPath);
        vector.add (ThemeValidation'Class (This).getPreviewImageName);
        vector.add (ThemeValidation'Class (This).getPreviewImagePath);
        return vector;
   end toVector;

   function toHashMap (This : in out ThemeValidation) return HashMap_Access is
      themeData : ThemeData_Access;
      hashMap : HashMap_Access;
   begin
        themeData := ThemeData_Package.getInstance;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (themeData.NAME, Java_Box (ThemeValidation'Class (This).getName));
        hashMap.put (themeData.PATH, ThemeValidation'Class (This).getPath);
        hashMap.put (themeData.PREVIEW_IMAGE_NAME, ThemeValidation'Class (This).getPreviewImageName);
        hashMap.put (themeData.PREVIEW_IMAGE_PATH, ThemeValidation'Class (This).getPreviewImagePath);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out ThemeValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      domNodeInterface : DomNodeInterface_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, ThemeData_Package.getInstance.NAME, ThemeValidation'Class (This).toHashMap);
        domNodeInterface := DomNodeInterface_Access (ThemeValidation'Class (This).getCssStyleValidation);
        node.appendChild (domNodeInterface.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out ThemeValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ThemeValidation'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out ThemeValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ThemeValidation'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.theme.ThemeValidation_Package;


