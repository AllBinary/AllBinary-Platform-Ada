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


package body views.generic_Id.address.shipping.UpdateTaxValidationView_Package is

   procedure Initialize_Fields (This : in out UpdateTaxValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UpdateTaxValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return UpdateTaxValidationView_Access is
      This : constant UpdateTaxValidationView_Access := new UpdateTaxValidationView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out UpdateTaxValidationView) return Boolean is
      storeFrontInterface : StoreFrontInterface_Access;
      billingAddressesEntity : ShippingAddressesEntity_Access;
      streetAddressList : BasicArrayList_Access;
      count : Integer;
      size : Integer;
      aStreetAddress : StreetAddress_Access;
      index : Integer;
   begin
        This.streetAddress := StreetAddress_Package.Create (This.getRequest);
        storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getTransformInfoInterface.getStoreName);
        if (TaxFactory_Package.getInstance.getInstance (This.abeClientInformation, storeFrontInterface).isValid (This.streetAddress, storeFrontInterface)) = (False) then
            return False;
        end if;
        billingAddressesEntity := ShippingAddressesEntity_Package.Create (This.getWeblisketSession.getUserName);
        streetAddressList := billingAddressesEntity.get;
        if (streetAddressList) = (null) then
            return False;
        end if;
        count := 0;
        size := streetAddressList.size;
        for index in 0 .. (size) - 1 loop
            aStreetAddress := StreetAddress_Access (streetAddressList.get (index));
            if (aStreetAddress.getName.compareTo (ShippingAddressData_Package.TAX)) = (0) then
                count := count + 1;
            end if;
        end loop;
        if (count) /= (1) then
            return False;
        end if;
        return True;
   end isValid;

   function validationInfo (This : in out UpdateTaxValidationView) return Unbounded_String is
   begin
        return To_Unbounded_String ("Unable to update tax location.");
   end validationInfo;

   function toValidationInfoDoc (This : in out UpdateTaxValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out UpdateTaxValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out UpdateTaxValidationView) is
      Java_Result : constant Boolean := UpdateTaxValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out UpdateTaxValidationView) is
      Java_Result : constant Unbounded_String := UpdateTaxValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out UpdateTaxValidationView) is
      Java_Result : constant Document_Access := UpdateTaxValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out UpdateTaxValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := UpdateTaxValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.UpdateTaxValidationView_Package;


