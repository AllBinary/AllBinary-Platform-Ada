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


package body org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package is

   procedure Initialize_Fields (This : in out BillingAddressesEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return BillingAddressesEntityFactory_Access is
   begin
        return BillingAddressesEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BillingAddressesEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BillingAddressesEntityFactory_Access is
      This : constant BillingAddressesEntityFactory_Access := new BillingAddressesEntityFactory;
   begin
      BillingAddressesEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out BillingAddressesEntityFactory; userName : Unbounded_String) return StreetAddressesEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return BillingAddressesEntity_Package.Create (userName);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out BillingAddressesEntityFactory; userName : Unbounded_String) is
      Java_Result : constant StreetAddressesEntity_Access := BillingAddressesEntityFactory'Class (This).getInstance (userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := BillingAddressesEntityFactory_Package.Create;

end org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;


