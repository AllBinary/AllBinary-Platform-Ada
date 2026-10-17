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


package body views.admin.storefront.AddValidationStoreFrontView_Package is

   procedure Initialize_Fields (This : in out AddValidationStoreFrontView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AddValidationStoreFrontView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpContextView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.newStoreFrontInterface := StoreFrontInterface_Access (StoreFront_Package.Create (HttpServletRequest_Access (This.getPageContext.getRequest)));
        if (This.newStoreFrontInterface.getName) = (Null_Unbounded_String) then
            This.newStoreFrontInterface.setName (This.getWeblisketSession.getStoreName);
        end if;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return AddValidationStoreFrontView_Access is
      This : constant AddValidationStoreFrontView_Access := new AddValidationStoreFrontView;
   begin
      AddValidationStoreFrontView_Package.Initialize (This.all, transformInfoInterface);
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
            if AbFile_Package.createAbFileFromAbPath (AbPath_Package.Create (This.getStoreViewsPath, StringUtil_Package.getInstance.EMPTY_STRING)).isFile then
                valid := False;
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
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
        stringBuffer.append (URLGLOBALS.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
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
            if AbFile_Package.createAbFileFromAbPath (AbPath_Package.Create (This.getStoreViewsPath, StringUtil_Package.getInstance.EMPTY_STRING)).isFile then
                stringBuffer.append (To_Unbounded_String ("Store name clashes with template name<br/>"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out AddValidationStoreFrontView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out AddValidationStoreFrontView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out AddValidationStoreFrontView) return Unbounded_String is
   begin
        return This.views.ValidationOnlyTempUtil.getInstance.view (This'Unchecked_Access);
   end view;

   procedure toValidationInfoNode (This : in out AddValidationStoreFrontView; document : Document_Access) is
      Java_Result : constant Node_Access := AddValidationStoreFrontView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.storefront.AddValidationStoreFrontView_Package;


