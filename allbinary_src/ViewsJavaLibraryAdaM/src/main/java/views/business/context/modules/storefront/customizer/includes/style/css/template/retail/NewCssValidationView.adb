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


package body views.business.context.modules.storefront.customizer.includes.style.css.template.retail.NewCssValidationView_Package is

   procedure Initialize_Fields (This : in out NewCssValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out NewCssValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        CssCustomizerView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.styleValidationInterface := CssStyleValidation_Package.Create;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return NewCssValidationView_Access is
      This : constant NewCssValidationView_Access := new NewCssValidationView;
   begin
      NewCssValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlDoc (This : in out NewCssValidationView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function isValid (This : in out NewCssValidationView) return Boolean is
   begin
        begin
            begin
                CustomizerUtil_Package.getInstance.insert (This.getTransformInfoInterface, DomNodeInterface_Access (This.styleValidationInterface));
            end;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), NewCssValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out NewCssValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.styleValidationInterface.validationInfo);
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), NewCssValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out NewCssValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out NewCssValidationView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out NewCssValidationView) return Unbounded_String is
   begin
        return This.views.ValidationOnlyTempUtil.getInstance.view (NewCssValidationView_Access'(This'Unchecked_Access));
   end view;

   procedure toValidationInfoNode (This : in out NewCssValidationView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := NewCssValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.includes.style.css.template.retail.NewCssValidationView_Package;


