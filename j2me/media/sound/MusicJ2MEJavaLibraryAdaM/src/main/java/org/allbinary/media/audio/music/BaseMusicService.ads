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

limited with org.allbinary.media.audio.music.BaseMusicService_Package;
package org.allbinary.media.audio.music.BaseMusicService_Package_References is
   type BaseMusicService_Access is access all org.allbinary.media.audio.music.BaseMusicService_Package.BaseMusicService'Class;
   type BaseMusicService_Access_Array is array (Natural range <>) of BaseMusicService_Access;
   type BaseMusicService_Access_Array_Access is access all BaseMusicService_Access_Array;
   type BaseMusicService_Access_Array_Access_Array is array (Natural range <>) of BaseMusicService_Access_Array_Access;
   type BaseMusicService_Access_Array_Access_Array_Access is access all BaseMusicService_Access_Array_Access_Array;
end org.allbinary.media.audio.music.BaseMusicService_Package_References;

with org.allbinary.media.audio.music.BaseMusicService_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.audio.music.BaseMusicService_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BaseMusicService_Access is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access;
   function "=" (Left, Right : BaseMusicService_Access) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";
   subtype BaseMusicService_Access_Array is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access_Array;
   function "=" (Left, Right : BaseMusicService_Access_Array) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";
   subtype BaseMusicService_Access_Array_Access is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access_Array_Access;
   function "=" (Left, Right : BaseMusicService_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";
   subtype BaseMusicService_Access_Array_Access_Array is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access_Array_Access_Array;
   function "=" (Left, Right : BaseMusicService_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";
   subtype BaseMusicService_Access_Array_Access_Array_Access is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseMusicService_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";

   type BaseMusicService is new Java_Object with null record;

   procedure Initialize (This : in out BaseMusicService'Class);
   function Create return BaseMusicService_Access;

end org.allbinary.media.audio.music.BaseMusicService_Package;


