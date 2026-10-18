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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.graphics.Canvas_Package; use android.graphics.Canvas_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;

package org.allbinary.android.NullAndroidCanvas_Package is

   package Canvas_Package renames Standard.android.graphics.Canvas_Package;
   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;

   type NullAndroidCanvas is tagged;
   type NullAndroidCanvas_Access is access all NullAndroidCanvas'Class;
   type NullAndroidCanvas_Access_Array is array (Natural range <>) of NullAndroidCanvas_Access;
   type NullAndroidCanvas_Access_Array_Access is access all NullAndroidCanvas_Access_Array;
   type NullAndroidCanvas_Access_Array_Access_Array is array (Natural range <>) of NullAndroidCanvas_Access_Array_Access;
   type NullAndroidCanvas_Access_Array_Access_Array_Access is access all NullAndroidCanvas_Access_Array_Access_Array;

   type NullAndroidCanvas is new Java_Object with null record;
   NULL_CANVAS : Canvas_Access;
   NULL_MEDIA_PLAYER : MediaPlayer_Access;

   procedure Initialize (This : in out NullAndroidCanvas'Class);
   function Create return NullAndroidCanvas_Access;

end org.allbinary.android.NullAndroidCanvas_Package;


