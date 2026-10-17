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


package body org.allbinary.logic.visual.theme.ThemeValidation_Package is

   procedure Initialize_Fields (This : in out ThemeValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
      
      
      
      This.fileAbPath := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ThemeValidation'Class; transformInfoInterface : TransformInfoInterface_Access; cssStyleValidation : CssStyleValidation_Access; categoryThemePath : Unbounded_String) is
      pathData : AbPathData_Access;
      pathUtil : PathUtil_Access;
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        pathData := AbPathData_Package.getInstance;
        pathUtil := PathUtil_Package.getInstance;
        This.categoryAbPath := pathUtil.removeNameFromPath (categoryThemePath);
        This.themeName := pathData.getNameFromPath (categoryThemePath);
        This.styleValidationInterface := cssStyleValidation;
        This.init;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; cssStyleValidation : CssStyleValidation_Access; categoryThemePath : Unbounded_String) return ThemeValidation_Access is
      This : constant ThemeValidation_Access := new ThemeValidation;
   begin
      Initialize (This.all, transformInfoInterface, cssStyleValidation, categoryThemePath);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out ThemeValidation'Class; transformInfoInterface : TransformInfoInterface_Access; hashMap : HashMap_Access) is
      categoryThemeAbPath : AbPath_Access;
      pathData : AbPathData_Access;
      pathUtil : PathUtil_Access;
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        categoryThemeAbPath := AbPath_Package.Create (Unbounded_String (hashMap.get (ThemeData_Package.getInstance.PATH)), StringUtil_Package.getInstance.EMPTY_STRING);
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
            This.logUtil.putF (To_Unbounded_String ("Http Request Constructor"), This'Unchecked_Access, stringBuffer.toString);
        end if;
        This.init;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; hashMap : HashMap_Access) return ThemeValidation_Access is
      This : constant ThemeValidation_Access := new ThemeValidation;
   begin
      Initialize (This.all, transformInfoInterface, hashMap);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out ThemeValidation'Class; storeThemeCategoryInterface : StoreThemeCategoryInterface_Access; node : Node_Access) is
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
        This.init (storeThemeCategoryInterface);
   end Initialize;

   function Create (storeThemeCategoryInterface : StoreThemeCategoryInterface_Access; node : Node_Access) return ThemeValidation_Access is
      This : constant ThemeValidation_Access := new ThemeValidation;
   begin
      Initialize (This.all, storeThemeCategoryInterface, node);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out ThemeValidation) is
      categoryFactoryInterface : CategoryFactoryInterface_Access;
      categoryLoaderInterface : CategoryLoaderInterface_Access;
      rootStoreThemeCategoryInterface : StoreThemeCategoryInterface_Access;
   begin
        categoryFactoryInterface := StoreThemeCategoryFactory_Package.Create (This.getTransformInfoInterface);
        categoryLoaderInterface := CategoryLoaderFactory_Package.getInstance (categoryFactoryInterface);
        rootStoreThemeCategoryInterface := StoreThemeCategoryInterface_Access (categoryFactoryInterface.getRootInstance);
        This.init (rootStoreThemeCategoryInterface);
   end init;

   --  throws Exception
   procedure init (This : in out ThemeValidation; storeThemeCategoryInterface : StoreThemeCategoryInterface_Access) is
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
            This.styleValidationInterface := CssStyleValidation_Package.Create (document);
        end if;
        return CssStyleValidation_Access (This.styleValidationInterface);
   end getCssStyleValidation;

   function isValid (This : in out ThemeValidation) return Boolean is
      isValid : Boolean;
   begin
        begin
            isValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidRequired (This.categoryAbPath.toString, AbSqlData_Package.MINSTRING, AbSqlData_Package.MAXSTRING)) then
                isValid := False;
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidRequired (This.themeName, AbSqlData_Package.MINSTRING, AbSqlData_Package.MAXSTRING)) then
                isValid := False;
            end if;
            if not (This.getCssStyleValidation.isValid.booleanValue) then
                isValid := False;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("End: ") & Java_Image (isValid), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            return isValid;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
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
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out ThemeValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out ThemeValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   function getKey (This : in out ThemeValidation) return Java_Object_Access is
   begin
        return Java_Object_Access (This.getName);
   end getKey;

   function toVector (This : in out ThemeValidation) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayListD_Package.Create;
        vector.add (This.getName);
        vector.add (This.getPath);
        vector.add (This.getPreviewImageName);
        vector.add (This.getPreviewImagePath);
        return vector;
   end toVector;

   function toHashMap (This : in out ThemeValidation) return HashMap_Access is
      themeData : ThemeData_Access;
      hashMap : HashMap_Access;
   begin
        themeData := ThemeData_Package.getInstance;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (themeData.NAME, This.getName);
        hashMap.put (themeData.PATH, This.getPath);
        hashMap.put (themeData.PREVIEW_IMAGE_NAME, This.getPreviewImageName);
        hashMap.put (themeData.PREVIEW_IMAGE_PATH, This.getPreviewImagePath);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out ThemeValidation; document : Document_Access) return Node_Access is
      node : Node_Access;
      domNodeInterface : DomNodeInterface_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, ThemeData_Package.getInstance.NAME, This.toHashMap);
        domNodeInterface := DomNodeInterface_Access (This.getCssStyleValidation);
        node.appendChild (domNodeInterface.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure getTransformInfoInterface (This : in out ThemeValidation) is
      Java_Result : constant TransformInfoInterface_Access := ThemeValidation'Class (This).getTransformInfoInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoInterface;

   procedure getName (This : in out ThemeValidation) is
      Java_Result : constant Unbounded_String := ThemeValidation'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getPreviewImageName (This : in out ThemeValidation) is
      Java_Result : constant Unbounded_String := ThemeValidation'Class (This).getPreviewImageName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPreviewImageName;

   procedure getPreviewImagePath (This : in out ThemeValidation) is
      Java_Result : constant Unbounded_String := ThemeValidation'Class (This).getPreviewImagePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPreviewImagePath;

   procedure getPath (This : in out ThemeValidation) is
      Java_Result : constant Unbounded_String := ThemeValidation'Class (This).getPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPath;

   procedure getCssStyleValidation (This : in out ThemeValidation) is
      Java_Result : constant CssStyleValidation_Access := ThemeValidation'Class (This).getCssStyleValidation;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCssStyleValidation;

   procedure isValid (This : in out ThemeValidation) is
      Java_Result : constant Boolean := ThemeValidation'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out ThemeValidation) is
      Java_Result : constant Unbounded_String := ThemeValidation'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out ThemeValidation) is
      Java_Result : constant Document_Access := ThemeValidation'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out ThemeValidation; document : Document_Access) is
      Java_Result : constant Node_Access := ThemeValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure getKey (This : in out ThemeValidation) is
      Java_Result : constant Java_Object_Access := ThemeValidation'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

   procedure toVector (This : in out ThemeValidation) is
      Java_Result : constant BasicArrayList_Access := ThemeValidation'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

   procedure toHashMap (This : in out ThemeValidation) is
      Java_Result : constant HashMap_Access := ThemeValidation'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toXmlNode (This : in out ThemeValidation; document : Document_Access) is
      Java_Result : constant Node_Access := ThemeValidation'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.theme.ThemeValidation_Package;


