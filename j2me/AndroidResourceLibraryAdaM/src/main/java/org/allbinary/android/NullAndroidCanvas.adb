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


with android.graphics.Canvas_Package; use android.graphics.Canvas_Package;
with android.graphics.Canvas_Package_References;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;

package body org.allbinary.android.NullAndroidCanvas_Package is

   subtype Canvas_Access is android.graphics.Canvas_Package_References.Canvas_Access;
   function "=" (Left, Right : Canvas_Access) return Boolean renames android.graphics.Canvas_Package_References."=";
   subtype Canvas_Access_Array is android.graphics.Canvas_Package_References.Canvas_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array) return Boolean renames android.graphics.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access is android.graphics.Canvas_Package_References.Canvas_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access) return Boolean renames android.graphics.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array is android.graphics.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array) return Boolean renames android.graphics.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array_Access is android.graphics.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array_Access) return Boolean renames android.graphics.Canvas_Package_References."=";
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   function "=" (Left, Right : MediaPlayer_Access) return Boolean renames android.media.MediaPlayer_Package_References."=";
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   function "=" (Left, Right : MediaPlayer_Access_Array) return Boolean renames android.media.MediaPlayer_Package_References."=";
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   function "=" (Left, Right : MediaPlayer_Access_Array_Access) return Boolean renames android.media.MediaPlayer_Package_References."=";
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   function "=" (Left, Right : MediaPlayer_Access_Array_Access_Array) return Boolean renames android.media.MediaPlayer_Package_References."=";
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaPlayer_Access_Array_Access_Array_Access) return Boolean renames android.media.MediaPlayer_Package_References."=";
   procedure Initialize_Fields (This : in out NullAndroidCanvas'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullAndroidCanvas'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullAndroidCanvas_Access is
      This : constant NullAndroidCanvas_Access := new NullAndroidCanvas;
   begin
      NullAndroidCanvas_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NULL_CANVAS := Canvas_Package.Create;
   NULL_MEDIA_PLAYER := MediaPlayer_Package.Create;

end org.allbinary.android.NullAndroidCanvas_Package;


