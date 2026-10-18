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


package body views.generic_Id.address.shipping.ValidationView_Package is

   procedure Initialize_Fields (This : in out ValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        ShippingAddressesView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return ValidationView_Access is
      This : constant ValidationView_Access := new ValidationView;
   begin
      ValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out ValidationView) return Boolean is
      billingAddressesEntity : ShippingAddressesEntity_Access;
      size : Integer;
      streetAddress : StreetAddress_Access;
      index : Integer;
   begin
        billingAddressesEntity := ShippingAddressesEntity_Package.Create (ValidationView'Class (This).getWeblisketSession.getUserName);
        This.streetAddressList := billingAddressesEntity.get;
        if (This.streetAddressList) = (null) then
            return False;
        end if;
        size := This.streetAddressList.size;
        for index in 0 .. (size) - 1 loop
            streetAddress := StreetAddress_Access (This.streetAddressList.get (index));
            if (streetAddress.isValid) = (False) then
                This.streetAddressList.remove (streetAddress);
            end if;
        end loop;
        if (This.streetAddressList.size) < (1) then
            return False;
        end if;
        return True;
   end isValid;

   function validationInfo (This : in out ValidationView) return Unbounded_String is
   begin
        return To_Unbounded_String ("No Shipping Addresses to display.<br />");
   end validationInfo;

   function toValidationInfoDoc (This : in out ValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out ValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out ValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.ValidationView_Package;


