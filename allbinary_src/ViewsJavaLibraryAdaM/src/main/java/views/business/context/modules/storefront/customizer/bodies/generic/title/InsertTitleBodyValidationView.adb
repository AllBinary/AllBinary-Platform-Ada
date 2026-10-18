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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
with views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package; use views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;

package body views.business.context.modules.storefront.customizer.bodies.generic_Id.title.InsertTitleBodyValidationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TitleBodyValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;
   package CustomizerUtil_Package renames Standard.views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
   package StoreCustomizerComponentUtil_Package renames Standard.views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;
   procedure Initialize_Fields (This : in out InsertTitleBodyValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InsertTitleBodyValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      requestHashMap : HashMap_Access;
   begin
        TitleBodyCustomizerView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        requestHashMap := RequestParams_Package.Create (InsertTitleBodyValidationView'Class (This).getPageContext).toHashMap;
        This.titleBody := TitleBodyValidation_Package.Create (requestHashMap);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return InsertTitleBodyValidationView_Access is
      This : constant InsertTitleBodyValidationView_Access := new InsertTitleBodyValidationView;
   begin
      InsertTitleBodyValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlDoc (This : in out InsertTitleBodyValidationView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function isValid (This : in out InsertTitleBodyValidationView) return Boolean is
      isValid : Boolean;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Started Validation"), InsertTitleBodyValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            isValid := This.titleBody.isValid;
            if (isValid) = (True) then
                CustomizerUtil_Package.getInstance.insert (InsertTitleBodyValidationView'Class (This).getTransformInfoInterface, DomNodeInterface_Access (This.titleBody));
            end if;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), InsertTitleBodyValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out InsertTitleBodyValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.titleBody.validationInfo);
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), InsertTitleBodyValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out InsertTitleBodyValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out InsertTitleBodyValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out InsertTitleBodyValidationView) return Unbounded_String is
   begin
        begin
            return StoreCustomizerComponentUtil_Package.getInstance.generate (This.abeClientInformation, InsertTitleBodyValidationView'Class (This).getTransformInfoInterface);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, InsertTitleBodyValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toValidationInfoNode (This : in out InsertTitleBodyValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := InsertTitleBodyValidationView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.bodies.generic_Id.title.InsertTitleBodyValidationView_Package;


