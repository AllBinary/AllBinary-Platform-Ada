-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.media.audio.TimeBaseInterface_Package;
package org.allbinary.media.audio.TimeBaseInterface_Package_References is
   type TimeBaseInterface_Access is access all org.allbinary.media.audio.TimeBaseInterface_Package.TimeBaseInterface'Class;
   type TimeBaseInterface_Access_Array is array (Natural range <>) of TimeBaseInterface_Access;
   type TimeBaseInterface_Access_Array_Access is access all TimeBaseInterface_Access_Array;
   type TimeBaseInterface_Access_Array_Access_Array is array (Natural range <>) of TimeBaseInterface_Access_Array_Access;
   type TimeBaseInterface_Access_Array_Access_Array_Access is access all TimeBaseInterface_Access_Array_Access_Array;
   type TimeBaseInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeBaseInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeBaseInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeBaseInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeBaseInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeBaseInterface_Access_Array_Access is (if Value /= null and then Value.all in TimeBaseInterface_Access_Array_Object'Class then TimeBaseInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TimeBaseInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeBaseInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeBaseInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeBaseInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeBaseInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeBaseInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimeBaseInterface_Access_Array_Access_Array_Object'Class then TimeBaseInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.TimeBaseInterface_Package_References;

with org.allbinary.media.audio.TimeBaseInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.media.TimeBase_Package;
with javax.microedition.media.TimeBase_Package_References;

package org.allbinary.media.audio.TimeBaseInterface_Package is

   package TimeBase_Package renames Standard.javax.microedition.media.TimeBase_Package;
   package Reference_Types is
   subtype TimeBase_Access is javax.microedition.media.TimeBase_Package_References.TimeBase_Access;
   use type TimeBase_Access;
   subtype TimeBase_Access_Array is javax.microedition.media.TimeBase_Package_References.TimeBase_Access_Array;
   use type TimeBase_Access_Array;
   subtype TimeBase_Access_Array_Access is javax.microedition.media.TimeBase_Package_References.TimeBase_Access_Array_Access;
   use type TimeBase_Access_Array_Access;
   subtype TimeBase_Access_Array_Access_Array is javax.microedition.media.TimeBase_Package_References.TimeBase_Access_Array_Access_Array;
   use type TimeBase_Access_Array_Access_Array;
   subtype TimeBase_Access_Array_Access_Array_Access is javax.microedition.media.TimeBase_Package_References.TimeBase_Access_Array_Access_Array_Access;
   use type TimeBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TimeBaseInterface is interface;
   subtype TimeBaseInterface_Access is org.allbinary.media.audio.TimeBaseInterface_Package_References.TimeBaseInterface_Access;
   function "=" (Left, Right : TimeBaseInterface_Access) return Boolean renames org.allbinary.media.audio.TimeBaseInterface_Package_References."=";
   subtype TimeBaseInterface_Access_Array is org.allbinary.media.audio.TimeBaseInterface_Package_References.TimeBaseInterface_Access_Array;
   function "=" (Left, Right : TimeBaseInterface_Access_Array) return Boolean renames org.allbinary.media.audio.TimeBaseInterface_Package_References."=";
   subtype TimeBaseInterface_Access_Array_Access is org.allbinary.media.audio.TimeBaseInterface_Package_References.TimeBaseInterface_Access_Array_Access;
   function "=" (Left, Right : TimeBaseInterface_Access_Array_Access) return Boolean renames org.allbinary.media.audio.TimeBaseInterface_Package_References."=";
   function Java_Box (Value : TimeBaseInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.TimeBaseInterface_Package_References.Java_Box;
   function Java_Unbox_TimeBaseInterface_Access_Array (Value : access Java_Object'Class) return TimeBaseInterface_Access_Array_Access renames org.allbinary.media.audio.TimeBaseInterface_Package_References.Java_Unbox_TimeBaseInterface_Access_Array;
   subtype TimeBaseInterface_Access_Array_Access_Array is org.allbinary.media.audio.TimeBaseInterface_Package_References.TimeBaseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TimeBaseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.TimeBaseInterface_Package_References."=";
   subtype TimeBaseInterface_Access_Array_Access_Array_Access is org.allbinary.media.audio.TimeBaseInterface_Package_References.TimeBaseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeBaseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.TimeBaseInterface_Package_References."=";
   function Java_Box (Value : TimeBaseInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.TimeBaseInterface_Package_References.Java_Box;
   function Java_Unbox_TimeBaseInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TimeBaseInterface_Access_Array_Access_Array_Access renames org.allbinary.media.audio.TimeBaseInterface_Package_References.Java_Unbox_TimeBaseInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TimeBaseInterface (Value : TimeBaseInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getTimeBase (This : in out TimeBaseInterface) return TimeBase_Access is abstract;
   procedure setTimeBase (This : in out TimeBaseInterface; timeBase_Param : access TimeBase_Package.TimeBase'Class) is abstract;

end org.allbinary.media.audio.TimeBaseInterface_Package;


