--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
package org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References is
   type CompleteMotionGestureInputEventListener_Access is access all org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package.CompleteMotionGestureInputEventListener'Class;
   type CompleteMotionGestureInputEventListener_Access_Array is array (Natural range <>) of CompleteMotionGestureInputEventListener_Access;
   type CompleteMotionGestureInputEventListener_Access_Array_Access is access all CompleteMotionGestureInputEventListener_Access_Array;
   type CompleteMotionGestureInputEventListener_Access_Array_Access_Array is array (Natural range <>) of CompleteMotionGestureInputEventListener_Access_Array_Access;
   type CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access is access all CompleteMotionGestureInputEventListener_Access_Array_Access_Array;
   type CompleteMotionGestureInputEventListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompleteMotionGestureInputEventListener_Access_Array_Access;
   end record;
   function Java_Box (Value : CompleteMotionGestureInputEventListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompleteMotionGestureInputEventListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompleteMotionGestureInputEventListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompleteMotionGestureInputEventListener_Access_Array_Access is (if Value /= null and then Value.all in CompleteMotionGestureInputEventListener_Access_Array_Object'Class then CompleteMotionGestureInputEventListener_Access_Array_Object'Class (Value.all).Value else null);
   type CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompleteMotionGestureInputEventListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Object'Class then CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References;

with org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
limited with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References;

package org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
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
   subtype CompleteMotionGestureInputEvent_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access;
   use type CompleteMotionGestureInputEvent_Access;
   subtype CompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array;
   use type CompleteMotionGestureInputEvent_Access_Array;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access;
   use type CompleteMotionGestureInputEvent_Access_Array_Access;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   use type CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   use type CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CompleteMotionGestureInputEventListener_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   subtype CompleteMotionGestureInputEventListener_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   subtype CompleteMotionGestureInputEventListener_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   function Java_Box (Value : CompleteMotionGestureInputEventListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.Java_Box;
   function Java_Unbox_CompleteMotionGestureInputEventListener_Access_Array (Value : access Java_Object'Class) return CompleteMotionGestureInputEventListener_Access_Array_Access renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.Java_Unbox_CompleteMotionGestureInputEventListener_Access_Array;
   subtype CompleteMotionGestureInputEventListener_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   subtype CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References."=";
   function Java_Box (Value : CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.Java_Box;
   function Java_Unbox_CompleteMotionGestureInputEventListener_Access_Array_Access_Array (Value : access Java_Object'Class) return CompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access renames org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package_References.Java_Unbox_CompleteMotionGestureInputEventListener_Access_Array_Access_Array;

   type CompleteMotionGestureInputEventListener is new Java_Object and CompleteMotionGestureInputEventListenerInterface with null record;

   procedure Initialize (This : in out CompleteMotionGestureInputEventListener'Class);
   function Create return CompleteMotionGestureInputEventListener_Access;
   procedure onEvent (This : in out CompleteMotionGestureInputEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onCompleteMotionGestureInputEvent (This : in out CompleteMotionGestureInputEventListener; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class);

end org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;


