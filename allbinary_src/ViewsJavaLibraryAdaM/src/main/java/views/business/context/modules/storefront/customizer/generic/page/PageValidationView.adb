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


package body views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package is

   procedure Initialize_Fields (This : in out PageValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PageValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        PageView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, PageValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("PageViewValidation()"));
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PageValidationView_Access is
      This : constant PageValidationView_Access := new PageValidationView;
   begin
      PageValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out PageValidationView) return Boolean is
      isValid : Boolean;
      transformInfoEntityInterface : TransformInfoEntity_Access;
      pageObjectConfigInterface : TransformInfoObjectConfigInterface_Access;
      allViewsToBeModifiedVector : BasicArrayList_Access;
      size : Integer;
      transformInfoInterface : TransformInfo_Access;
      viewNameOfViewToBeModified : Unbounded_String;
      stringBuffer : StringMaker_Access;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      specifiedTransformInfoInterface : TransformInfoInterface_Access;
      hashMap : HashMap_Access;
      title : Unbounded_String;
      pageValidation : PageValidation_Access;
      document : Document_Access;
      documentString : Unbounded_String;
      index : Integer;
   begin
        begin
            isValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, PageValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            transformInfoEntityInterface := TransformInfoEntityBuilder_Package.getInstance;
            pageObjectConfigInterface := PageValidationView'Class (This).getTransformInfoInterface.getObjectConfigInterface;
            allViewsToBeModifiedVector := pageObjectConfigInterface.getGroupTransforms;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Views To Be Modified: ") & Java_Image (allViewsToBeModifiedVector.size), PageValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("get(transformInfoInterface)"));
            end if;
            size := allViewsToBeModifiedVector.size;
            for index in 0 .. (size) - 1 loop
                transformInfoInterface := TransformInfo_Access (allViewsToBeModifiedVector.get (index));
                viewNameOfViewToBeModified := transformInfoInterface.getName;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (PageValidationView'Class (This).getTransformInfoInterface.getName);
                    stringBuffer.append (To_Unbounded_String (" is modifying view: "));
                    stringBuffer.append (viewNameOfViewToBeModified);
                    This.logUtil.putF (stringBuffer.toString, PageValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
                end if;
                httpTransformInfoInterface := TransformInfoHttpInterface_Access (PageValidationView'Class (This).getTransformInfoInterface);
                specifiedTransformInfoInterface := transformInfoEntityInterface.get (viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap, httpTransformInfoInterface.getPageContext);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (PageValidationView'Class (This).getTransformInfoInterface.getName);
                    stringBuffer.append (To_Unbounded_String (" is adding data to view: "));
                    stringBuffer.append (viewNameOfViewToBeModified);
                    This.logUtil.putF (stringBuffer.toString, PageValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
                end if;
                hashMap := StdUtil_Package.getInstance.createHashMap;
                title := specifiedTransformInfoInterface.getName.substring (PageValidationView'Class (This).getTransformInfoInterface.getStoreName.length);
                if (title.compareTo (To_Unbounded_String ("index"))) = (0) then
                    hashMap.put (TitleData_Package.getInstance.TEXT, Java_Box (Java_Image (PageValidationView'Class (This).getTransformInfoInterface.getStoreName) & To_Unbounded_String (" - Home Page")));
                else
                    hashMap.put (TitleData_Package.getInstance.TEXT, Java_Box (Java_Image (PageValidationView'Class (This).getTransformInfoInterface.getStoreName) & To_Unbounded_String (" -") & title));
                end if;
                pageValidation := PageValidation_Package.Create (hashMap);
                if (pageValidation.isValid) = (False) then
                    isValid := False;
                end if;
                if (isValid) = (True) then
                    document := DomDocumentHelper_Package.create;
                    document.appendChild (pageValidation.toXmlNode (document));
                    documentString := XmlDocumentHelper_Package.toString (document);
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                        stringBuffer := StringMaker_Package.Create;
                        stringBuffer.append (viewNameOfViewToBeModified);
                        stringBuffer.append (To_Unbounded_String (" is changing data in "));
                        stringBuffer.append (specifiedTransformInfoInterface.getDataFilePath.toString);
                        stringBuffer.append (To_Unbounded_String (" to the following data:" & ASCII.LF & ""));
                        stringBuffer.append (documentString);
                        This.logUtil.putF (stringBuffer.toString, PageValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                    end if;
                    CustomizerUtil_Package.getInstance.write (specifiedTransformInfoInterface, documentString);
                end if;
            end loop;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), PageValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out PageValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      transformInfoEntityInterface : TransformInfoEntity_Access;
      objectConfig : TransformInfoObjectConfigInterface_Access;
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      allViewsToBeModifiedVector : BasicArrayList_Access;
      size : Integer;
      transformInfoInterface : TransformInfo_Access;
      viewNameOfViewToBeModified : Unbounded_String;
      specifiedTransformInfoInterface : TransformInfoInterface_Access;
      hashMap : HashMap_Access;
      title : Unbounded_String;
      pageValidation : PageValidation_Access;
      index : Integer;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            transformInfoEntityInterface := TransformInfoEntityBuilder_Package.getInstance;
            objectConfig := PageValidationView'Class (This).getTransformInfoInterface.getObjectConfigInterface;
            httpTransformInfoInterface := TransformInfoHttpInterface_Access (PageValidationView'Class (This).getTransformInfoInterface);
            allViewsToBeModifiedVector := objectConfig.getGroupTransforms;
            size := allViewsToBeModifiedVector.size;
            for index in 0 .. (size) - 1 loop
                transformInfoInterface := TransformInfo_Access (allViewsToBeModifiedVector.get (index));
                viewNameOfViewToBeModified := transformInfoInterface.getName;
                specifiedTransformInfoInterface := transformInfoEntityInterface.get (viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap, httpTransformInfoInterface.getPageContext);
                hashMap := StdUtil_Package.getInstance.createHashMap;
                title := specifiedTransformInfoInterface.getName.substring (PageValidationView'Class (This).getTransformInfoInterface.getStoreName.length);
                if (title.compareTo (To_Unbounded_String ("index"))) = (0) then
                    hashMap.put (TitleData_Package.getInstance.TEXT, Java_Box (Java_Image (PageValidationView'Class (This).getTransformInfoInterface.getStoreName) & To_Unbounded_String (" - Home Page")));
                else
                    hashMap.put (TitleData_Package.getInstance.TEXT, Java_Box (Java_Image (PageValidationView'Class (This).getTransformInfoInterface.getStoreName) & To_Unbounded_String (" -") & title));
                end if;
                pageValidation := PageValidation_Package.Create (hashMap);
                if (pageValidation.isValid) = (False) then
                    stringBuffer.append (To_Unbounded_String ("TransformInfo Name for PageValidation:") & specifiedTransformInfoInterface.getName);
                    stringBuffer.append (To_Unbounded_String ("PageValidation:") & Java_Image (hashMap));
                    stringBuffer.append (To_Unbounded_String ("PageValidation Info:") & Java_Image (pageValidation.validationInfo));
                end if;
            end loop;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), PageValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("An auto generated page name was invalid.");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out PageValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out PageValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out PageValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := PageValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package;


