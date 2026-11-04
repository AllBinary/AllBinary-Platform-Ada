-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.android.NullAndroidCanvas_Package;
package org.allbinary.android.NullAndroidCanvas_Package_References is
   type NullAndroidCanvas_Access is access all org.allbinary.android.NullAndroidCanvas_Package.NullAndroidCanvas'Class;
   type NullAndroidCanvas_Access_Array is array (Natural range <>) of NullAndroidCanvas_Access;
   type NullAndroidCanvas_Access_Array_Access is access all NullAndroidCanvas_Access_Array;
   type NullAndroidCanvas_Access_Array_Access_Array is array (Natural range <>) of NullAndroidCanvas_Access_Array_Access;
   type NullAndroidCanvas_Access_Array_Access_Array_Access is access all NullAndroidCanvas_Access_Array_Access_Array;
end org.allbinary.android.NullAndroidCanvas_Package_References;

with org.allbinary.android.NullAndroidCanvas_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.graphics.Canvas_Package;
with android.graphics.Canvas_Package_References;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;

package org.allbinary.android.NullAndroidCanvas_Package is

   package Canvas_Package renames Standard.android.graphics.Canvas_Package;
   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package Reference_Types is
   subtype Canvas_Access is android.graphics.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is android.graphics.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is android.graphics.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is android.graphics.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is android.graphics.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullAndroidCanvas_Access is org.allbinary.android.NullAndroidCanvas_Package_References.NullAndroidCanvas_Access;
   function "=" (Left, Right : NullAndroidCanvas_Access) return Boolean renames org.allbinary.android.NullAndroidCanvas_Package_References."=";
   subtype NullAndroidCanvas_Access_Array is org.allbinary.android.NullAndroidCanvas_Package_References.NullAndroidCanvas_Access_Array;
   function "=" (Left, Right : NullAndroidCanvas_Access_Array) return Boolean renames org.allbinary.android.NullAndroidCanvas_Package_References."=";
   subtype NullAndroidCanvas_Access_Array_Access is org.allbinary.android.NullAndroidCanvas_Package_References.NullAndroidCanvas_Access_Array_Access;
   function "=" (Left, Right : NullAndroidCanvas_Access_Array_Access) return Boolean renames org.allbinary.android.NullAndroidCanvas_Package_References."=";
   subtype NullAndroidCanvas_Access_Array_Access_Array is org.allbinary.android.NullAndroidCanvas_Package_References.NullAndroidCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : NullAndroidCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.android.NullAndroidCanvas_Package_References."=";
   subtype NullAndroidCanvas_Access_Array_Access_Array_Access is org.allbinary.android.NullAndroidCanvas_Package_References.NullAndroidCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullAndroidCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.NullAndroidCanvas_Package_References."=";

   type NullAndroidCanvas is new Java_Object with null record;
   NULL_CANVAS : Canvas_Access;
   NULL_MEDIA_PLAYER : MediaPlayer_Access;

   procedure Initialize (This : in out NullAndroidCanvas'Class);
   function Create return NullAndroidCanvas_Access;

end org.allbinary.android.NullAndroidCanvas_Package;


