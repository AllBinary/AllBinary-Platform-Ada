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

limited with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
package org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References is
   type ProfileActionScriptNodeInterface_Access is access all org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class;
   type ProfileActionScriptNodeInterface_Access_Array is array (Natural range <>) of ProfileActionScriptNodeInterface_Access;
   type ProfileActionScriptNodeInterface_Access_Array_Access is access all ProfileActionScriptNodeInterface_Access_Array;
   type ProfileActionScriptNodeInterface_Access_Array_Access_Array is array (Natural range <>) of ProfileActionScriptNodeInterface_Access_Array_Access;
   type ProfileActionScriptNodeInterface_Access_Array_Access_Array_Access is access all ProfileActionScriptNodeInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References;

with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References;
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

package org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ProfileActionScriptNodeInterface is interface and DomNodeInterface;
   subtype ProfileActionScriptNodeInterface_Access is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access;
   function "=" (Left, Right : ProfileActionScriptNodeInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References."=";
   subtype ProfileActionScriptNodeInterface_Access_Array is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access_Array;
   function "=" (Left, Right : ProfileActionScriptNodeInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References."=";
   subtype ProfileActionScriptNodeInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptNodeInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References."=";
   subtype ProfileActionScriptNodeInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProfileActionScriptNodeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References."=";
   subtype ProfileActionScriptNodeInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptNodeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References."=";
   function Java_Object_Access_From_ProfileActionScriptNodeInterface (Value : ProfileActionScriptNodeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure addCondition (This : in out ProfileActionScriptNodeInterface; profileActionConditionInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class) is abstract;
   procedure removeCondition (This : in out ProfileActionScriptNodeInterface; profileActionConditionInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class) is abstract;

end org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;


