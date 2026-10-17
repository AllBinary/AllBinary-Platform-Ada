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


package body org.allbinary.media.audio.GameYouLoseSound_Package is

   procedure Initialize_Fields (This : in out GameYouLoseSound'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameYouLoseSound'Class) is
   begin
        CompositeSound_Package.Initialize (This, To_Unbounded_String ("resource:/wav/youlose.wav"));
   end Initialize;

   function Create return GameYouLoseSound_Access is
      This : constant GameYouLoseSound_Access := new GameYouLoseSound;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return Sound_Access is
   begin
        return GameYouLoseSound_Package.soundInterface;
   end getInstance;

   procedure getInstance is
      Java_Result : constant Sound_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   soundInterface := GameYouLoseSound_Package.Create;

end org.allbinary.media.audio.GameYouLoseSound_Package;


