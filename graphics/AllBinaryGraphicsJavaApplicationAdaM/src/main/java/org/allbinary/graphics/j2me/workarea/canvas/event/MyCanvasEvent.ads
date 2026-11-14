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
limited with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References is
   type MyCanvasEvent_Access is access all org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package.MyCanvasEvent'Class;
   type MyCanvasEvent_Access_Array is array (Natural range <>) of MyCanvasEvent_Access;
   type MyCanvasEvent_Access_Array_Access is access all MyCanvasEvent_Access_Array;
   type MyCanvasEvent_Access_Array_Access_Array is array (Natural range <>) of MyCanvasEvent_Access_Array_Access;
   type MyCanvasEvent_Access_Array_Access_Array_Access is access all MyCanvasEvent_Access_Array_Access_Array;
   type MyCanvasEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyCanvasEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : MyCanvasEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyCanvasEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyCanvasEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyCanvasEvent_Access_Array_Access is (if Value /= null and then Value.all in MyCanvasEvent_Access_Array_Object'Class then MyCanvasEvent_Access_Array_Object'Class (Value.all).Value else null);
   type MyCanvasEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyCanvasEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyCanvasEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyCanvasEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyCanvasEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyCanvasEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyCanvasEvent_Access_Array_Access_Array_Object'Class then MyCanvasEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References;

with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
--  with java.util.EventObject_Package; use java.util.EventObject_Package;

package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MyCanvasEvent_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access;
   function "=" (Left, Right : MyCanvasEvent_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References."=";
   subtype MyCanvasEvent_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array;
   function "=" (Left, Right : MyCanvasEvent_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References."=";
   subtype MyCanvasEvent_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array_Access;
   function "=" (Left, Right : MyCanvasEvent_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References."=";
   function Java_Box (Value : MyCanvasEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.Java_Box;
   function Java_Unbox_MyCanvasEvent_Access_Array (Value : access Java_Object'Class) return MyCanvasEvent_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.Java_Unbox_MyCanvasEvent_Access_Array;
   subtype MyCanvasEvent_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvasEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References."=";
   subtype MyCanvasEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.MyCanvasEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvasEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References."=";
   function Java_Box (Value : MyCanvasEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.Java_Box;
   function Java_Unbox_MyCanvasEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return MyCanvasEvent_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package_References.Java_Unbox_MyCanvasEvent_Access_Array_Access_Array;

   type MyCanvasEvent is new Java_Object with null record;

   procedure Initialize (This : in out MyCanvasEvent'Class; source_Param : access Java_Object'Class);
   function Create (source_Param : access Java_Object'Class) return MyCanvasEvent_Access;
   function getSource (This : in out MyCanvasEvent) return Java_Object_Access;
   function toString (This : in out MyCanvasEvent) return Unbounded_String;
   function getCommand (This : in out MyCanvasEvent) return Unbounded_String;
   function getTreeNode (This : in out MyCanvasEvent) return MutableTreeNode_Access;
   function getAngle (This : in out MyCanvasEvent) return Long_Float;

end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;


