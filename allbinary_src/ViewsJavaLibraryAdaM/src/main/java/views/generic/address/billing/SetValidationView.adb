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


package body views.generic_Id.address.billing.SetValidationView_Package is

   procedure Initialize_Fields (This : in out SetValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SetValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        BillingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return SetValidationView_Access is
      This : constant SetValidationView_Access := new SetValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out SetValidationView) return Boolean is
   begin
        return True;
   end isValid;

   function validationInfo (This : in out SetValidationView) return Unbounded_String is
   begin
        return MESSAGES.CONTACTADMIN;
   end validationInfo;

   function toValidationInfoDoc (This : in out SetValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out SetValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out SetValidationView) is
      Java_Result : constant Boolean := SetValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out SetValidationView) is
      Java_Result : constant Unbounded_String := SetValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out SetValidationView) is
      Java_Result : constant Document_Access := SetValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out SetValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := SetValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.billing.SetValidationView_Package;


