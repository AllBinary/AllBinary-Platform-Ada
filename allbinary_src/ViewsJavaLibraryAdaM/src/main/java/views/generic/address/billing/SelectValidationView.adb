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


package body views.generic_Id.address.billing.SelectValidationView_Package is

   procedure Initialize_Fields (This : in out SelectValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        BillingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return SelectValidationView_Access is
      This : constant SelectValidationView_Access := new SelectValidationView;
   begin
      SelectValidationView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out SelectValidationView) return Boolean is
   begin
        return True;
   end isValid;

   function validationInfo (This : in out SelectValidationView) return Unbounded_String is
   begin
        return MESSAGES.CONTACTADMIN;
   end validationInfo;

   function toValidationInfoDoc (This : in out SelectValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out SelectValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out SelectValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := SelectValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.billing.SelectValidationView_Package;


