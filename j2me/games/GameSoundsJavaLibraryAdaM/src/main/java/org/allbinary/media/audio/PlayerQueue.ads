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

limited with org.allbinary.media.audio.PlayerQueue_Package;
package org.allbinary.media.audio.PlayerQueue_Package_References is
   type PlayerQueue_Access is access all org.allbinary.media.audio.PlayerQueue_Package.PlayerQueue'Class;
   type PlayerQueue_Access_Array is array (Natural range <>) of PlayerQueue_Access;
   type PlayerQueue_Access_Array_Access is access all PlayerQueue_Access_Array;
   type PlayerQueue_Access_Array_Access_Array is array (Natural range <>) of PlayerQueue_Access_Array_Access;
   type PlayerQueue_Access_Array_Access_Array_Access is access all PlayerQueue_Access_Array_Access_Array;
end org.allbinary.media.audio.PlayerQueue_Package_References;

with org.allbinary.media.audio.PlayerQueue_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;

package org.allbinary.media.audio.PlayerQueue_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   use type Sound_Access;
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   use type Sound_Access_Array;
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   use type Sound_Access_Array_Access;
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   use type Sound_Access_Array_Access_Array;
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   use type Sound_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlayerQueue_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access;
   function "=" (Left, Right : PlayerQueue_Access) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";
   subtype PlayerQueue_Access_Array is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array;
   function "=" (Left, Right : PlayerQueue_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";
   subtype PlayerQueue_Access_Array_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access;
   function "=" (Left, Right : PlayerQueue_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";
   subtype PlayerQueue_Access_Array_Access_Array is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerQueue_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";
   subtype PlayerQueue_Access_Array_Access_Array_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerQueue_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";

   type PlayerQueue is new Java_Object with record
      commonStrings : CommonStrings_Access;
      list : BasicArrayList_Access;
      max : Integer;
   end record;
   TOTAL : Unbounded_String;

   procedure Initialize (This : in out PlayerQueue'Class; max : Integer);
   function Create (max : Integer) return PlayerQueue_Access;
   procedure add (This : in out PlayerQueue; sound_Param : access Sound_Package.Sound'Class);
   function process (This : in out PlayerQueue) return Boolean;
   procedure clear (This : in out PlayerQueue);
   function toString (This : in out PlayerQueue) return Unbounded_String;

end org.allbinary.media.audio.PlayerQueue_Package;


