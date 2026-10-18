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



package body org.allbinary.media.audio.NullAudioFormat_Package is

   procedure Initialize_Fields (This : in out NullAudioFormat'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullAudioFormat'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullAudioFormat_Access is
      This : constant NullAudioFormat_Access := new NullAudioFormat;
   begin
      NullAudioFormat_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NULL_AUDIO_FORMAT := AudioFormat_Package.Create (AudioFormat_Package.Encoding.PCM_UNSIGNED, 0.0, 0, 0, 0, 0.0, False);

end org.allbinary.media.audio.NullAudioFormat_Package;


