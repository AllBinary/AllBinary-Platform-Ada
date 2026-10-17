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


package body org.allbinary.game.configuration.GameConfigurationGauge_Package is

   procedure Initialize_Fields (This : in out GameConfigurationGauge'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameConfigurationGauge'Class; gameConfiguration : GameConfiguration_Access) is
   begin
        Gauge_Package.Initialize (This, gameConfiguration.getName, gameConfiguration.isModifiable.booleanValue, (gameConfiguration.getMaxValue.intValue) - (gameConfiguration.getMinValue.intValue), (gameConfiguration.getValue.intValue) - (gameConfiguration.getMinValue.intValue));
   end Initialize;

   function Create (gameConfiguration : GameConfiguration_Access) return GameConfigurationGauge_Access is
      This : constant GameConfigurationGauge_Access := new GameConfigurationGauge;
   begin
      GameConfigurationGauge_Package.Initialize (This.all, gameConfiguration);
      return This;
   end Create;

end org.allbinary.game.configuration.GameConfigurationGauge_Package;


