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


package body org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package is

   procedure Initialize_Fields (This : in out InputAutomationTypeDefaultComboBoxModelFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationTypeDefaultComboBoxModelFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationTypeDefaultComboBoxModelFactory_Access is
      This : constant InputAutomationTypeDefaultComboBoxModelFactory_Access := new InputAutomationTypeDefaultComboBoxModelFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance return DefaultComboBoxModel_Access is
      defaultComboBoxModel : DefaultComboBoxModel_Access;
      set : Set_Access;
      nameArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        defaultComboBoxModel := DefaultComboBoxModel_Package.Create;
        set := InputRobotFactory_Package.getInstance.get.keySet;
        nameArray := set.toArray;
        size := nameArray'Length;
        for index in 0 .. (size) - 1 loop
            defaultComboBoxModel.addElement (Unbounded_String (nameArray (index)));
        end loop;
        return defaultComboBoxModel;
   end getInstance;

   procedure getInstance is
      Java_Result : constant DefaultComboBoxModel_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package;


