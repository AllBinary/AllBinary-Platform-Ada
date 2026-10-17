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


package body org.allbinary.game.configuration.GameConfigurationCentral_Package is

   procedure Initialize_Fields (This : in out GameConfigurationCentral'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      This.gameControlFidelity := 36;
   end Initialize_Fields;


   function getInstance return GameConfigurationCentral_Access is
   begin
        if (GameConfigurationCentral_Package.SINGLETON) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GameConfigurationCentral_Package.SINGLETON := GameConfigurationCentral_Package.Create;
        end if;
        return GameConfigurationCentral_Access (GameConfigurationCentral_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out GameConfigurationCentral'Class) is
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
   begin
      Initialize_Fields (This);
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        This.SCALE := GameConfiguration_Package.Create (To_Unbounded_String ("Scale"), smallIntegerSingletonFactory.getAt (2), smallIntegerSingletonFactory.getAt (2), smallIntegerSingletonFactory.getAt (3));
        This.ORIENTATION := GameConfiguration_Package.Create (To_Unbounded_String ("Orientation"), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (8));
        This.SENSOR_UPDATE_RATE := GameConfiguration_Package.Create (To_Unbounded_String ("Sensor Update Rate"), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (3));
        This.VIBRATION := GameConfiguration_Package.Create (To_Unbounded_String ("Vibration"), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (3));
        This.CHALLENGE_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Global Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.COLLIDE_DAMAGE := GameConfiguration_Package.Create (To_Unbounded_String ("Collide Damage Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.DURABILITY_CHALLENGE_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Enemy Durability Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.SPEED_CHALLENGE_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Enemy Speed Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.ATTACK_CHALLENGE_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Enemy Attack Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.CONTROL_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Control Fidelity"), smallIntegerSingletonFactory.getAt (5), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.PLAYER_INPUT_WAIT := GameConfiguration_Package.Create (To_Unbounded_String ("Input Wait"), smallIntegerSingletonFactory.getAt (5), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.SPEED := GameConfiguration_Package.Create (To_Unbounded_String ("Game Speed (Device Specific)"), smallIntegerSingletonFactory.getAt (5), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.SOUND_VOLUME := GameConfiguration_Package.Create (To_Unbounded_String ("Sound Volume"), smallIntegerSingletonFactory.getAt (6), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (10));
        This.MAX_GAME_OBJECTS := GameConfiguration_Package.Create (To_Unbounded_String ("Max Game Objects"), smallIntegerSingletonFactory.getAt (20), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (50));
        This.MAX_LAYERS := GameConfiguration_Package.Create (To_Unbounded_String ("Max Layers"), smallIntegerSingletonFactory.getAt (20), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (50));
   end Initialize;

   function Create return GameConfigurationCentral_Access is
      This : constant GameConfigurationCentral_Access := new GameConfigurationCentral;
   begin
      GameConfigurationCentral_Package.Initialize (This.all);
      return This;
   end Create;

   procedure load (This : in out GameConfigurationCentral; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      commonStrings : CommonStrings_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      keyValuePersistance : KeyValuePersistance_Access;
      list : BasicArrayList_Access;
      hashtable : ABHashtable_Access;
      anyType : Java_Object_Access;
      value : Unbounded_String;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
            keyValuePersistance := GameConfigurationPersistanceSingleton_Package.getInstance;
            keyValuePersistance.clear;
            keyValuePersistance.loadAll (abeClientInformation);
            list := keyValuePersistance.getIds;
            if (list.size) > (0) then
                hashtable := keyValuePersistance.get (0);
                anyType := Java_Object_Access (This.SCALE.getName);
                value := Unbounded_String (hashtable.get (anyType));
                This.SCALE.setValue (smallIntegerSingletonFactory.getAt (To_Unbounded_String (Java_Image (value)).intValue));
            else
                This.logUtil.putF (To_Unbounded_String ("No Game Configuration To Load"), GameConfigurationCentral_Access'(This'Unchecked_Access), commonStrings.LOAD);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (commonStrings.EXCEPTION_Id, GameConfigurationCentral_Access'(This'Unchecked_Access), commonStrings.LOAD, e);
                end;
        end;
   end load;

   procedure setGameControlFidelity (This : in out GameConfigurationCentral; gameControlFidelity : Integer) is
   begin
        This.gameControlFidelity := gameControlFidelity;
   end setGameControlFidelity;

   function getGameControlFidelity (This : in out GameConfigurationCentral) return Integer is
   begin
        return This.gameControlFidelity;
   end getGameControlFidelity;

   function toString (This : in out GameConfigurationCentral) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      commonStrings : CommonSeps_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        commonStrings := CommonSeps_Package.getInstance;
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.SCALE.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.SCALE.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.ORIENTATION.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.ORIENTATION.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.SENSOR_UPDATE_RATE.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.SENSOR_UPDATE_RATE.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.VIBRATION.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.VIBRATION.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.CHALLENGE_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.CHALLENGE_LEVEL.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.COLLIDE_DAMAGE.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.COLLIDE_DAMAGE.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.DURABILITY_CHALLENGE_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.DURABILITY_CHALLENGE_LEVEL.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.SPEED_CHALLENGE_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.SPEED_CHALLENGE_LEVEL.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.ATTACK_CHALLENGE_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.ATTACK_CHALLENGE_LEVEL.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.CONTROL_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.CONTROL_LEVEL.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.SPEED.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.SPEED.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.MAX_GAME_OBJECTS.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.MAX_GAME_OBJECTS.getValue.intValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.MAX_LAYERS.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.MAX_LAYERS.getValue.intValue));
        return stringBuffer.toString;
   end toString;

begin
   null;
   SINGLETON := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.configuration.GameConfigurationCentral_Package;


