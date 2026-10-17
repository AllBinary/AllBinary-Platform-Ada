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


package body views.generic_Id.address.billing.DeleteValidationView_Package is

   procedure Initialize_Fields (This : in out DeleteValidationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DeleteValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
   begin
        BillingAddressView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (This.getTransformInfoInterface);
        This.value := httpTransformInfoInterface.getPageContext.getRequest.getParameter (StreetAddressData_Package.ID);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return DeleteValidationView_Access is
      This : constant DeleteValidationView_Access := new DeleteValidationView;
   begin
      DeleteValidationView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out DeleteValidationView) return Boolean is
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

   function validationInfo (This : in out DeleteValidationView) return Unbounded_String is
   begin
        return This.streetAddress.validationInfo;
   end validationInfo;

   function toValidationInfoDoc (This : in out DeleteValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out DeleteValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out DeleteValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := DeleteValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.billing.DeleteValidationView_Package;


