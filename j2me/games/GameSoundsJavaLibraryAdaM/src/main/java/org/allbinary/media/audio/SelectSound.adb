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


package body org.allbinary.media.audio.SelectSound_Package is

   procedure Initialize_Fields (This : in out SelectSound'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectSound'Class) is
   begin
        CompositeSound_Package.Initialize (This, To_Unbounded_String ("resource:/wav/select.wav"));
   end Initialize;

   function Create return SelectSound_Access is
      This : constant SelectSound_Access := new SelectSound;
   begin
      SelectSound_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return Sound_Access is
   begin
        return SelectSound_Package.soundInterface;
   end getInstance;

begin
   null;
   soundInterface := SelectSound_Package.Create;

end org.allbinary.media.audio.SelectSound_Package;


