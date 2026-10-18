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


package body org.allbinary.game.configuration.GameOptionsForm_Package is

   procedure Initialize_Fields (This : in out GameOptionsForm'Class) is
   begin
      null;
      This.meUtil := MEUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GameOptionsForm'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      backgrounBasicColor : constant BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      gameFeatureFormUtil : GameFeatureFormUtil_Access;
   begin
        CommandForm_Package.Initialize (This, commandListener, title, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, GameOptionsForm_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        GameOptionsForm'Class (This).addConfiguration;
        gameFeatureFormUtil := GameFeatureFormUtil_Package.getInstance;
        gameFeatureFormUtil.addChoiceGroup (GameOptionsForm_Access'(This'Unchecked_Access), GameFeatureChoiceGroups_Package.getExclusiveInstance.get, Choice_Package.EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup (GameOptionsForm_Access'(This'Unchecked_Access), GameFeatureChoiceGroups_Package.getMultipleInstance.get, Choice_Package.MULTIPLE);
        GameOptionsForm'Class (This).initCommands (commandListener);
        GameOptionsForm'Class (This).setItemStateListener (GameFeatureItemStateListener_Package.Create (GameOptionsForm_Access'(This'Unchecked_Access)));
        GameOptionsForm'Class (This).addTextFieldsIfSimulated;
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return GameOptionsForm_Access is
      This : constant GameOptionsForm_Access := new GameOptionsForm;
   begin
      GameOptionsForm_Package.Initialize (This.all, commandListener_Param, title, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   --  throws Exception
   procedure closeClientInformation (This : in out GameOptionsForm; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        CommandForm (This).close;
        GameOptionsForm'Class (This).save (abeClientInformation);
   end closeClientInformation;

   procedure addTextFieldsIfSimulated (This : in out GameOptionsForm) is
      key : Unbounded_String;
      hashtable : ABHashtable_Access;
      listCanBeNull : Java_Object_Access;
      list : BasicArrayList_Access;
   begin
        key := OrientationData_Package.getInstance.ORIENTATION_SENSOR_INPUT;
        hashtable := GameFeatureChoiceGroups_Package.getExclusiveInstance.get;
        if (hashtable) /= (null) then
            listCanBeNull := hashtable.get (key);
            if (listCanBeNull) /= (null) then
                list := BasicArrayList_Access (listCanBeNull);
                if list.contains (SensorFeatureFactory_Package.getInstance.SIMULATED_ORIENTATION_SENSORS) then
                    GameOptionsForm'Class (This).addTextFields;
                end if;
            end if;
        end if;
   end addTextFieldsIfSimulated;

   procedure addTextFields (This : in out GameOptionsForm) is
      hashtable : ABHashtable_Access;
      size : Integer;
      objectArray : Java_Object_Access_Array_Access;
      gameConfigurationTextInput : GameConfigurationTextInput_Access;
      textField : TextField_Access;
      index : Integer;
   begin
        hashtable := GameConfigurationTextInput_Package.getHashtable;
        size := hashtable.size;
        objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (hashtable);
        gameConfigurationTextInput := null;
        textField := null;
        for index in 0 .. (size) - 1 loop
            gameConfigurationTextInput := GameConfigurationTextInput_Access (hashtable.get (Java_Object_Access (objectArray (index))));
            textField := TextField_Package.Create (gameConfigurationTextInput.getLabel, gameConfigurationTextInput.getText, 30, TextField_Package.ANY);
            This.meUtil.appendItem (GameOptionsForm_Access'(This'Unchecked_Access), textField);
        end loop;
   end addTextFields;

   procedure addConfiguration (This : in out GameOptionsForm) is
      METHOD_NAME : Unbounded_String;
      NAME : Unbounded_String;
      list : BasicArrayList_Access;
      GAUGE_CHANGE : Command_Access;
      stringMaker : StringMaker_Access;
      size : Integer;
      gameConfiguration : GameConfiguration_Access;
      gauge : GameConfigurationGauge_Access;
      index : Integer;
   begin
        METHOD_NAME := To_Unbounded_String ("addConfiguration");
        NAME := To_Unbounded_String ("Name: ");
        list := GameConfigurationSingleton_Package.getInstance.getOptionsBasicArrayList;
        GAUGE_CHANGE := MyCommandsFactory_Package.getInstance.GAUGE_CHANGE;
        stringMaker := StringMaker_Package.Create;
        size := list.size;
        gameConfiguration := null;
        gauge := null;
        for index in 0 .. (size) - 1 loop
            gameConfiguration := GameConfiguration_Access (list.objectArray (index));
            stringMaker.delete (0, stringMaker.length);
            This.logUtil.putF (stringMaker.append (NAME).append (gameConfiguration.toString).toString, GameOptionsForm_Access'(This'Unchecked_Access), METHOD_NAME);
            gauge := GameConfigurationGauge_Package.Create (gameConfiguration);
            gauge.setDefaultCommand (GAUGE_CHANGE);
            gauge.setItemCommandListener (GameFeatureItemCommandListener_Package.Create (GameOptionsForm_Access'(This'Unchecked_Access)));
            This.meUtil.appendItem (GameOptionsForm_Access'(This'Unchecked_Access), gauge);
        end loop;
   end addConfiguration;

   procedure initCommands (This : in out GameOptionsForm; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      gameCommandsFactory : GameCommandsFactory_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        GameOptionsForm'Class (This).removeAllCommands;
        GameOptionsForm'Class (This).addCommand (gameCommandsFactory.CLOSE_OPTIONS);
        GameOptionsForm'Class (This).addCommand (gameCommandsFactory.DEFAULT_OPTIONS);
        GameOptionsForm'Class (This).setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure save (This : in out GameOptionsForm; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      size : Integer;
      item : Item_Access;
      index : Integer;
      hashtable : ABHashtable_Access;
      SCALE : GameConfiguration_Access;
      keyValuePersistance : KeyValuePersistance_Access;
      list : BasicArrayList_Access;
      size2 : Integer;
      integer_Id : Integer;
   begin
        size := GameOptionsForm'Class (This).size;
        item := null;
        for index in 0 .. (size) - 1 loop
            item := GameOptionsForm'Class (This).get (index);
            if (item.all in GameConfigurationGauge_Package.GameConfigurationGauge'Class) then
                GameConfigurationUtil_Package.getInstance.update (GameConfigurationGauge_Access (item));
            elsif (item.all in TextField_Package.TextField'Class) then
                GameConfigurationTextInput_Package.update (TextField_Access (item));
            end if;
        end loop;
        GameConfigurationUtil_Package.getInstance.updateCompetitionValue;
        hashtable := StdUtil_Package.getInstance.createHashtable;
        SCALE := GameConfigurationCentral_Package.getInstance.SCALE;
        hashtable.put (SCALE.getName, SCALE.getValue.toString);
        keyValuePersistance := GameConfigurationPersistanceSingleton_Package.getInstance;
        keyValuePersistance.clear;
        keyValuePersistance.loadAll (abeClientInformation);
        list := keyValuePersistance.getIds;
        keyValuePersistance.save (abeClientInformation, hashtable);
        size2 := list.size;
        integer_Id := null;
        for index in 0 .. (size2) - 1 loop
            integer_Id := Integer (list.objectArray (index));
            keyValuePersistance.delete (abeClientInformation, Integer (integer_Id));
        end loop;
   end save;

end org.allbinary.game.configuration.GameOptionsForm_Package;


