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


package body org.allbinary.android.NullAndroidCanvas_Package is

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
      Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NULL_CANVAS := Canvas_Package.Create;
   NULL_MEDIA_PLAYER := MediaPlayer_Package.Create;

end org.allbinary.android.NullAndroidCanvas_Package;


