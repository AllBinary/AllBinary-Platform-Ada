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


package body views.business.context.modules.storefront.customizer.includes.style.theme.NewThemeValidationView_Package is

   procedure Initialize_Fields (This : in out NewThemeValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out NewThemeValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        CssCustomizerView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.styleValidationInterface := CssStyleValidation_Package.Create;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return NewThemeValidationView_Access is
      This : constant NewThemeValidationView_Access := new NewThemeValidationView;
   begin
      NewThemeValidationView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlDoc (This : in out NewThemeValidationView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function isValid (This : in out NewThemeValidationView) return Boolean is
   begin
        begin
            CustomizerUtil_Package.getInstance.insert (This.getTransformInfoInterface, DomNodeInterface_Access (This.styleValidationInterface));
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out NewThemeValidationView) return Unbounded_String is
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
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out NewThemeValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out NewThemeValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out NewThemeValidationView) return Unbounded_String is
   begin
        return This.views.ValidationOnlyTempUtil.getInstance.view (This'Unchecked_Access);
   end view;

   procedure toValidationInfoNode (This : in out NewThemeValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := NewThemeValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.includes.style.theme.NewThemeValidationView_Package;


