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


package body views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package is

   procedure Initialize_Fields (This : in out InsertThemeValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out InsertThemeValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        ThemeCustomizerView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, This'Unchecked_Access, To_Unbounded_String ("started"));
        end if;
        This.requestHashMap := NameSpaceRequestParams_Package.Create (This.getPageContext).toHashMap;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, This'Unchecked_Access, To_Unbounded_String ("begin loading theme"));
        end if;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return InsertThemeValidationView_Access is
      This : constant InsertThemeValidationView_Access := new InsertThemeValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
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
                This.logUtil.putF (To_Unbounded_String ("Started Validation"), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            themeValidation := ThemeValidation_Package.Create (This.getTransformInfoInterface, This.requestHashMap);
            if (themeValidation.isValid) = (False) then
                isValid := False;
            end if;
            This.validationInterface := themeValidation.getCssStyleValidation;
            isValid := This.validationInterface.isValid;
            if (isValid) = (True) then
                CustomizerUtil_Package.getInstance.insert (This.getTransformInfoInterface, DomNodeInterface_Access (This.validationInterface));
            end if;
            return isValid;
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
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out InsertThemeValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out InsertThemeValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out InsertThemeValidationView) return Unbounded_String is
   begin
        begin
            return StoreCustomizerComponentUtil_Package.getInstance.generate (This.abeClientInformation, This.getTransformInfoInterface);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlDoc (This : in out InsertThemeValidationView) is
      Java_Result : constant Document_Access := InsertThemeValidationView'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

   procedure isValid (This : in out InsertThemeValidationView) is
      Java_Result : constant Boolean := InsertThemeValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out InsertThemeValidationView) is
      Java_Result : constant Unbounded_String := InsertThemeValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out InsertThemeValidationView) is
      Java_Result : constant Document_Access := InsertThemeValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out InsertThemeValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := InsertThemeValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure view (This : in out InsertThemeValidationView) is
      Java_Result : constant Unbounded_String := InsertThemeValidationView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.business.context.modules.storefront.customizer.includes.style.theme.InsertThemeValidationView_Package;


