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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.media.audio.music.MusicManager_Package; use org.allbinary.media.audio.music.MusicManager_Package;
with org.allbinary.media.audio.music.MusicManager_Package_References;
with org.allbinary.media.audio.music.MusicService_Package; use org.allbinary.media.audio.music.MusicService_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.media.audio.music.MusicService_Package;

package body org.allbinary.media.audio.music.MusicManagerFactory_Package is

   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype MusicManager_Access is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access;
   function "=" (Left, Right : MusicManager_Access) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   subtype MusicManager_Access_Array is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array;
   function "=" (Left, Right : MusicManager_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   subtype MusicManager_Access_Array_Access is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array_Access;
   function "=" (Left, Right : MusicManager_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   subtype MusicManager_Access_Array_Access_Array is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array_Access_Array;
   function "=" (Left, Right : MusicManager_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   subtype MusicManager_Access_Array_Access_Array_Access is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MusicManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   procedure Initialize_Fields (This : in out MusicManagerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MusicManagerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MusicManagerFactory_Access is
      This : constant MusicManagerFactory_Access := new MusicManagerFactory;
   begin
      MusicManagerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function createMusicManager (soundList_Param : access BasicArrayList_Package.BasicArrayList'Class) return MusicManager_Access is
      soundList : constant BasicArrayList_Access := BasicArrayList_Access (soundList_Param);
   begin
        return MusicManager_Package.Create (MusicService_Package.MusicService'Tag, soundList);
   end createMusicManager;

   procedure createMusicManager (soundList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant MusicManager_Access := createMusicManager (soundList_Param => soundList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createMusicManager;

end org.allbinary.media.audio.music.MusicManagerFactory_Package;


