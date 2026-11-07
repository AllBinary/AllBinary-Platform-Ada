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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package; use org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package;
with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package; use org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package;
with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References;
with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package;
with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype AdvertisementAreasEntityInterface_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   subtype AdvertisementAreasEntityInterface_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   subtype AdvertisementAreasEntityInterface_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   subtype AdvertisementAreasEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   subtype AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   procedure Initialize_Fields (This : in out AdvertisementAreasEntityFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementAreasEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvertisementAreasEntityFactory_Access is
      This : constant AdvertisementAreasEntityFactory_Access := new AdvertisementAreasEntityFactory;
   begin
      AdvertisementAreasEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return AdvertisementAreasEntityInterface_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return AdvertisementAreasEntityInterface_Access (AdvertisementAreasEntity_Package.Create);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("AdvertisementAreasEntityFactory")), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("org.allbinary.data.tables.AdvertisementEntity");

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package;


