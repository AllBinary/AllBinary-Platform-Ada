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


with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package; use org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package; use org.allbinary.logic.visual.theme.ThemeValidation_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
with views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package; use views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;

package body views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package NameSpaceRequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ThemeValidation_Package renames Standard.org.allbinary.logic.visual.theme.ThemeValidation_Package;
   package CustomizerUtil_Package renames Standard.views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
   package StoreCustomizerComponentUtil_Package renames Standard.views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;
   procedure Initialize_Fields (This : in out InsertThemeValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out InsertThemeValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        ThemeCustomizerView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, InsertThemeValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("started"));
        end if;
        This.requestHashMap := NameSpaceRequestParams_Package.Create (InsertThemeValidationView'Class (This).getPageContext).toHashMap;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, InsertThemeValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("begin loading theme"));
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return InsertThemeValidationView_Access is
      This : constant InsertThemeValidationView_Access := new InsertThemeValidationView;
   begin
      InsertThemeValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlDoc (This : in out InsertThemeValidationView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function isValid (This : in out InsertThemeValidationView) return Boolean is
      isValid : Boolean;
      themeValidation : ThemeValidation_Access;
   begin
        begin
            isValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Started Validation"), InsertThemeValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            themeValidation := ThemeValidation_Package.Create (InsertThemeValidationView'Class (This).getTransformInfoInterface, This.requestHashMap);
            if (themeValidation.isValid) = (False) then
                isValid := False;
            end if;
            This.validationInterface := themeValidation.getCssStyleValidation;
            isValid := This.validationInterface.isValid;
            if (isValid) = (True) then
                CustomizerUtil_Package.getInstance.insert (InsertThemeValidationView'Class (This).getTransformInfoInterface, DomNodeInterface_Access (This.validationInterface));
            end if;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), InsertThemeValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out InsertThemeValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), InsertThemeValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out InsertThemeValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out InsertThemeValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out InsertThemeValidationView) return Unbounded_String is
   begin
        begin
            return StoreCustomizerComponentUtil_Package.getInstance.generate (This.abeClientInformation, InsertThemeValidationView'Class (This).getTransformInfoInterface);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, InsertThemeValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toValidationInfoNode (This : in out InsertThemeValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := InsertThemeValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package;


