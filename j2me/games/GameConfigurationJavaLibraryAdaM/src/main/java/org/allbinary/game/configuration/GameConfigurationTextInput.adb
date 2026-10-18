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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.configuration.GameConfigurationTextInput_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out GameConfigurationTextInput'Class) is
   begin
      null;
      This.label := StringUtil_Package.getInstance.EMPTY_STRING;
      This.text := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out GameConfigurationTextInput'Class; label : Unbounded_String; text : Unbounded_String) is
   begin
      Initialize_Fields (This);
        GameConfigurationTextInput'Class (This).setText (text);
        GameConfigurationTextInput'Class (This).setLabel (label);
        GameConfigurationTextInput_Package.hashtable.put (GameConfigurationTextInput'Class (This).getLabel, GameConfigurationTextInput_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (label : Unbounded_String; text : Unbounded_String) return GameConfigurationTextInput_Access is
      This : constant GameConfigurationTextInput_Access := new GameConfigurationTextInput;
   begin
      GameConfigurationTextInput_Package.Initialize (This.all, label, text);
      return This;
   end Create;

   procedure update (textField_Param : access TextField_Package.TextField'Class) is
      textField : constant TextField_Access := TextField_Access (textField_Param);
      anyType : Java_Object_Access;
      gameConfigurationTextInput : GameConfigurationTextInput_Access;
   begin
        anyType := Java_Object_Access (textField.getLabel);
        gameConfigurationTextInput := GameConfigurationTextInput_Access (GameConfigurationTextInput_Package.hashtable.get (anyType));
        gameConfigurationTextInput.setText (textField.getString);
   end update;

   procedure setText (This : in out GameConfigurationTextInput; text : Unbounded_String) is
   begin
        This.text := text;
   end setText;

   function getText (This : in out GameConfigurationTextInput) return Unbounded_String is
   begin
        return This.text;
   end getText;

   procedure setLabel (This : in out GameConfigurationTextInput; label : Unbounded_String) is
   begin
        This.label := label;
   end setLabel;

   function getLabel (This : in out GameConfigurationTextInput) return Unbounded_String is
   begin
        return This.label;
   end getLabel;

   function getHashtable return ABHashtable_Access is
   begin
        return GameConfigurationTextInput_Package.hashtable;
   end getHashtable;

begin
   null;
   hashtable := StdUtil_Package.getInstance.createHashtable;
   SIMULATOR_IP := GameConfigurationTextInput_Package.Create (To_Unbounded_String ("IP: "), To_Unbounded_String ("192.168.1.3"));
   SIMULATOR_PORT := GameConfigurationTextInput_Package.Create (To_Unbounded_String ("Port: "), To_Unbounded_String ("8010"));

end org.allbinary.game.configuration.GameConfigurationTextInput_Package;


