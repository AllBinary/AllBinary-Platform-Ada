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


package body org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package is

   procedure Initialize_Fields (This : in out KeyNameDefaultComboBoxModelFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyNameDefaultComboBoxModelFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return KeyNameDefaultComboBoxModelFactory_Access is
      This : constant KeyNameDefaultComboBoxModelFactory_Access := new KeyNameDefaultComboBoxModelFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return DefaultComboBoxModel_Access is
      defaultComboBoxModel : DefaultComboBoxModel_Access;
      keyArray : Integer_Array_Access;
      keyAsString : Unbounded_String;
      index : Integer;
   begin
        defaultComboBoxModel := DefaultComboBoxModel_Package.Create;
        keyArray := KeySingletonFactory_Package.getArray;
        for index in 0 .. (keyArray'Length) - 1 loop
            keyAsString := KeyEvent_Package.getKeyText (keyArray (index));
            defaultComboBoxModel.addElement (keyAsString);
        end loop;
        return defaultComboBoxModel;
   end getInstance;

   procedure getInstance is
      Java_Result : constant DefaultComboBoxModel_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package;


