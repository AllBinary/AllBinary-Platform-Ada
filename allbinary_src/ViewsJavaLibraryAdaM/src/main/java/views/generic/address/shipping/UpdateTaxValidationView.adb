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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.commerce.money.tax.TaxFactory_Package; use org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;

package body views.generic_Id.address.shipping.UpdateTaxValidationView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ShippingAddressData_Package renames Standard.org.allbinary.business.user.address.ShippingAddressData_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package TaxFactory_Package renames Standard.org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
   package ShippingAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
   procedure Initialize_Fields (This : in out UpdateTaxValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UpdateTaxValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UpdateTaxValidationView_Access is
      This : constant UpdateTaxValidationView_Access := new UpdateTaxValidationView;
   begin
      UpdateTaxValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
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
        This.streetAddress := StreetAddress_Package.Create (UpdateTaxValidationView'Class (This).getRequest);
        storeFrontInterface := StoreFrontFactory_Package.getInstance (UpdateTaxValidationView'Class (This).getTransformInfoInterface.getStoreName);
        if (TaxFactory_Package.getInstance.getInstance (This.abeClientInformation, storeFrontInterface).isValid (This.streetAddress, storeFrontInterface)) = (False) then
            return False;
        end if;
        billingAddressesEntity := ShippingAddressesEntity_Package.Create (UpdateTaxValidationView'Class (This).getWeblisketSession.getUserName);
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

   function toValidationInfoNode (This : in out UpdateTaxValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out UpdateTaxValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UpdateTaxValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.UpdateTaxValidationView_Package;


