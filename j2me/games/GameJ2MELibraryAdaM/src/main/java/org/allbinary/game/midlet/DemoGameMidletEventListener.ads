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
limited with org.allbinary.game.midlet.DemoGameMidletEventListener_Package;
package org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References is
   type DemoGameMidletEventListener_Access is access all org.allbinary.game.midlet.DemoGameMidletEventListener_Package.DemoGameMidletEventListener'Class;
   type DemoGameMidletEventListener_Access_Array is array (Natural range <>) of DemoGameMidletEventListener_Access;
   type DemoGameMidletEventListener_Access_Array_Access is access all DemoGameMidletEventListener_Access_Array;
   type DemoGameMidletEventListener_Access_Array_Access_Array is array (Natural range <>) of DemoGameMidletEventListener_Access_Array_Access;
   type DemoGameMidletEventListener_Access_Array_Access_Array_Access is access all DemoGameMidletEventListener_Access_Array_Access_Array;
   type DemoGameMidletEventListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameMidletEventListener_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameMidletEventListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameMidletEventListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameMidletEventListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameMidletEventListener_Access_Array_Access is (if Value /= null and then Value.all in DemoGameMidletEventListener_Access_Array_Object'Class then DemoGameMidletEventListener_Access_Array_Object'Class (Value.all).Value else null);
   type DemoGameMidletEventListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameMidletEventListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameMidletEventListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameMidletEventListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameMidletEventListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameMidletEventListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoGameMidletEventListener_Access_Array_Access_Array_Object'Class then DemoGameMidletEventListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References;

with org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.game.midlet.DemoGameMidletEvent_Package;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package_References;

package org.allbinary.game.midlet.DemoGameMidletEventListener_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype DemoGameMidletEvent_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access;
   use type DemoGameMidletEvent_Access;
   subtype DemoGameMidletEvent_Access_Array is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array;
   use type DemoGameMidletEvent_Access_Array;
   subtype DemoGameMidletEvent_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access;
   use type DemoGameMidletEvent_Access_Array_Access;
   subtype DemoGameMidletEvent_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access_Array;
   use type DemoGameMidletEvent_Access_Array_Access_Array;
   subtype DemoGameMidletEvent_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access_Array_Access;
   use type DemoGameMidletEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DemoGameMidletEventListener is interface and EventListenerInterface;
   subtype DemoGameMidletEventListener_Access is org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References.DemoGameMidletEventListener_Access;
   function "=" (Left, Right : DemoGameMidletEventListener_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References."=";
   subtype DemoGameMidletEventListener_Access_Array is org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References.DemoGameMidletEventListener_Access_Array;
   function "=" (Left, Right : DemoGameMidletEventListener_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References."=";
   subtype DemoGameMidletEventListener_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References.DemoGameMidletEventListener_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References."=";
   function Java_Box (Value : DemoGameMidletEventListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References.Java_Box;
   function Java_Unbox_DemoGameMidletEventListener_Access_Array (Value : access Java_Object'Class) return DemoGameMidletEventListener_Access_Array_Access renames org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References.Java_Unbox_DemoGameMidletEventListener_Access_Array;
   subtype DemoGameMidletEventListener_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References.DemoGameMidletEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameMidletEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References."=";
   subtype DemoGameMidletEventListener_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References.DemoGameMidletEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References."=";
   function Java_Box (Value : DemoGameMidletEventListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References.Java_Box;
   function Java_Unbox_DemoGameMidletEventListener_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoGameMidletEventListener_Access_Array_Access_Array_Access renames org.allbinary.game.midlet.DemoGameMidletEventListener_Package_References.Java_Unbox_DemoGameMidletEventListener_Access_Array_Access_Array;
   function Java_Object_Access_From_DemoGameMidletEventListener (Value : DemoGameMidletEventListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onDemoStart (This : in out DemoGameMidletEventListener) is abstract;
   procedure onGameStart (This : in out DemoGameMidletEventListener) is abstract;
   procedure onDemoGameMidletEvent (This : in out DemoGameMidletEventListener; demoGameMidletEvent_Param : access DemoGameMidletEvent_Package.DemoGameMidletEvent'Class) is abstract;

end org.allbinary.game.midlet.DemoGameMidletEventListener_Package;


