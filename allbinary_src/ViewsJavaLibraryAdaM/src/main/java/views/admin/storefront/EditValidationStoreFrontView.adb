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


package body views.admin.storefront.EditValidationStoreFrontView_Package is

   procedure Initialize_Fields (This : in out EditValidationStoreFrontView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out EditValidationStoreFrontView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        StoreFrontComponent_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return EditValidationStoreFrontView_Access is
      This : constant EditValidationStoreFrontView_Access := new EditValidationStoreFrontView;
   begin
      EditValidationStoreFrontView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out EditValidationStoreFrontView) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            if (This.newStoreFrontInterface.isNameValid) = (False) then
                valid := False;
            end if;
            if (StoreFrontFactory_Package.getInstance (This.newStoreFrontInterface.getName)) = (null) then
                valid := False;
            end if;
            This.newStoreFrontInterface := StoreFrontFactory_Package.getInstance (This.newStoreFrontInterface.getName);
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), EditValidationStoreFrontView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out EditValidationStoreFrontView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (This.newStoreFrontInterface.isNameValid) = (False) then
                stringBuffer.append (This.newStoreFrontInterface.nameValidationInfo);
            end if;
            if (StoreFrontFactory_Package.getInstance (This.newStoreFrontInterface.getName)) = (null) then
                stringBuffer.append (Java_Image (This.newStoreFrontInterface) & To_Unbounded_String (" does not exist.<br>"));
            end if;
            return To_Unbounded_String ("Unkown Error");
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), EditValidationStoreFrontView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out EditValidationStoreFrontView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out EditValidationStoreFrontView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out EditValidationStoreFrontView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := EditValidationStoreFrontView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.storefront.EditValidationStoreFrontView_Package;


