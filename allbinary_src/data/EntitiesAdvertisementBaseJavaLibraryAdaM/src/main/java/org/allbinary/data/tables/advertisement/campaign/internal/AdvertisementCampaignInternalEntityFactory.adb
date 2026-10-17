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


package body org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package is

   procedure Initialize_Fields (This : in out AdvertisementCampaignInternalEntityFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementCampaignInternalEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvertisementCampaignInternalEntityFactory_Access is
      This : constant AdvertisementCampaignInternalEntityFactory_Access := new AdvertisementCampaignInternalEntityFactory;
   begin
      AdvertisementCampaignInternalEntityFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return AdvertisementCampaignInternalEntityInterface_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return AdvertisementCampaignInternalEntityInterface_Access (AdvertisementCampaignInternalEntity_Package.Create);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("AdvertisementCampaignEntityFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("org.allbinary.data.tables.AdvertisementCampaignEntity");

end org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory_Package;


