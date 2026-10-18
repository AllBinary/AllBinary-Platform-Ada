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



package body org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package is

   procedure Initialize_Fields (This : in out ExplosionBasicSound'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ExplosionBasicSound'Class) is
   begin
        CompositeSound_Package.Initialize (This, To_Unbounded_String ("resource:/wav/explosion.wav"));
   end Initialize;

   function Create return ExplosionBasicSound_Access is
      This : constant ExplosionBasicSound_Access := new ExplosionBasicSound;
   begin
      ExplosionBasicSound_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return Sound_Access is
   begin
        return ExplosionBasicSound_Package.soundInterface;
   end getInstance;

begin
   null;
   soundInterface := Sound_Access (ExplosionBasicSound_Package.Create);

end org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;


