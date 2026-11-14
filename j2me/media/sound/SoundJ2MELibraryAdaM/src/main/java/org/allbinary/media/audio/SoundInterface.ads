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
limited with org.allbinary.media.audio.SoundInterface_Package;
package org.allbinary.media.audio.SoundInterface_Package_References is
   type SoundInterface_Access is access all org.allbinary.media.audio.SoundInterface_Package.SoundInterface'Class;
   type SoundInterface_Access_Array is array (Natural range <>) of SoundInterface_Access;
   type SoundInterface_Access_Array_Access is access all SoundInterface_Access_Array;
   type SoundInterface_Access_Array_Access_Array is array (Natural range <>) of SoundInterface_Access_Array_Access;
   type SoundInterface_Access_Array_Access_Array_Access is access all SoundInterface_Access_Array_Access_Array;
   type SoundInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoundInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : SoundInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoundInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoundInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoundInterface_Access_Array_Access is (if Value /= null and then Value.all in SoundInterface_Access_Array_Object'Class then SoundInterface_Access_Array_Object'Class (Value.all).Value else null);
   type SoundInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SoundInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SoundInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SoundInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SoundInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SoundInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SoundInterface_Access_Array_Access_Array_Object'Class then SoundInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.SoundInterface_Package_References;

with org.allbinary.media.audio.SoundInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;

package org.allbinary.media.audio.SoundInterface_Package is

   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   package Reference_Types is
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   use type Player_Access;
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   use type Player_Access_Array;
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   use type Player_Access_Array_Access;
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   use type Player_Access_Array_Access_Array;
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   use type Player_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type SoundInterface is interface;
   subtype SoundInterface_Access is org.allbinary.media.audio.SoundInterface_Package_References.SoundInterface_Access;
   function "=" (Left, Right : SoundInterface_Access) return Boolean renames org.allbinary.media.audio.SoundInterface_Package_References."=";
   subtype SoundInterface_Access_Array is org.allbinary.media.audio.SoundInterface_Package_References.SoundInterface_Access_Array;
   function "=" (Left, Right : SoundInterface_Access_Array) return Boolean renames org.allbinary.media.audio.SoundInterface_Package_References."=";
   subtype SoundInterface_Access_Array_Access is org.allbinary.media.audio.SoundInterface_Package_References.SoundInterface_Access_Array_Access;
   function "=" (Left, Right : SoundInterface_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundInterface_Package_References."=";
   function Java_Box (Value : SoundInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.SoundInterface_Package_References.Java_Box;
   function Java_Unbox_SoundInterface_Access_Array (Value : access Java_Object'Class) return SoundInterface_Access_Array_Access renames org.allbinary.media.audio.SoundInterface_Package_References.Java_Unbox_SoundInterface_Access_Array;
   subtype SoundInterface_Access_Array_Access_Array is org.allbinary.media.audio.SoundInterface_Package_References.SoundInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SoundInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.SoundInterface_Package_References."=";
   subtype SoundInterface_Access_Array_Access_Array_Access is org.allbinary.media.audio.SoundInterface_Package_References.SoundInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SoundInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundInterface_Package_References."=";
   function Java_Box (Value : SoundInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.SoundInterface_Package_References.Java_Box;
   function Java_Unbox_SoundInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return SoundInterface_Access_Array_Access_Array_Access renames org.allbinary.media.audio.SoundInterface_Package_References.Java_Unbox_SoundInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_SoundInterface (Value : SoundInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getResource (This : in out SoundInterface) return Unbounded_String is abstract;
   function getPlayerP (This : in out SoundInterface) return Player_Access is abstract;
   procedure init (This : in out SoundInterface) is abstract;

end org.allbinary.media.audio.SoundInterface_Package;


