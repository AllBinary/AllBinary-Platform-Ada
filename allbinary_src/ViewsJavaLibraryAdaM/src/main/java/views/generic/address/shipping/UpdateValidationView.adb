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


package body views.generic_Id.address.shipping.UpdateValidationView_Package is

   procedure Initialize_Fields (This : in out UpdateValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UpdateValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UpdateValidationView_Access is
      This : constant UpdateValidationView_Access := new UpdateValidationView;
   begin
      UpdateValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out UpdateValidationView) return Boolean is
   begin
        This.streetAddress := StreetAddress_Package.Create (This.getRequest);
        if (This.streetAddress.isValid) = (False) then
            return False;
        end if;
        return This.streetAddress.isValid;
   end isValid;

   function validationInfo (This : in out UpdateValidationView) return Unbounded_String is
   begin
        return This.streetAddress.validationInfo;
   end validationInfo;

   function toValidationInfoDoc (This : in out UpdateValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out UpdateValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out UpdateValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UpdateValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.UpdateValidationView_Package;


