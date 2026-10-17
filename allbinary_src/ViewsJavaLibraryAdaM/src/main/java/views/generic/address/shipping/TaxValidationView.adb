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


package body views.generic_Id.address.shipping.TaxValidationView_Package is

   procedure Initialize_Fields (This : in out TaxValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TaxValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return TaxValidationView_Access is
      This : constant TaxValidationView_Access := new TaxValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out TaxValidationView) return Boolean is
      billingAddressesEntity : ShippingAddressesEntity_Access;
      streetAddressList : BasicArrayList_Access;
      size : Integer;
      aStreetAddress : StreetAddress_Access;
      index : Integer;
   begin
        billingAddressesEntity := ShippingAddressesEntity_Package.Create (This.getWeblisketSession.getUserName);
        streetAddressList := billingAddressesEntity.get;
        if (streetAddressList) = (null) then
            return False;
        end if;
        size := streetAddressList.size;
        for index in 0 .. (size) - 1 loop
            aStreetAddress := StreetAddress_Access (streetAddressList.get (index));
            if (aStreetAddress.getName.compareTo (ShippingAddressData_Package.TAX)) = (0) then
                This.streetAddress := aStreetAddress;
                return True;
            end if;
        end loop;
        return False;
   end isValid;

   function validationInfo (This : in out TaxValidationView) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end validationInfo;

   function toValidationInfoDoc (This : in out TaxValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out TaxValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out TaxValidationView) is
      Java_Result : constant Boolean := TaxValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out TaxValidationView) is
      Java_Result : constant Unbounded_String := TaxValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out TaxValidationView) is
      Java_Result : constant Document_Access := TaxValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out TaxValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := TaxValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.TaxValidationView_Package;


