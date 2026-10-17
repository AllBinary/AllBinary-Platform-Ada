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


package body views.admin.storefront.UpdateValidationStoreFrontView_Package is

   procedure Initialize_Fields (This : in out UpdateValidationStoreFrontView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out UpdateValidationStoreFrontView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        StoreFrontComponent_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return UpdateValidationStoreFrontView_Access is
      This : constant UpdateValidationStoreFrontView_Access := new UpdateValidationStoreFrontView;
   begin
      UpdateValidationStoreFrontView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out UpdateValidationStoreFrontView) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            if (This.newStoreFrontInterface.isValid) = (False) then
                valid := False;
            end if;
            if (StoreFrontFactory_Package.getInstance (This.newStoreFrontInterface.getName)) = (null) then
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

   function validationInfo (This : in out UpdateValidationStoreFrontView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (This.newStoreFrontInterface.isValid) = (False) then
                stringBuffer.append (This.newStoreFrontInterface.validationInfo);
            end if;
            if (StoreFrontFactory_Package.getInstance (This.newStoreFrontInterface.getName)) = (null) then
                stringBuffer.append (To_Unbounded_String ("Store does not exist<br>"));
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

   function toValidationInfoDoc (This : in out UpdateValidationStoreFrontView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out UpdateValidationStoreFrontView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out UpdateValidationStoreFrontView; document : Document_Access) is
      Java_Result : constant Node_Access := UpdateValidationStoreFrontView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.storefront.UpdateValidationStoreFrontView_Package;


