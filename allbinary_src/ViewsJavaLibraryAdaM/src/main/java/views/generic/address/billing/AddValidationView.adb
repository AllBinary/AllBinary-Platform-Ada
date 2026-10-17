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


   procedure Initialize (This : in out AddValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        BillingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return AddValidationView_Access is
      This : constant AddValidationView_Access := new AddValidationView;
   begin
      AddValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
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

   function toValidationInfoNode (This : in out AddValidationView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out AddValidationView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := AddValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.billing.AddValidationView_Package;


