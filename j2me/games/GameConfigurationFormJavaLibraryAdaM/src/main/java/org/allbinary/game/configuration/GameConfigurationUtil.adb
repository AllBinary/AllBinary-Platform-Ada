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


package body org.allbinary.game.configuration.GameConfigurationUtil_Package is

   procedure Initialize_Fields (This : in out GameConfigurationUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.GAUGE_UPDATE := To_Unbounded_String ("Gauge Update: ");
      This.FROM := To_Unbounded_String (" from: ");
      This.TO := To_Unbounded_String (" to: ");
      This.COMPETITION_VALUE := 1;
   end Initialize_Fields;

   procedure Initialize (This : in out GameConfigurationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameConfigurationUtil_Access is
      This : constant GameConfigurationUtil_Access := new GameConfigurationUtil;
   begin
      GameConfigurationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameConfigurationUtil_Access is
   begin
        return GameConfigurationUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure change (This : in out GameConfigurationUtil; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class; gauge_Param : access GameConfigurationGauge_Package.GameConfigurationGauge'Class) is
      gameOptionsForm : constant GameOptionsForm_Access := GameOptionsForm_Access (gameOptionsForm_Param);
      gauge : constant GameConfigurationGauge_Access := GameConfigurationGauge_Access (gauge_Param);
      gameConfigurationSingleton : GameConfigurationSingleton_Access;
      gameConfiguration : GameConfiguration_Access;
   begin
        This.update (gauge);
        gameConfigurationSingleton := GameConfigurationSingleton_Package.getInstance;
        gameConfiguration := gameConfigurationSingleton.getInstanceByName (gauge.getLabel);
        This.updateChallange (gameOptionsForm, gameConfiguration);
   end change;

   --  throws Exception
   procedure update (This : in out GameConfigurationUtil; gauge_Param : access GameConfigurationGauge_Package.GameConfigurationGauge'Class) is
      gauge : constant GameConfigurationGauge_Access := GameConfigurationGauge_Access (gauge_Param);
      gameConfigurationSingleton : GameConfigurationSingleton_Access;
      gameConfiguration : GameConfiguration_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      value : Integer;
      stringBuffer : StringMaker_Access;
   begin
        gameConfigurationSingleton := GameConfigurationSingleton_Package.getInstance;
        gameConfiguration := gameConfigurationSingleton.getInstanceByName (gauge.getLabel);
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        value := smallIntegerSingletonFactory.getAt ((gauge.getValue) + (gameConfiguration.getMinValue.intValue));
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.GAUGE_UPDATE);
        stringBuffer.append (gameConfiguration.getName);
        stringBuffer.append (This.FROM);
        stringBuffer.appendint (Integer (gameConfiguration.getValue.intValue));
        stringBuffer.append (This.TO);
        stringBuffer.appendint (Integer (value.intValue));
        This.logUtil.putF (stringBuffer.toString, GameConfigurationUtil_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
        gameConfiguration.setValue (value);
   end update;

   --  throws Exception
   procedure setDefault (This : in out GameConfigurationUtil; gauge_Param : access GameConfigurationGauge_Package.GameConfigurationGauge'Class) is
      gauge : constant GameConfigurationGauge_Access := GameConfigurationGauge_Access (gauge_Param);
      gameConfigurationSingleton : GameConfigurationSingleton_Access;
      gameConfiguration : GameConfiguration_Access;
      stringBuffer : StringMaker_Access;
   begin
        gameConfigurationSingleton := GameConfigurationSingleton_Package.getInstance;
        gameConfiguration := gameConfigurationSingleton.getInstanceByName (gauge.getLabel);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Gauge Default: "));
        stringBuffer.append (gameConfiguration.getName);
        stringBuffer.append (This.TO);
        stringBuffer.appendint (Integer (gameConfiguration.getDefaultValue.intValue));
        This.logUtil.putF (stringBuffer.toString, GameConfigurationUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("setDefault"));
        gauge.setValue ((gameConfiguration.getDefaultValue.intValue) - (gameConfiguration.getMinValue.intValue));
        gameConfiguration.setValue (gameConfiguration.getDefaultValue);
   end setDefault;

   --  throws Exception
   procedure updateChallange (This : in out GameConfigurationUtil; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) is
      gameOptionsForm : constant GameOptionsForm_Access := GameOptionsForm_Access (gameOptionsForm_Param);
      gameConfiguration : constant GameConfiguration_Access := GameConfiguration_Access (gameConfiguration_Param);
      gameConfigurationSingleton : GameConfigurationSingleton_Access;
      gameConfigurationCentral : GameConfigurationCentral_Access;
      size : Integer;
      item : Item_Access;
      gauge : GameConfigurationGauge_Access;
      name : Unbounded_String;
      nextGameConfiguration : GameConfiguration_Access;
      index : Integer;
   begin
        gameConfigurationSingleton := GameConfigurationSingleton_Package.getInstance;
        gameConfigurationCentral := GameConfigurationCentral_Package.getInstance;
        if (gameConfiguration) = (gameConfigurationCentral.CHALLENGE_LEVEL) then
            This.logUtil.putF (This.commonStrings.START, GameConfigurationUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("updateChallange"));
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue (gameConfiguration.getValue);
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue (gameConfiguration.getValue);
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue (gameConfiguration.getValue);
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue (gameConfiguration.getValue);
            size := gameOptionsForm.size;
            for index in 0 .. (size) - 1 loop
                item := gameOptionsForm.get (index);
                if (item.all in GameConfigurationGauge_Package.GameConfigurationGauge'Class) then
                    gauge := GameConfigurationGauge_Access (item);
                    name := item.getLabel;
                    nextGameConfiguration := gameConfigurationSingleton.getInstanceByName (name);
                    if (nextGameConfiguration) = (gameConfigurationCentral.COLLIDE_DAMAGE) then
                        gauge.setValue ((gameConfigurationCentral.COLLIDE_DAMAGE.getValue.intValue) - (gameConfiguration.getMinValue.intValue));
                    elsif (nextGameConfiguration) = (gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL) then
                        gauge.setValue ((gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue.intValue) - (gameConfiguration.getMinValue.intValue));
                    elsif (nextGameConfiguration) = (gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL) then
                        gauge.setValue ((gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue.intValue) - (gameConfiguration.getMinValue.intValue));
                    elsif (nextGameConfiguration) = (gameConfigurationCentral.SPEED_CHALLENGE_LEVEL) then
                        gauge.setValue ((gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue.intValue) - (gameConfiguration.getMinValue.intValue));
                    end if;
                end if;
            end loop;
        end if;
   end updateChallange;

   procedure updateCompetitionValue (This : in out GameConfigurationUtil) is
      gameConfigurationCentral : GameConfigurationCentral_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, GameConfigurationUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("updateCompetitionValue"));
        gameConfigurationCentral := GameConfigurationCentral_Package.getInstance;
        This.COMPETITION_VALUE := (((gameConfigurationCentral.COLLIDE_DAMAGE.getValue.intValue) + (gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue.intValue)) + (gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue.intValue)) + (gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue.intValue);
        This.COMPETITION_VALUE := (Java_Shift_Right_Arithmetic (This.COMPETITION_VALUE, 2));
   end updateCompetitionValue;

   function getCompetitionValue (This : in out GameConfigurationUtil) return Integer is
   begin
        return This.COMPETITION_VALUE;
   end getCompetitionValue;

begin
   null;
   instance := GameConfigurationUtil_Package.Create;

end org.allbinary.game.configuration.GameConfigurationUtil_Package;


