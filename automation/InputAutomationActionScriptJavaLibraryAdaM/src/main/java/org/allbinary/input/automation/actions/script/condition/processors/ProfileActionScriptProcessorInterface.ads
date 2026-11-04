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

limited with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
package org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References is
   type ProfileActionScriptProcessorInterface_Access is access all org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package.ProfileActionScriptProcessorInterface'Class;
   type ProfileActionScriptProcessorInterface_Access_Array is array (Natural range <>) of ProfileActionScriptProcessorInterface_Access;
   type ProfileActionScriptProcessorInterface_Access_Array_Access is access all ProfileActionScriptProcessorInterface_Access_Array;
   type ProfileActionScriptProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of ProfileActionScriptProcessorInterface_Access_Array_Access;
   type ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access is access all ProfileActionScriptProcessorInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package; use org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;

package org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ProfileActionScriptItemInterface_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
   package CustomTreeNodeInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ProfileActionScriptProcessorInterface is interface and CustomTreeNodeInterface and DomNodeInterface and ProfileActionScriptItemInterface;
   subtype ProfileActionScriptProcessorInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access;
   function "=" (Left, Right : ProfileActionScriptProcessorInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References."=";
   subtype ProfileActionScriptProcessorInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array;
   function "=" (Left, Right : ProfileActionScriptProcessorInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References."=";
   subtype ProfileActionScriptProcessorInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References."=";
   subtype ProfileActionScriptProcessorInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProfileActionScriptProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References."=";
   subtype ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References."=";
   function Java_Object_Access_From_ProfileActionScriptProcessorInterface (Value : ProfileActionScriptProcessorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;


