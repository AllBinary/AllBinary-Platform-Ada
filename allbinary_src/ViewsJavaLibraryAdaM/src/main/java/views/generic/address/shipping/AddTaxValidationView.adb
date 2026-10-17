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


package body views.generic_Id.address.shipping.AddTaxValidationView_Package is

   procedure Initialize_Fields (This : in out AddTaxValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AddTaxValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        ShippingAddressView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return AddTaxValidationView_Access is
      This : constant AddTaxValidationView_Access := new AddTaxValidationView;
   begin
      AddTaxValidationView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out AddTaxValidationView) return Boolean is
      storeFrontInterface : StoreFrontInterface_Access;
      taxInterface : TaxModuleInterface_Access;
      billingAddressesEntity : ShippingAddressesEntity_Access;
      streetAddressList : BasicArrayList_Access;
      size : Integer;
      aStreetAddress : StreetAddress_Access;
      index : Integer;
   begin
        begin
            This.streetAddress := StreetAddress_Package.Create (This.getRequest);
            storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getTransformInfoInterface.getStoreName);
            taxInterface := TaxFactory_Package.getInstance.getInstance (This.abeClientInformation, storeFrontInterface);
            if (taxInterface) = (null) then
                return False;
            end if;
            if (taxInterface.isValid (This.streetAddress, storeFrontInterface)) = (False) then
                return False;
            end if;
            billingAddressesEntity := ShippingAddressesEntity_Package.Create (This.getWeblisketSession.getUserName);
            streetAddressList := billingAddressesEntity.get;
            if (streetAddressList) = (null) then
                return False;
            end if;
            size := streetAddressList.size;
            for index in 0 .. (size) - 1 loop
                aStreetAddress := StreetAddress_Access (streetAddressList.get (index));
                if (aStreetAddress.getName.compareTo (ShippingAddressData_Package.TAX)) = (0) then
                    return False;
                end if;
            end loop;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   --  throws Exception
   function validationInfo (This : in out AddTaxValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      taxInterface : TaxModuleInterface_Access;
      billingAddressesEntity : ShippingAddressesEntity_Access;
      streetAddressList : BasicArrayList_Access;
      size : Integer;
      aStreetAddress : StreetAddress_Access;
      index : Integer;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getTransformInfoInterface.getStoreName);
            taxInterface := TaxFactory_Package.getInstance.getInstance (This.abeClientInformation, storeFrontInterface);
            if (taxInterface) = (null) then
                stringBuffer.append (To_Unbounded_String ("Unable to Load Tax Component<br/>"));
            else
                if (taxInterface.isValid (This.streetAddress, storeFrontInterface)) = (False) then
                    stringBuffer.append (To_Unbounded_String ("Unable to validate address with Tax Component<br/>"));
                end if;
            end if;
            billingAddressesEntity := ShippingAddressesEntity_Package.Create (This.getWeblisketSession.getUserName);
            streetAddressList := billingAddressesEntity.get;
            size := streetAddressList.size;
            for index in 0 .. (size) - 1 loop
                aStreetAddress := StreetAddress_Access (streetAddressList.get (index));
                if (aStreetAddress.getName.compareTo (ShippingAddressData_Package.TAX)) = (0) then
                    stringBuffer.append (To_Unbounded_String ("Not a valid tax location<br/>"));
                end if;
            end loop;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to create validateInfo"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Creating ValidationInfo");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out AddTaxValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out AddTaxValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out AddTaxValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := AddTaxValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.address.shipping.AddTaxValidationView_Package;


