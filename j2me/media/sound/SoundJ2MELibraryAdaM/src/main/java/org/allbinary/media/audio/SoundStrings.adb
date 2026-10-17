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


package body org.allbinary.media.audio.SoundStrings_Package is

   procedure Initialize_Fields (This : in out SoundStrings'Class) is
   begin
      null;
      This.STOP_ALL := To_Unbounded_String ("stopAll");
      This.CLOSE_ALL := To_Unbounded_String ("closeAll");
      This.SOUND := To_Unbounded_String (" Sound: ");
      This.INIT_SOUND := To_Unbounded_String ("Initializing Sound: ");
      This.STOPPING_SOUND := To_Unbounded_String ("Stopping Sound: ");
      This.CLOSING_SOUND := To_Unbounded_String ("Closing Sound: ");
   end Initialize_Fields;

   procedure Initialize (This : in out SoundStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SoundStrings_Access is
      This : constant SoundStrings_Access := new SoundStrings;
   begin
      SoundStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SoundStrings_Access is
   begin
        return SoundStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := SoundStrings_Package.Create;

end org.allbinary.media.audio.SoundStrings_Package;


