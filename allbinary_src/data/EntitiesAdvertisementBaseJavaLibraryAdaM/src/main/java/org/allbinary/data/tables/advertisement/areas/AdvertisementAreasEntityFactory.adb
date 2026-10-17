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


package body org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package is

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
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("AdvertisementAreasEntityFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("org.allbinary.data.tables.AdvertisementEntity");

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package;


