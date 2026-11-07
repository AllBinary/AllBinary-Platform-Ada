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


with org.allbinary.data.tables.user.address.StreetAddressesEntity_Package; use org.allbinary.data.tables.user.address.StreetAddressesEntity_Package;
with org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package; use org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package;
with org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype StreetAddressesEntity_Access is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access;
   function "=" (Left, Right : StreetAddressesEntity_Access) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";
   subtype StreetAddressesEntity_Access_Array is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array;
   function "=" (Left, Right : StreetAddressesEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";
   subtype StreetAddressesEntity_Access_Array_Access is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array_Access;
   function "=" (Left, Right : StreetAddressesEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";
   subtype StreetAddressesEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array_Access_Array;
   function "=" (Left, Right : StreetAddressesEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";
   subtype StreetAddressesEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References.StreetAddressesEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StreetAddressesEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.address.StreetAddressesEntity_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out BillingAddressesEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return BillingAddressesEntityFactory_Access is
   begin
        return BillingAddressesEntityFactory_Access (BillingAddressesEntityFactory_Package.instance);
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
            return StreetAddressesEntity_Access (BillingAddressesEntity_Package.Create (userName));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, BillingAddressesEntityFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out BillingAddressesEntityFactory; userName : Unbounded_String) is
      Java_Result : constant StreetAddressesEntity_Access := BillingAddressesEntityFactory'Class (This).getInstance (userName => userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := BillingAddressesEntityFactory_Package.Create;

end org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory_Package;


