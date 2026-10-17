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


package body org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package is

   procedure Initialize_Fields (This : in out ShippingAddressesEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ShippingAddressesEntityFactory_Access is
   begin
        return ShippingAddressesEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ShippingAddressesEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ShippingAddressesEntityFactory_Access is
      This : constant ShippingAddressesEntityFactory_Access := new ShippingAddressesEntityFactory;
   begin
      ShippingAddressesEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out ShippingAddressesEntityFactory; userName : Unbounded_String) return StreetAddressesEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return ShippingAddressesEntity_Package.Create (userName);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getShippingAddressesEntityInstance()"), e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out ShippingAddressesEntityFactory; userName : Unbounded_String) is
      Java_Result : constant StreetAddressesEntity_Access := ShippingAddressesEntityFactory'Class (This).getInstance (userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ShippingAddressesEntityFactory_Package.Create;

end org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;


