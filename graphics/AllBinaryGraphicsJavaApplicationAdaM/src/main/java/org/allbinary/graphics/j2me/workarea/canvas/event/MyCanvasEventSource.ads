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
limited with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;
package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References is
   type MyCanvasEventSource_Access is access all org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package.MyCanvasEventSource'Class;
   type MyCanvasEventSource_Access_Array is array (Natural range <>) of MyCanvasEventSource_Access;
   type MyCanvasEventSource_Access_Array_Access is access all MyCanvasEventSource_Access_Array;
   type MyCanvasEventSource_Access_Array_Access_Array is array (Natural range <>) of MyCanvasEventSource_Access_Array_Access;
   type MyCanvasEventSource_Access_Array_Access_Array_Access is access all MyCanvasEventSource_Access_Array_Access_Array;
   type MyCanvasEventSource_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyCanvasEventSource_Access_Array_Access;
   end record;
   function Java_Box (Value : MyCanvasEventSource_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyCanvasEventSource_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyCanvasEventSource_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyCanvasEventSource_Access_Array_Access is (if Value /= null and then Value.all in MyCanvasEventSource_Access_Array_Object'Class then MyCanvasEventSource_Access_Array_Object'Class (Value.all).Value else null);
   type MyCanvasEventSource_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyCanvasEventSource_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyCanvasEventSource_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyCanvasEventSource_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyCanvasEventSource_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyCanvasEventSource_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyCanvasEventSource_Access_Array_Access_Array_Object'Class then MyCanvasEventSource_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References;

with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;

package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MyCanvasEventSource_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References.MyCanvasEventSource_Access;
   function "=" (Left, Right : MyCanvasEventSource_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References."=";
   subtype MyCanvasEventSource_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References.MyCanvasEventSource_Access_Array;
   function "=" (Left, Right : MyCanvasEventSource_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References."=";
   subtype MyCanvasEventSource_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References.MyCanvasEventSource_Access_Array_Access;
   function "=" (Left, Right : MyCanvasEventSource_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References."=";
   function Java_Box (Value : MyCanvasEventSource_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References.Java_Box;
   function Java_Unbox_MyCanvasEventSource_Access_Array (Value : access Java_Object'Class) return MyCanvasEventSource_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References.Java_Unbox_MyCanvasEventSource_Access_Array;
   subtype MyCanvasEventSource_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References.MyCanvasEventSource_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvasEventSource_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References."=";
   subtype MyCanvasEventSource_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References.MyCanvasEventSource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvasEventSource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References."=";
   function Java_Box (Value : MyCanvasEventSource_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References.Java_Box;
   function Java_Unbox_MyCanvasEventSource_Access_Array_Access_Array (Value : access Java_Object'Class) return MyCanvasEventSource_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package_References.Java_Unbox_MyCanvasEventSource_Access_Array_Access_Array;

   type MyCanvasEventSource is new Java_Object with record
      command : Unbounded_String;
      treeNode : MutableTreeNode_Access;
      angle : Long_Float;
   end record;

   procedure Initialize (This : in out MyCanvasEventSource'Class; command : Unbounded_String; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class);
   function Create (command : Unbounded_String; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class) return MyCanvasEventSource_Access;
   procedure Initialize (This : in out MyCanvasEventSource'Class; command : Unbounded_String; angle : Long_Float; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class);
   function Create (command : Unbounded_String; angle : Long_Float; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class) return MyCanvasEventSource_Access;
   function getCommand (This : in out MyCanvasEventSource) return Unbounded_String;
   function getTreeNode (This : in out MyCanvasEventSource) return MutableTreeNode_Access;
   function getAngle (This : in out MyCanvasEventSource) return Long_Float;
   procedure setAngle (This : in out MyCanvasEventSource; angle : Long_Float);

end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;


