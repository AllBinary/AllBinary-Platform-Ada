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


package body org.allbinary.media.audio.CompositeSound_Package is

   procedure Initialize_Fields (This : in out CompositeSound'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CompositeSound'Class; resource : Unbounded_String) is
   begin
        Sound_Package.Initialize (This, resource);
   end Initialize;

   function Create (resource : Unbounded_String) return CompositeSound_Access is
      This : constant CompositeSound_Access := new CompositeSound;
   begin
      Initialize (This.all, resource);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out CompositeSound) is
   begin
        This.setPlayerP (PlayerComposite_Package.Create (AllBinaryMediaManager_Package.createPlayer (This.getResource), 570));
   end init;

end org.allbinary.media.audio.CompositeSound_Package;


