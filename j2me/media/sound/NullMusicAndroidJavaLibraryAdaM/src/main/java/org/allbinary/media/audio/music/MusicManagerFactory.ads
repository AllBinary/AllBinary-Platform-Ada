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
limited with org.allbinary.media.audio.music.MusicManagerFactory_Package;
package org.allbinary.media.audio.music.MusicManagerFactory_Package_References is
   type MusicManagerFactory_Access is access all org.allbinary.media.audio.music.MusicManagerFactory_Package.MusicManagerFactory'Class;
   type MusicManagerFactory_Access_Array is array (Natural range <>) of MusicManagerFactory_Access;
   type MusicManagerFactory_Access_Array_Access is access all MusicManagerFactory_Access_Array;
   type MusicManagerFactory_Access_Array_Access_Array is array (Natural range <>) of MusicManagerFactory_Access_Array_Access;
   type MusicManagerFactory_Access_Array_Access_Array_Access is access all MusicManagerFactory_Access_Array_Access_Array;
   type MusicManagerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MusicManagerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : MusicManagerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MusicManagerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MusicManagerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MusicManagerFactory_Access_Array_Access is (if Value /= null and then Value.all in MusicManagerFactory_Access_Array_Object'Class then MusicManagerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type MusicManagerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MusicManagerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MusicManagerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MusicManagerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MusicManagerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MusicManagerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MusicManagerFactory_Access_Array_Access_Array_Object'Class then MusicManagerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.music.MusicManagerFactory_Package_References;

with org.allbinary.media.audio.music.MusicManagerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.media.audio.music.MusicManager_Package;
with org.allbinary.media.audio.music.MusicManager_Package_References;

package org.allbinary.media.audio.music.MusicManagerFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype MusicManager_Access is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access;
   use type MusicManager_Access;
   subtype MusicManager_Access_Array is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array;
   use type MusicManager_Access_Array;
   subtype MusicManager_Access_Array_Access is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array_Access;
   use type MusicManager_Access_Array_Access;
   subtype MusicManager_Access_Array_Access_Array is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array_Access_Array;
   use type MusicManager_Access_Array_Access_Array;
   subtype MusicManager_Access_Array_Access_Array_Access is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array_Access_Array_Access;
   use type MusicManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MusicManagerFactory_Access is org.allbinary.media.audio.music.MusicManagerFactory_Package_References.MusicManagerFactory_Access;
   function "=" (Left, Right : MusicManagerFactory_Access) return Boolean renames org.allbinary.media.audio.music.MusicManagerFactory_Package_References."=";
   subtype MusicManagerFactory_Access_Array is org.allbinary.media.audio.music.MusicManagerFactory_Package_References.MusicManagerFactory_Access_Array;
   function "=" (Left, Right : MusicManagerFactory_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicManagerFactory_Package_References."=";
   subtype MusicManagerFactory_Access_Array_Access is org.allbinary.media.audio.music.MusicManagerFactory_Package_References.MusicManagerFactory_Access_Array_Access;
   function "=" (Left, Right : MusicManagerFactory_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicManagerFactory_Package_References."=";
   function Java_Box (Value : MusicManagerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.music.MusicManagerFactory_Package_References.Java_Box;
   function Java_Unbox_MusicManagerFactory_Access_Array (Value : access Java_Object'Class) return MusicManagerFactory_Access_Array_Access renames org.allbinary.media.audio.music.MusicManagerFactory_Package_References.Java_Unbox_MusicManagerFactory_Access_Array;
   subtype MusicManagerFactory_Access_Array_Access_Array is org.allbinary.media.audio.music.MusicManagerFactory_Package_References.MusicManagerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MusicManagerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicManagerFactory_Package_References."=";
   subtype MusicManagerFactory_Access_Array_Access_Array_Access is org.allbinary.media.audio.music.MusicManagerFactory_Package_References.MusicManagerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MusicManagerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicManagerFactory_Package_References."=";
   function Java_Box (Value : MusicManagerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.music.MusicManagerFactory_Package_References.Java_Box;
   function Java_Unbox_MusicManagerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return MusicManagerFactory_Access_Array_Access_Array_Access renames org.allbinary.media.audio.music.MusicManagerFactory_Package_References.Java_Unbox_MusicManagerFactory_Access_Array_Access_Array;

   type MusicManagerFactory is new Java_Object with null record;

   procedure Initialize (This : in out MusicManagerFactory'Class);
   function Create return MusicManagerFactory_Access;
   function createMusicManager (soundList_Param : access BasicArrayList_Package.BasicArrayList'Class) return MusicManager_Access;
   procedure createMusicManager (soundList_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.media.audio.music.MusicManagerFactory_Package;


