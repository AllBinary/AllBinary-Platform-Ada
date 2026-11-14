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
limited with org.allbinary.bounds.event.BoundsChangeEventListener_Package;
package org.allbinary.bounds.event.BoundsChangeEventListener_Package_References is
   type BoundsChangeEventListener_Access is access all org.allbinary.bounds.event.BoundsChangeEventListener_Package.BoundsChangeEventListener'Class;
   type BoundsChangeEventListener_Access_Array is array (Natural range <>) of BoundsChangeEventListener_Access;
   type BoundsChangeEventListener_Access_Array_Access is access all BoundsChangeEventListener_Access_Array;
   type BoundsChangeEventListener_Access_Array_Access_Array is array (Natural range <>) of BoundsChangeEventListener_Access_Array_Access;
   type BoundsChangeEventListener_Access_Array_Access_Array_Access is access all BoundsChangeEventListener_Access_Array_Access_Array;
   type BoundsChangeEventListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BoundsChangeEventListener_Access_Array_Access;
   end record;
   function Java_Box (Value : BoundsChangeEventListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BoundsChangeEventListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BoundsChangeEventListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BoundsChangeEventListener_Access_Array_Access is (if Value /= null and then Value.all in BoundsChangeEventListener_Access_Array_Object'Class then BoundsChangeEventListener_Access_Array_Object'Class (Value.all).Value else null);
   type BoundsChangeEventListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BoundsChangeEventListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BoundsChangeEventListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BoundsChangeEventListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BoundsChangeEventListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BoundsChangeEventListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BoundsChangeEventListener_Access_Array_Access_Array_Object'Class then BoundsChangeEventListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.bounds.event.BoundsChangeEventListener_Package_References;

with org.allbinary.bounds.event.BoundsChangeEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.bounds.event.BoundsChangeEvent_Package;
with org.allbinary.bounds.event.BoundsChangeEvent_Package_References;

package org.allbinary.bounds.event.BoundsChangeEventListener_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype BoundsChangeEvent_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access;
   use type BoundsChangeEvent_Access;
   subtype BoundsChangeEvent_Access_Array is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array;
   use type BoundsChangeEvent_Access_Array;
   subtype BoundsChangeEvent_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access;
   use type BoundsChangeEvent_Access_Array_Access;
   subtype BoundsChangeEvent_Access_Array_Access_Array is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access_Array;
   use type BoundsChangeEvent_Access_Array_Access_Array;
   subtype BoundsChangeEvent_Access_Array_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access_Array_Access;
   use type BoundsChangeEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BoundsChangeEventListener is interface and EventListenerInterface;
   subtype BoundsChangeEventListener_Access is org.allbinary.bounds.event.BoundsChangeEventListener_Package_References.BoundsChangeEventListener_Access;
   function "=" (Left, Right : BoundsChangeEventListener_Access) return Boolean renames org.allbinary.bounds.event.BoundsChangeEventListener_Package_References."=";
   subtype BoundsChangeEventListener_Access_Array is org.allbinary.bounds.event.BoundsChangeEventListener_Package_References.BoundsChangeEventListener_Access_Array;
   function "=" (Left, Right : BoundsChangeEventListener_Access_Array) return Boolean renames org.allbinary.bounds.event.BoundsChangeEventListener_Package_References."=";
   subtype BoundsChangeEventListener_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEventListener_Package_References.BoundsChangeEventListener_Access_Array_Access;
   function "=" (Left, Right : BoundsChangeEventListener_Access_Array_Access) return Boolean renames org.allbinary.bounds.event.BoundsChangeEventListener_Package_References."=";
   function Java_Box (Value : BoundsChangeEventListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.bounds.event.BoundsChangeEventListener_Package_References.Java_Box;
   function Java_Unbox_BoundsChangeEventListener_Access_Array (Value : access Java_Object'Class) return BoundsChangeEventListener_Access_Array_Access renames org.allbinary.bounds.event.BoundsChangeEventListener_Package_References.Java_Unbox_BoundsChangeEventListener_Access_Array;
   subtype BoundsChangeEventListener_Access_Array_Access_Array is org.allbinary.bounds.event.BoundsChangeEventListener_Package_References.BoundsChangeEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : BoundsChangeEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.bounds.event.BoundsChangeEventListener_Package_References."=";
   subtype BoundsChangeEventListener_Access_Array_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEventListener_Package_References.BoundsChangeEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BoundsChangeEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bounds.event.BoundsChangeEventListener_Package_References."=";
   function Java_Box (Value : BoundsChangeEventListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.bounds.event.BoundsChangeEventListener_Package_References.Java_Box;
   function Java_Unbox_BoundsChangeEventListener_Access_Array_Access_Array (Value : access Java_Object'Class) return BoundsChangeEventListener_Access_Array_Access_Array_Access renames org.allbinary.bounds.event.BoundsChangeEventListener_Package_References.Java_Unbox_BoundsChangeEventListener_Access_Array_Access_Array;
   function Java_Object_Access_From_BoundsChangeEventListener (Value : BoundsChangeEventListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onBoundsChangeEvent (This : in out BoundsChangeEventListener; boundsChangeEvent_Param : access BoundsChangeEvent_Package.BoundsChangeEvent'Class) is abstract;

end org.allbinary.bounds.event.BoundsChangeEventListener_Package;


