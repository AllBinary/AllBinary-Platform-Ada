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


with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;

package body views.generic_Id.address.shipping.EditValidationView_Package is

   package StreetAddressData_Package renames Standard.org.allbinary.business.user.address.StreetAddressData_Package;
   package ShippingAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   procedure Initialize_Fields (This : in out EditValidationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out EditValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (EditValidationView'Class (This).getTransformInfoInterface);
        This.value := httpTransformInfoInterface.getPageContext.getRequest.getParameter (StreetAddressData_Package.ID);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return EditValidationView_Access is
      This : constant EditValidationView_Access := new EditValidationView;
   begin
      EditValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out EditValidationView) return Boolean is
      billingAddressesEntity : ShippingAddressesEntity_Access;
   begin
        if (EditValidationView'Class (This).getWeblisketSession.getUserName) /= (null) then
            return False;
        end if;
        billingAddressesEntity := ShippingAddressesEntity_Package.Create (EditValidationView'Class (This).getWeblisketSession.getUserName);
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

   function toValidationInfoNode (This : in out EditValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out EditValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := EditValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.EditValidationView_Package;


