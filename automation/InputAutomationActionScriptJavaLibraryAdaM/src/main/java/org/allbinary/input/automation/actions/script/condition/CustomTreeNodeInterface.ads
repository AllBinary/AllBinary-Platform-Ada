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

with AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;
package org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References is
   type CustomTreeNodeInterface_Access is access all org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package.CustomTreeNodeInterface'Class;
   type CustomTreeNodeInterface_Access_Array is array (Natural range <>) of CustomTreeNodeInterface_Access;
   type CustomTreeNodeInterface_Access_Array_Access is access all CustomTreeNodeInterface_Access_Array;
   type CustomTreeNodeInterface_Access_Array_Access_Array is array (Natural range <>) of CustomTreeNodeInterface_Access_Array_Access;
   type CustomTreeNodeInterface_Access_Array_Access_Array_Access is access all CustomTreeNodeInterface_Access_Array_Access_Array;
   type CustomTreeNodeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTreeNodeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTreeNodeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTreeNodeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTreeNodeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTreeNodeInterface_Access_Array_Access is (if Value /= null and then Value.all in CustomTreeNodeInterface_Access_Array_Object'Class then CustomTreeNodeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type CustomTreeNodeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTreeNodeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTreeNodeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTreeNodeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTreeNodeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTreeNodeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomTreeNodeInterface_Access_Array_Access_Array_Object'Class then CustomTreeNodeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References;

with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
limited with org.allbinary.input.automation.actions.script.condition.JPopupMenu_Package;
with org.allbinary.input.automation.actions.script.condition.JPopupMenu_Package_References;

package org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package is

   package Reference_Types is
   subtype JPopupMenu_Access is org.allbinary.input.automation.actions.script.condition.JPopupMenu_Package_References.JPopupMenu_Access;
   use type JPopupMenu_Access;
   subtype JPopupMenu_Access_Array is org.allbinary.input.automation.actions.script.condition.JPopupMenu_Package_References.JPopupMenu_Access_Array;
   use type JPopupMenu_Access_Array;
   subtype JPopupMenu_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.JPopupMenu_Package_References.JPopupMenu_Access_Array_Access;
   use type JPopupMenu_Access_Array_Access;
   subtype JPopupMenu_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.JPopupMenu_Package_References.JPopupMenu_Access_Array_Access_Array;
   use type JPopupMenu_Access_Array_Access_Array;
   subtype JPopupMenu_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.JPopupMenu_Package_References.JPopupMenu_Access_Array_Access_Array_Access;
   use type JPopupMenu_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type CustomTreeNodeInterface is interface;
   subtype CustomTreeNodeInterface_Access is org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References.CustomTreeNodeInterface_Access;
   function "=" (Left, Right : CustomTreeNodeInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References."=";
   subtype CustomTreeNodeInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References.CustomTreeNodeInterface_Access_Array;
   function "=" (Left, Right : CustomTreeNodeInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References."=";
   subtype CustomTreeNodeInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References.CustomTreeNodeInterface_Access_Array_Access;
   function "=" (Left, Right : CustomTreeNodeInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References."=";
   function Java_Box (Value : CustomTreeNodeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References.Java_Box;
   function Java_Unbox_CustomTreeNodeInterface_Access_Array (Value : access Java_Object'Class) return CustomTreeNodeInterface_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References.Java_Unbox_CustomTreeNodeInterface_Access_Array;
   subtype CustomTreeNodeInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References.CustomTreeNodeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTreeNodeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References."=";
   subtype CustomTreeNodeInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References.CustomTreeNodeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTreeNodeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References."=";
   function Java_Box (Value : CustomTreeNodeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References.Java_Box;
   function Java_Unbox_CustomTreeNodeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomTreeNodeInterface_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package_References.Java_Unbox_CustomTreeNodeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_CustomTreeNodeInterface (Value : CustomTreeNodeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getJPopupMenu (This : in out CustomTreeNodeInterface) return JPopupMenu_Access is abstract;

end org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;


