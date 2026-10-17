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


package body views.generic_Id.address.shipping.SelectValidationView_Package is

   procedure Initialize_Fields (This : in out SelectValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return SelectValidationView_Access is
      This : constant SelectValidationView_Access := new SelectValidationView;
   begin
      SelectValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
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

   function toValidationInfoNode (This : in out SelectValidationView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out SelectValidationView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := SelectValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.SelectValidationView_Package;


