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


package body views.generic_Id.address.billing.EditValidationView_Package is

   procedure Initialize_Fields (This : in out EditValidationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out EditValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        BillingAddressView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.value := This.getPageContext.getRequest.getParameter (StreetAddressData_Package.ID);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return EditValidationView_Access is
      This : constant EditValidationView_Access := new EditValidationView;
   begin
      EditValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out EditValidationView) return Boolean is
      billingAddressesEntity : BillingAddressesEntity_Access;
   begin
        if (This.getWeblisketSession.getUserName) /= (null) then
            return False;
        end if;
        billingAddressesEntity := BillingAddressesEntity_Package.Create (This.getWeblisketSession.getUserName);
        This.streetAddress := billingAddressesEntity.get (This.value);
        if (This.streetAddress) = (null) then
            return False;
        end if;
        return This.streetAddress.isValid;
   end isValid;

   function validationInfo (This : in out EditValidationView) return Unbounded_String is
   begin
        return This.streetAddress.validationInfo;
   end validationInfo;

   function toValidationInfoDoc (This : in out EditValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out EditValidationView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out EditValidationView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := EditValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.billing.EditValidationView_Package;


