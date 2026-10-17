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


package body org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package is

   procedure Initialize_Fields (This : in out KeyCharDefaultComboBoxModelFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyCharDefaultComboBoxModelFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return KeyCharDefaultComboBoxModelFactory_Access is
      This : constant KeyCharDefaultComboBoxModelFactory_Access := new KeyCharDefaultComboBoxModelFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return DefaultComboBoxModel_Access is
      defaultComboBoxModel : DefaultComboBoxModel_Access;
      keyArray : Integer_Array_Access;
      nextKey : Integer;
      keyStroke : KeyStroke_Access;
      keyChar : Character;
      index : Integer;
   begin
        defaultComboBoxModel := DefaultComboBoxModel_Package.Create;
        keyArray := KeySingletonFactory_Package.getArray;
        for index in 0 .. (keyArray'Length) - 1 loop
            nextKey := keyArray (index);
            keyStroke := KeyStroke_Package.getKeyStroke (nextKey.intValue, 0);
            keyChar := KeyStrokeMap_Package.getChar (keyStroke);
            defaultComboBoxModel.addElement (To_Unbounded_String (Java_Image (keyChar)));
        end loop;
        return defaultComboBoxModel;
   end getInstance;

   procedure getInstance is
      Java_Result : constant DefaultComboBoxModel_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package;


