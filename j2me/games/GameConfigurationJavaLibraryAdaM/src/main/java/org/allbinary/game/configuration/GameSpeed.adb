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


with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.game.configuration.GameConfiguration_Package; use org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.configuration.GameSpeed_Package is

   procedure Initialize_Fields (This : in out GameSpeed'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameSpeed'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameSpeed_Access is
      This : constant GameSpeed_Access := new GameSpeed;
   begin
      GameSpeed_Package.Initialize (This.all);
      return This;
   end Create;


   function getSpeed (This : in out GameSpeed) return Integer is
      speedGameConfiguration : GameConfiguration_Access;
   begin
        speedGameConfiguration := GameConfiguration_Access (GameConfigurationCentral_Package.getInstance.SPEED);
        return (((Integer (speedGameConfiguration.getMaxValue)) - (Integer (speedGameConfiguration.getValue))) + (1));
   end getSpeed;

   function getDelay (This : in out GameSpeed) return Integer is
      speedGameConfiguration : GameConfiguration_Access;
   begin
        speedGameConfiguration := GameConfiguration_Access (GameConfigurationCentral_Package.getInstance.SPEED);
        return (19) * (((Integer (speedGameConfiguration.getMaxValue)) - (Integer (speedGameConfiguration.getValue))));
   end getDelay;

   function getInstance return GameSpeed_Access is
   begin
        return GameSpeed_Access (GameSpeed_Package.instance);
   end getInstance;

begin
   null;
   instance := GameSpeed_Package.Create;

end org.allbinary.game.configuration.GameSpeed_Package;


