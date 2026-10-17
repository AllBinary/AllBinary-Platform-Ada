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


package body views.business.context.modules.storefront.customizer.hedges.header.InsertHeaderValidationView_Package is

   procedure Initialize_Fields (This : in out InsertHeaderValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.LOGOPATH := To_Unbounded_String ("logo/");
   end Initialize_Fields;


   procedure Initialize (This : in out InsertHeaderValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
      multipartRequestHashMap : HashMap_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      fullPath : Unbounded_String;
   begin
        TopBarView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        multipartRequestHashMap := MultipartRequestParams_Package.Create (This.getPageContext).toHashMap;
        storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getWeblisketSession.getStoreName);
        fullPath := Java_Image ((URLGLOBALS.getWebappPath) + (storeFrontInterface.getCurrentHostNamePath)) & This.LOGOPATH;
        multipartRequestHashMap.put (LogoData_Package.getInstance.IMAGEPATH, fullPath);
        This.heading := HeadingValidation_Package.Create (multipartRequestHashMap);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return InsertHeaderValidationView_Access is
      This : constant InsertHeaderValidationView_Access := new InsertHeaderValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlDoc (This : in out InsertHeaderValidationView) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   function isValid (This : in out InsertHeaderValidationView) return Boolean is
      isValid : Boolean;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("topbarValidation"), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            isValid := This.heading.isValid;
            if (isValid) = (True) then
                CustomizerUtil_Package.getInstance.insert (This.getTransformInfoInterface, DomNodeInterface_Access (This'Unchecked_Access));
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

   function validationInfo (This : in out InsertHeaderValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.heading.validationInfo);
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

   function toValidationInfoDoc (This : in out InsertHeaderValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out InsertHeaderValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure toXmlDoc (This : in out InsertHeaderValidationView) is
      Java_Result : constant Document_Access := InsertHeaderValidationView'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

   procedure isValid (This : in out InsertHeaderValidationView) is
      Java_Result : constant Boolean := InsertHeaderValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out InsertHeaderValidationView) is
      Java_Result : constant Unbounded_String := InsertHeaderValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out InsertHeaderValidationView) is
      Java_Result : constant Document_Access := InsertHeaderValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out InsertHeaderValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := InsertHeaderValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.hedges.header.InsertHeaderValidationView_Package;


