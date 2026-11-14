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
limited with org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package;
package org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References is
   type VirtualKeyboardAPI3_Access is access all org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package.VirtualKeyboardAPI3'Class;
   type VirtualKeyboardAPI3_Access_Array is array (Natural range <>) of VirtualKeyboardAPI3_Access;
   type VirtualKeyboardAPI3_Access_Array_Access is access all VirtualKeyboardAPI3_Access_Array;
   type VirtualKeyboardAPI3_Access_Array_Access_Array is array (Natural range <>) of VirtualKeyboardAPI3_Access_Array_Access;
   type VirtualKeyboardAPI3_Access_Array_Access_Array_Access is access all VirtualKeyboardAPI3_Access_Array_Access_Array;
   type VirtualKeyboardAPI3_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VirtualKeyboardAPI3_Access_Array_Access;
   end record;
   function Java_Box (Value : VirtualKeyboardAPI3_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VirtualKeyboardAPI3_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VirtualKeyboardAPI3_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VirtualKeyboardAPI3_Access_Array_Access is (if Value /= null and then Value.all in VirtualKeyboardAPI3_Access_Array_Object'Class then VirtualKeyboardAPI3_Access_Array_Object'Class (Value.all).Value else null);
   type VirtualKeyboardAPI3_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VirtualKeyboardAPI3_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VirtualKeyboardAPI3_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VirtualKeyboardAPI3_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VirtualKeyboardAPI3_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VirtualKeyboardAPI3_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VirtualKeyboardAPI3_Access_Array_Access_Array_Object'Class then VirtualKeyboardAPI3_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References;

with org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;
with org.allbinary.android.input.VirtualKeyboard_Package; use org.allbinary.android.input.VirtualKeyboard_Package;
limited with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package_References;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package; use org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package VirtualKeyboard_Package renames Standard.org.allbinary.android.input.VirtualKeyboard_Package;
   package VirtualKeyboardEvent_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEvent_Package;
   package VirtualKeyboardEventListenerInterface_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   use type Activity_Access;
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   use type Activity_Access_Array;
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   use type Activity_Access_Array_Access;
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   use type Activity_Access_Array_Access_Array;
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   use type Activity_Access_Array_Access_Array_Access;
   subtype VirtualKeyboardEvent_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access;
   use type VirtualKeyboardEvent_Access;
   subtype VirtualKeyboardEvent_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array;
   use type VirtualKeyboardEvent_Access_Array;
   subtype VirtualKeyboardEvent_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access;
   use type VirtualKeyboardEvent_Access_Array_Access;
   subtype VirtualKeyboardEvent_Access_Array_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array;
   use type VirtualKeyboardEvent_Access_Array_Access_Array;
   subtype VirtualKeyboardEvent_Access_Array_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array_Access;
   use type VirtualKeyboardEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VirtualKeyboardAPI3_Access is org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References.VirtualKeyboardAPI3_Access;
   function "=" (Left, Right : VirtualKeyboardAPI3_Access) return Boolean renames org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References."=";
   subtype VirtualKeyboardAPI3_Access_Array is org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References.VirtualKeyboardAPI3_Access_Array;
   function "=" (Left, Right : VirtualKeyboardAPI3_Access_Array) return Boolean renames org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References."=";
   subtype VirtualKeyboardAPI3_Access_Array_Access is org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References.VirtualKeyboardAPI3_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardAPI3_Access_Array_Access) return Boolean renames org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References."=";
   function Java_Box (Value : VirtualKeyboardAPI3_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References.Java_Box;
   function Java_Unbox_VirtualKeyboardAPI3_Access_Array (Value : access Java_Object'Class) return VirtualKeyboardAPI3_Access_Array_Access renames org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References.Java_Unbox_VirtualKeyboardAPI3_Access_Array;
   subtype VirtualKeyboardAPI3_Access_Array_Access_Array is org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References.VirtualKeyboardAPI3_Access_Array_Access_Array;
   function "=" (Left, Right : VirtualKeyboardAPI3_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References."=";
   subtype VirtualKeyboardAPI3_Access_Array_Access_Array_Access is org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References.VirtualKeyboardAPI3_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardAPI3_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References."=";
   function Java_Box (Value : VirtualKeyboardAPI3_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References.Java_Box;
   function Java_Unbox_VirtualKeyboardAPI3_Access_Array_Access_Array (Value : access Java_Object'Class) return VirtualKeyboardAPI3_Access_Array_Access_Array_Access renames org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package_References.Java_Unbox_VirtualKeyboardAPI3_Access_Array_Access_Array;

   type VirtualKeyboardAPI3 is new VirtualKeyboard and VirtualKeyboardEventListenerInterface with record
      virtualKeyboard : Boolean;
      activity : Activity_Access;
      showVirtualKeyboardRunnable : Runnable_Access;
      hideVirtualKeyboardRunnable : Runnable_Access;
   end record;
   MAX_API : Integer;
   MIN_API : Integer;

   procedure Initialize (This : in out VirtualKeyboardAPI3'Class; activity_Param : access Activity_Package.Activity'Class);
   function Create (activity_Param : access Activity_Package.Activity'Class) return VirtualKeyboardAPI3_Access;
   procedure onEvent (This : in out VirtualKeyboardAPI3; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onVirtualKeyboardEvent (This : in out VirtualKeyboardAPI3; virtualKeyboardEvent_Param : access VirtualKeyboardEvent_Package.VirtualKeyboardEvent'Class);
   procedure forceHide (This : in out VirtualKeyboardAPI3);
   procedure hide (This : in out VirtualKeyboardAPI3);
   procedure showVirtualKeyboard (This : in out VirtualKeyboardAPI3);
   procedure hideVirtualKeyboard (This : in out VirtualKeyboardAPI3);

end org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package;


