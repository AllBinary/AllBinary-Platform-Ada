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


with org.allbinary.business.context.modules.storefront.StoreFront_Package; use org.allbinary.business.context.modules.storefront.StoreFront_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body views.admin.storefront.AddValidationStoreFrontView_Package is

   package StoreFront_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFront_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out AddValidationStoreFrontView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AddValidationStoreFrontView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpContextView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.newStoreFrontInterface := StoreFrontInterface_Access (StoreFront_Package.Create (HttpServletRequest_Access (AddValidationStoreFrontView'Class (This).getPageContext.getRequest)));
        if (This.newStoreFrontInterface.getName) = (Null_Unbounded_String) then
            This.newStoreFrontInterface.setName (AddValidationStoreFrontView'Class (This).getWeblisketSession.getStoreName);
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return AddValidationStoreFrontView_Access is
      This : constant AddValidationStoreFrontView_Access := new AddValidationStoreFrontView;
   begin
      AddValidationStoreFrontView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out AddValidationStoreFrontView) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            if (This.newStoreFrontInterface.isValid) = (False) then
                valid := False;
            end if;
            if (StoreFrontFactory_Package.getInstance (This.newStoreFrontInterface.getName)) /= (null) then
                valid := False;
            end if;
            if AbFile_Package.createAbFileFromAbPath (AbPath_Package.Create (AddValidationStoreFrontView'Class (This).getStoreViewsPath, StringUtil_Package.getInstance.EMPTY_STRING)).isFile then
                valid := False;
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), AddValidationStoreFrontView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   --  throws Exception
   function getStoreViewsPath (This : in out AddValidationStoreFrontView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS_Package.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH);
        stringBuffer.append (This.newStoreFrontInterface.getName);
        return stringBuffer.toString;
   end getStoreViewsPath;

   function validationInfo (This : in out AddValidationStoreFrontView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (This.newStoreFrontInterface.isValid) = (False) then
                stringBuffer.append (This.newStoreFrontInterface.validationInfo);
            end if;
            if (StoreFrontFactory_Package.getInstance (This.newStoreFrontInterface.getName)) /= (null) then
                stringBuffer.append (To_Unbounded_String ("Store name already used<br/>"));
            end if;
            if AbFile_Package.createAbFileFromAbPath (AbPath_Package.Create (AddValidationStoreFrontView'Class (This).getStoreViewsPath, StringUtil_Package.getInstance.EMPTY_STRING)).isFile then
                stringBuffer.append (To_Unbounded_String ("Store name clashes with template name<br/>"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), AddValidationStoreFrontView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out AddValidationStoreFrontView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out AddValidationStoreFrontView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out AddValidationStoreFrontView) return Unbounded_String is
   begin
        return This.views.ValidationOnlyTempUtil.getInstance.view (AddValidationStoreFrontView_Access'(This'Unchecked_Access));
   end view;

   procedure toValidationInfoNode (This : in out AddValidationStoreFrontView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := AddValidationStoreFrontView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.storefront.AddValidationStoreFrontView_Package;


