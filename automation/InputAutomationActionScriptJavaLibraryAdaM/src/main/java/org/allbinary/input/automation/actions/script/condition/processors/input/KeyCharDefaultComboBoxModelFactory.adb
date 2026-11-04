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


with abbot.tester.KeyStrokeMap_Package; use abbot.tester.KeyStrokeMap_Package;
with org.allbinary.input.KeySingletonFactory_Package; use org.allbinary.input.KeySingletonFactory_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyStroke_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyStroke_Package;

package body org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package is

   package KeyStrokeMap_Package renames Standard.abbot.tester.KeyStrokeMap_Package;
   package KeySingletonFactory_Package renames Standard.org.allbinary.input.KeySingletonFactory_Package;
   subtype DefaultComboBoxModel_Access is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access;
   function "=" (Left, Right : DefaultComboBoxModel_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References."=";
   subtype DefaultComboBoxModel_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access_Array;
   function "=" (Left, Right : DefaultComboBoxModel_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References."=";
   subtype DefaultComboBoxModel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access_Array_Access;
   function "=" (Left, Right : DefaultComboBoxModel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References."=";
   subtype DefaultComboBoxModel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access_Array_Access_Array;
   function "=" (Left, Right : DefaultComboBoxModel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References."=";
   subtype DefaultComboBoxModel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DefaultComboBoxModel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References."=";
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
      KeyCharDefaultComboBoxModelFactory_Package.Initialize (This.all);
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
            keyStroke := KeyStroke_Package.getKeyStroke (Integer (nextKey), 0);
            keyChar := KeyStrokeMap_Package.getChar (keyStroke);
            defaultComboBoxModel.addElement (To_Unbounded_String (Java_Image (keyChar)));
        end loop;
        return defaultComboBoxModel;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package;


