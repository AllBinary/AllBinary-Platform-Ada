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


package body views.business.context.modules.storefront.customizer.includes.style.theme.EditThemeValidationView_Package is

   procedure Initialize_Fields (This : in out EditThemeValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out EditThemeValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        ThemeCustomizerView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return EditThemeValidationView_Access is
      This : constant EditThemeValidationView_Access := new EditThemeValidationView;
   begin
      EditThemeValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out EditThemeValidationView) return Boolean is
      isValid : Boolean;
      categoryFactoryInterface : CategoryFactoryInterface_Access;
      categoryLoaderInterface : CategoryLoaderInterface_Access;
      rootStoreThemeCategoryInterface : StoreThemeCategoryInterface_Access;
      storeThemeCategoryInterface : StoreThemeCategoryInterface_Access;
      domNodeInterface : DomNodeInterface_Access;
      document : Document_Access;
      documentString : Unbounded_String;
   begin
        begin
            isValid := True;
            categoryFactoryInterface := StoreThemeCategoryFactory_Package.Create (This.getTransformInfoInterface);
            categoryLoaderInterface := CategoryLoaderFactory_Package.getInstance (categoryFactoryInterface);
            rootStoreThemeCategoryInterface := StoreThemeCategoryInterface_Access (categoryFactoryInterface.getRootInstance);
            storeThemeCategoryInterface := StoreThemeCategoryInterface_Access (categoryLoaderInterface.getAll (CategoryInterface_Access (rootStoreThemeCategoryInterface)));
            This.validationInterface := StoreThemeCategoryPathValidationView_Package.Create (StoreThemeCategoryInterface_Access (storeThemeCategoryInterface));
            isValid := This.validationInterface.isValid;
            domNodeInterface := DomNodeInterface_Access (This.validationInterface);
            document := DomDocumentHelper_Package.create;
            document.appendChild (domNodeInterface.toXmlNode (document));
            documentString := XmlDocumentHelper_Package.toString (document);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.putF (To_Unbounded_String ("Setting Data: ") & documentString, EditThemeValidationView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            end if;
            This.getTransformInfoInterface.setData (documentString);
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), EditThemeValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out EditThemeValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.validationInterface.validationInfo);
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), EditThemeValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out EditThemeValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out EditThemeValidationView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out EditThemeValidationView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := EditThemeValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.includes.style.theme.EditThemeValidationView_Package;


