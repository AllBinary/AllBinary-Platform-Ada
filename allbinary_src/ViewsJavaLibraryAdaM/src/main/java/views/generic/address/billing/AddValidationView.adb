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


package body views.generic_Id.address.billing.AddValidationView_Package is

   procedure Initialize_Fields (This : in out AddValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AddValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        BillingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return AddValidationView_Access is
      This : constant AddValidationView_Access := new AddValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out AddValidationView) return Boolean is
   begin
        This.streetAddress := StreetAddress_Package.Create (This.getRequest);
        if (This.streetAddress.isValid) = (False) then
            return False;
        end if;
        return True;
   end isValid;

   function validationInfo (This : in out AddValidationView) return Unbounded_String is
   begin
        return This.streetAddress.validationInfo;
   end validationInfo;

   function toValidationInfoDoc (This : in out AddValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out AddValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out AddValidationView) is
      Java_Result : constant Boolean := AddValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out AddValidationView) is
      Java_Result : constant Unbounded_String := AddValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out AddValidationView) is
      Java_Result : constant Document_Access := AddValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out AddValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := AddValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.billing.AddValidationView_Package;


