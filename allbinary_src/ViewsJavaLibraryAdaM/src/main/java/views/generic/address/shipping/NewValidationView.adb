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


package body views.generic_Id.address.shipping.NewValidationView_Package is

   procedure Initialize_Fields (This : in out NewValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NewValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return NewValidationView_Access is
      This : constant NewValidationView_Access := new NewValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out NewValidationView) return Boolean is
   begin
        This.streetAddress := StreetAddress_Package.Create;
        return True;
   end isValid;

   function validationInfo (This : in out NewValidationView) return Unbounded_String is
   begin
        return To_Unbounded_String ("Please contact the administrator.");
   end validationInfo;

   function toValidationInfoDoc (This : in out NewValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out NewValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out NewValidationView) is
      Java_Result : constant Boolean := NewValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out NewValidationView) is
      Java_Result : constant Unbounded_String := NewValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out NewValidationView) is
      Java_Result : constant Document_Access := NewValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out NewValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := NewValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.NewValidationView_Package;


