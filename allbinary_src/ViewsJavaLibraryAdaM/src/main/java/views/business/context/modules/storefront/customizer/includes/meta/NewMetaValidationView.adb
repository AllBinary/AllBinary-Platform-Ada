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


package body views.business.context.modules.storefront.customizer.includes.meta.NewMetaValidationView_Package is

   procedure Initialize_Fields (This : in out NewMetaValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out NewMetaValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        MetaView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return NewMetaValidationView_Access is
      This : constant NewMetaValidationView_Access := new NewMetaValidationView;
   begin
      NewMetaValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlDoc (This : in out NewMetaValidationView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function isValid (This : in out NewMetaValidationView) return Boolean is
   begin
        begin
            begin
                CustomizerUtil_Package.getInstance.insert (This.getTransformInfoInterface, DomNodeInterface_Access (NewMetaValidationView_Access'(This'Unchecked_Access)));
            end;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), NewMetaValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out NewMetaValidationView) return Unbounded_String is
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
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), NewMetaValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out NewMetaValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out NewMetaValidationView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out NewMetaValidationView) return Unbounded_String is
   begin
        return This.views.ValidationOnlyTempUtil.getInstance.view (NewMetaValidationView_Access'(This'Unchecked_Access));
   end view;

   procedure toValidationInfoNode (This : in out NewMetaValidationView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := NewMetaValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.includes.meta.NewMetaValidationView_Package;


