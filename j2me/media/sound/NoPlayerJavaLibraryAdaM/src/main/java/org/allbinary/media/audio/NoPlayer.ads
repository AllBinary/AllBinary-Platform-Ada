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
limited with org.allbinary.media.audio.NoPlayer_Package;
package org.allbinary.media.audio.NoPlayer_Package_References is
   type NoPlayer_Access is access all org.allbinary.media.audio.NoPlayer_Package.NoPlayer'Class;
   type NoPlayer_Access_Array is array (Natural range <>) of NoPlayer_Access;
   type NoPlayer_Access_Array_Access is access all NoPlayer_Access_Array;
   type NoPlayer_Access_Array_Access_Array is array (Natural range <>) of NoPlayer_Access_Array_Access;
   type NoPlayer_Access_Array_Access_Array_Access is access all NoPlayer_Access_Array_Access_Array;
   type NoPlayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoPlayer_Access_Array_Access;
   end record;
   function Java_Box (Value : NoPlayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoPlayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoPlayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoPlayer_Access_Array_Access is (if Value /= null and then Value.all in NoPlayer_Access_Array_Object'Class then NoPlayer_Access_Array_Object'Class (Value.all).Value else null);
   type NoPlayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoPlayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoPlayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoPlayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoPlayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoPlayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoPlayer_Access_Array_Access_Array_Object'Class then NoPlayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.NoPlayer_Package_References;

with org.allbinary.media.audio.NoPlayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.media.Control_Package;
with javax.microedition.media.Control_Package_References;
with org.allbinary.media.audio.BasicPlayer_Package; use org.allbinary.media.audio.BasicPlayer_Package;

package org.allbinary.media.audio.NoPlayer_Package is

   package Control_Package renames Standard.javax.microedition.media.Control_Package;
   package Reference_Types is
   subtype Control_Access is javax.microedition.media.Control_Package_References.Control_Access;
   use type Control_Access;
   subtype Control_Access_Array is javax.microedition.media.Control_Package_References.Control_Access_Array;
   use type Control_Access_Array;
   subtype Control_Access_Array_Access is javax.microedition.media.Control_Package_References.Control_Access_Array_Access;
   use type Control_Access_Array_Access;
   subtype Control_Access_Array_Access_Array is javax.microedition.media.Control_Package_References.Control_Access_Array_Access_Array;
   use type Control_Access_Array_Access_Array;
   subtype Control_Access_Array_Access_Array_Access is javax.microedition.media.Control_Package_References.Control_Access_Array_Access_Array_Access;
   use type Control_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoPlayer_Access is org.allbinary.media.audio.NoPlayer_Package_References.NoPlayer_Access;
   function "=" (Left, Right : NoPlayer_Access) return Boolean renames org.allbinary.media.audio.NoPlayer_Package_References."=";
   subtype NoPlayer_Access_Array is org.allbinary.media.audio.NoPlayer_Package_References.NoPlayer_Access_Array;
   function "=" (Left, Right : NoPlayer_Access_Array) return Boolean renames org.allbinary.media.audio.NoPlayer_Package_References."=";
   subtype NoPlayer_Access_Array_Access is org.allbinary.media.audio.NoPlayer_Package_References.NoPlayer_Access_Array_Access;
   function "=" (Left, Right : NoPlayer_Access_Array_Access) return Boolean renames org.allbinary.media.audio.NoPlayer_Package_References."=";
   function Java_Box (Value : NoPlayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.NoPlayer_Package_References.Java_Box;
   function Java_Unbox_NoPlayer_Access_Array (Value : access Java_Object'Class) return NoPlayer_Access_Array_Access renames org.allbinary.media.audio.NoPlayer_Package_References.Java_Unbox_NoPlayer_Access_Array;
   subtype NoPlayer_Access_Array_Access_Array is org.allbinary.media.audio.NoPlayer_Package_References.NoPlayer_Access_Array_Access_Array;
   function "=" (Left, Right : NoPlayer_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.NoPlayer_Package_References."=";
   subtype NoPlayer_Access_Array_Access_Array_Access is org.allbinary.media.audio.NoPlayer_Package_References.NoPlayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoPlayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.NoPlayer_Package_References."=";
   function Java_Box (Value : NoPlayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.NoPlayer_Package_References.Java_Box;
   function Java_Unbox_NoPlayer_Access_Array_Access_Array (Value : access Java_Object'Class) return NoPlayer_Access_Array_Access_Array_Access renames org.allbinary.media.audio.NoPlayer_Package_References.Java_Unbox_NoPlayer_Access_Array_Access_Array;

   type NoPlayer is new BasicPlayer with null record;
   NO_PLAYER : NoPlayer_Access;

   procedure Initialize (This : in out NoPlayer'Class);
   function Create return NoPlayer_Access;
   procedure close (This : in out NoPlayer);
   function getContentType (This : in out NoPlayer) return Unbounded_String;
   function getControl (This : in out NoPlayer; controlType : Unbounded_String) return Control_Access;
   procedure getControl (This : in out NoPlayer; controlType : Unbounded_String);
   function getControls (This : in out NoPlayer) return Control_Access_Array_Access;

end org.allbinary.media.audio.NoPlayer_Package;


