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


with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package;

package body org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package is

   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
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
      InputAutomationTypeDefaultComboBoxModelFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance return DefaultComboBoxModel_Access is
      defaultComboBoxModel : DefaultComboBoxModel_Access;
      set : Java_Object_Access;
      nameArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        defaultComboBoxModel := DefaultComboBoxModel_Package.Create;
        set := InputRobotFactory_Package.getInstance.get.keySet;
        nameArray := set.toArray;
        size := nameArray'Length;
        for index in 0 .. (size) - 1 loop
            defaultComboBoxModel.addElement (Java_Unbox (nameArray (index)));
        end loop;
        return defaultComboBoxModel;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package;


