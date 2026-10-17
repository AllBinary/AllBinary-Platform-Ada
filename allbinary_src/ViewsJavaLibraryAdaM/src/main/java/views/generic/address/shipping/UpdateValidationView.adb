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


   procedure Initialize (This : in out UpdateValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return UpdateValidationView_Access is
      This : constant UpdateValidationView_Access := new UpdateValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
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

   function toValidationInfoNode (This : in out UpdateValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out UpdateValidationView) is
      Java_Result : constant Boolean := UpdateValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out UpdateValidationView) is
      Java_Result : constant Unbounded_String := UpdateValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out UpdateValidationView) is
      Java_Result : constant Document_Access := UpdateValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out UpdateValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := UpdateValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.UpdateValidationView_Package;


