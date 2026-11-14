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
limited with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;
package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References is
   type MyGraphicItemEventListener_Access is access all org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package.MyGraphicItemEventListener'Class;
   type MyGraphicItemEventListener_Access_Array is array (Natural range <>) of MyGraphicItemEventListener_Access;
   type MyGraphicItemEventListener_Access_Array_Access is access all MyGraphicItemEventListener_Access_Array;
   type MyGraphicItemEventListener_Access_Array_Access_Array is array (Natural range <>) of MyGraphicItemEventListener_Access_Array_Access;
   type MyGraphicItemEventListener_Access_Array_Access_Array_Access is access all MyGraphicItemEventListener_Access_Array_Access_Array;
   type MyGraphicItemEventListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyGraphicItemEventListener_Access_Array_Access;
   end record;
   function Java_Box (Value : MyGraphicItemEventListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyGraphicItemEventListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyGraphicItemEventListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyGraphicItemEventListener_Access_Array_Access is (if Value /= null and then Value.all in MyGraphicItemEventListener_Access_Array_Object'Class then MyGraphicItemEventListener_Access_Array_Object'Class (Value.all).Value else null);
   type MyGraphicItemEventListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyGraphicItemEventListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyGraphicItemEventListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyGraphicItemEventListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyGraphicItemEventListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyGraphicItemEventListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyGraphicItemEventListener_Access_Array_Access_Array_Object'Class then MyGraphicItemEventListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package is

   package Reference_Types is
   subtype MyGraphicItemEvent_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access;
   use type MyGraphicItemEvent_Access;
   subtype MyGraphicItemEvent_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array;
   use type MyGraphicItemEvent_Access_Array;
   subtype MyGraphicItemEvent_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array_Access;
   use type MyGraphicItemEvent_Access_Array_Access;
   subtype MyGraphicItemEvent_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array_Access_Array;
   use type MyGraphicItemEvent_Access_Array_Access_Array;
   subtype MyGraphicItemEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package_References.MyGraphicItemEvent_Access_Array_Access_Array_Access;
   use type MyGraphicItemEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type MyGraphicItemEventListener is interface;
   subtype MyGraphicItemEventListener_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access;
   function "=" (Left, Right : MyGraphicItemEventListener_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   subtype MyGraphicItemEventListener_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array;
   function "=" (Left, Right : MyGraphicItemEventListener_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   subtype MyGraphicItemEventListener_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEventListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   function Java_Box (Value : MyGraphicItemEventListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.Java_Box;
   function Java_Unbox_MyGraphicItemEventListener_Access_Array (Value : access Java_Object'Class) return MyGraphicItemEventListener_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.Java_Unbox_MyGraphicItemEventListener_Access_Array;
   subtype MyGraphicItemEventListener_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : MyGraphicItemEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   subtype MyGraphicItemEventListener_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.MyGraphicItemEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyGraphicItemEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References."=";
   function Java_Box (Value : MyGraphicItemEventListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.Java_Box;
   function Java_Unbox_MyGraphicItemEventListener_Access_Array_Access_Array (Value : access Java_Object'Class) return MyGraphicItemEventListener_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package_References.Java_Unbox_MyGraphicItemEventListener_Access_Array_Access_Array;
   function Java_Object_Access_From_MyGraphicItemEventListener (Value : MyGraphicItemEventListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure delete (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;
   procedure duplicate (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;
   procedure rotate (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;
   procedure highlight (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;
   procedure deselect (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;


