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


with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.HttpComponentView_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package;

package body views.admin.storefront.DeleteValidationStoreFrontView_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   function "=" (Left, Right : TransformInfoInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   procedure Initialize_Fields (This : in out DeleteValidationStoreFrontView'Class) is
   begin
      null;
      This.DeleteValidationStoreFrontView_Field_logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out DeleteValidationStoreFrontView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        StoreFrontComponent_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DeleteValidationStoreFrontView_Access is
      This : constant DeleteValidationStoreFrontView_Access := new DeleteValidationStoreFrontView;
   begin
      DeleteValidationStoreFrontView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out DeleteValidationStoreFrontView) return Boolean is
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
                This.DeleteValidationStoreFrontView_Field_logUtil.put (To_Unbounded_String ("Failed to validate form"), DeleteValidationStoreFrontView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out DeleteValidationStoreFrontView) return Unbounded_String is
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
                This.DeleteValidationStoreFrontView_Field_logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), DeleteValidationStoreFrontView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out DeleteValidationStoreFrontView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out DeleteValidationStoreFrontView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function getTransformInfoInterface (This : in out DeleteValidationStoreFrontView) return TransformInfoInterface_Access is
   begin
        return TransformInfoInterface_Access (StoreFrontComponent_Package.StoreFrontComponent (This).getTransformInfoInterface);
   end getTransformInfoInterface;

   procedure toValidationInfoNode (This : in out DeleteValidationStoreFrontView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := DeleteValidationStoreFrontView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.storefront.DeleteValidationStoreFrontView_Package;


