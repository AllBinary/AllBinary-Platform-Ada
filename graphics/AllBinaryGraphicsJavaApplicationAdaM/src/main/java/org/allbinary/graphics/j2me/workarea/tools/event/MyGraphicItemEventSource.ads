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
limited with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package;
package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References is
   type MyGraphicItemEventSource_Access is access all org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package.MyGraphicItemEventSource'Class;
   type MyGraphicItemEventSource_Access_Array is array (Natural range <>) of MyGraphicItemEventSource_Access;
   type MyGraphicItemEventSource_Access_Array_Access is access all MyGraphicItemEventSource_Access_Array;
   type MyGraphicItemEventSource_Access_Array_Access_Array is array (Natural range <>) of MyGraphicItemEventSource_Access_Array_Access;
   type MyGraphicItemEventSource_Access_Array_Access_Array_Access is access all MyGraphicItemEventSource_Access_Array_Access_Array;
   type MyGraphicItemEventSource_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyGraphicItemEventSource_Access_Array_Access;
   end record;
   function Java_Box (Value : MyGraphicItemEventSource_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyGraphicItemEventSource_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyGraphicItemEventSource_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyGraphicItemEventSource_Access_Array_Access is (if Value /= null and then Value.all in MyGraphicItemEventSource_Access_Array_Object'Class then MyGraphicItemEventSource_Access_Array_Object'Class (Value.all).Value else null);
   type MyGraphicItemEventSource_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyGraphicItemEventSource_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyGraphicItemEventSource_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyGraphicItemEventSource_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyGraphicItemEventSource_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyGraphicItemEventSource_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyGraphicItemEventSource_Access_Array_Access_Array_Object'Class then MyGraphicItemEventSource_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;

package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MyGraphicItemEventSource_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References.MyGraphicItemEventSource_Access;
   function "=" (Left, Right : MyGraphicItemEventSource_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References."=";
   subtype MyGraphicItemEventSource_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References.MyGraphicItemEventSource_Access_Array;
   function "=" (Left, Right : MyGraphicItemEventSource_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References."=";
   subtype MyGraphicItemEventSource_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References.MyGraphicItemEventSource_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEventSource_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References."=";
   function Java_Box (Value : MyGraphicItemEventSource_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References.Java_Box;
   function Java_Unbox_MyGraphicItemEventSource_Access_Array (Value : access Java_Object'Class) return MyGraphicItemEventSource_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References.Java_Unbox_MyGraphicItemEventSource_Access_Array;
   subtype MyGraphicItemEventSource_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References.MyGraphicItemEventSource_Access_Array_Access_Array;
   function "=" (Left, Right : MyGraphicItemEventSource_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References."=";
   subtype MyGraphicItemEventSource_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References.MyGraphicItemEventSource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEventSource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References."=";
   function Java_Box (Value : MyGraphicItemEventSource_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References.Java_Box;
   function Java_Unbox_MyGraphicItemEventSource_Access_Array_Access_Array (Value : access Java_Object'Class) return MyGraphicItemEventSource_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package_References.Java_Unbox_MyGraphicItemEventSource_Access_Array_Access_Array;

   type MyGraphicItemEventSource is new Java_Object with record
      command : Unbounded_String;
      treeNode : MutableTreeNode_Access;
      angle : Long_Float;
   end record;

   procedure Initialize (This : in out MyGraphicItemEventSource'Class; command : Unbounded_String; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class);
   function Create (command : Unbounded_String; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class) return MyGraphicItemEventSource_Access;
   procedure Initialize (This : in out MyGraphicItemEventSource'Class; command : Unbounded_String; angle : Long_Float; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class);
   function Create (command : Unbounded_String; angle : Long_Float; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class) return MyGraphicItemEventSource_Access;
   function getCommand (This : in out MyGraphicItemEventSource) return Unbounded_String;
   function getTreeNode (This : in out MyGraphicItemEventSource) return MutableTreeNode_Access;
   function getAngle (This : in out MyGraphicItemEventSource) return Long_Float;
   procedure setAngle (This : in out MyGraphicItemEventSource; angle : Long_Float);

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package;


