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


package body views.generic_Id.address.shipping.DeleteValidationView_Package is

   procedure Initialize_Fields (This : in out DeleteValidationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DeleteValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (DeleteValidationView'Class (This).getTransformInfoInterface);
        This.value := httpTransformInfoInterface.getPageContext.getRequest.getParameter (StreetAddressData_Package.ID);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DeleteValidationView_Access is
      This : constant DeleteValidationView_Access := new DeleteValidationView;
   begin
      DeleteValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out DeleteValidationView) return Boolean is
      billingAddressesEntity : ShippingAddressesEntity_Access;
   begin
        if (DeleteValidationView'Class (This).getWeblisketSession.getUserName) /= (null) then
            return False;
        end if;
        billingAddressesEntity := ShippingAddressesEntity_Package.Create (DeleteValidationView'Class (This).getWeblisketSession.getUserName);
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

   function toValidationInfoNode (This : in out DeleteValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out DeleteValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := DeleteValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.DeleteValidationView_Package;


