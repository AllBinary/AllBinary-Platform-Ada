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


with org.allbinary.game.configuration.event.GameFeatureEvent_Package; use org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureEventHandler_Package; use org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.configuration.GameConfigurationSingleton_Package; use org.allbinary.game.configuration.GameConfigurationSingleton_Package;

package body org.allbinary.game.configuration.GameConfiguration_Package is

   package GameFeatureEvent_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEvent_Package;
   package GameFeatureEventHandler_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out GameConfiguration'Class) is
   begin
      null;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
      This.defaultValue := SmallIntegerSingletonFactory_Package.getInstance.getAt (0);
      This.value := GameConfiguration_Package.MIN_VALUE;
      This.minValue := This.defaultValue;
      This.maxValue := This.defaultValue;
      This.modifiable := BooleanFactory_Package.getInstance.TRUE;
   end Initialize_Fields;


   procedure Initialize (This : in out GameConfiguration'Class; name : Unbounded_String; defaultValue : Integer; minValue : Integer; maxValue : Integer) is
   begin
      Initialize_Fields (This);
        GameConfiguration'Class (This).setName (name);
        GameConfiguration'Class (This).setDefaultValue (defaultValue);
        This.value := GameConfiguration'Class (This).getDefaultValue;
        GameConfiguration'Class (This).setMinValue (minValue);
        GameConfiguration'Class (This).setMaxValue (maxValue);
        GameConfigurationSingleton_Package.getInstance.getHashtable.put (GameConfiguration'Class (This).getName, GameConfiguration_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (name : Unbounded_String; defaultValue : Integer; minValue : Integer; maxValue : Integer) return GameConfiguration_Access is
      This : constant GameConfiguration_Access := new GameConfiguration;
   begin
      GameConfiguration_Package.Initialize (This.all, name, defaultValue, minValue, maxValue);
      return This;
   end Create;

   --  throws Exception
   procedure setValue (This : in out GameConfiguration; value : Integer) is
      oldValue : Integer;
   begin
        if (This.value) /= (value) then
            oldValue := This.value;
            This.value := value;
            GameFeatureEventHandler_Package.getInstance.fireEvent (GameFeatureEvent_Package.Create (GameConfiguration_Access'(This'Unchecked_Access), StringMaker_Package.Create.append (This.name).append (To_Unbounded_String (" value: from: ")).appendint (Integer (Integer (oldValue))).append (To_Unbounded_String (" to ")).appendint (Integer (Integer (This.value))).toString));
        end if;
   end setValue;

   function getValue (This : in out GameConfiguration) return Integer is
   begin
        return This.value;
   end getValue;

   procedure setMaxValue (This : in out GameConfiguration; maxValue : Integer) is
   begin
        This.maxValue := maxValue;
   end setMaxValue;

   function getMaxValue (This : in out GameConfiguration) return Integer is
   begin
        return This.maxValue;
   end getMaxValue;

   procedure setMinValue (This : in out GameConfiguration; minValue : Integer) is
   begin
        This.minValue := minValue;
   end setMinValue;

   function getMinValue (This : in out GameConfiguration) return Integer is
   begin
        return This.minValue;
   end getMinValue;

   procedure setName (This : in out GameConfiguration; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getName (This : in out GameConfiguration) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setDefaultValue (This : in out GameConfiguration; defaultValue : Integer) is
   begin
        This.defaultValue := defaultValue;
   end setDefaultValue;

   function getDefaultValue (This : in out GameConfiguration) return Integer is
   begin
        return This.defaultValue;
   end getDefaultValue;

   --  throws Exception
   procedure setDefault (This : in out GameConfiguration) is
   begin
        GameConfiguration'Class (This).setValue (GameConfiguration'Class (This).getDefaultValue);
   end setDefault;

   function toString (This : in out GameConfiguration) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Name: "));
        stringBuffer.append (This.name);
        stringBuffer.append (To_Unbounded_String (" Min: "));
        stringBuffer.appendint (Integer (GameConfiguration'Class (This).getMinValue.intValue));
        stringBuffer.append (To_Unbounded_String (" Max: "));
        stringBuffer.appendint (Integer (GameConfiguration'Class (This).getMaxValue.intValue));
        stringBuffer.append (To_Unbounded_String (" Value: "));
        stringBuffer.appendint (Integer (GameConfiguration'Class (This).getValue.intValue));
        stringBuffer.append (To_Unbounded_String (" Default: "));
        stringBuffer.appendint (Integer (GameConfiguration'Class (This).getDefaultValue.intValue));
        stringBuffer.append (To_Unbounded_String (" Modifiable: "));
        stringBuffer.appendboolean (GameConfiguration'Class (This).isModifiable.booleanValue);
        return stringBuffer.toString;
   end toString;

   procedure setModifiable (This : in out GameConfiguration; modifiable : Boolean) is
   begin
        This.modifiable := modifiable;
   end setModifiable;

   function isModifiable (This : in out GameConfiguration) return Boolean is
   begin
        return This.modifiable;
   end isModifiable;

begin
   null;
   MIN_VALUE := Integer'First;

end org.allbinary.game.configuration.GameConfiguration_Package;


