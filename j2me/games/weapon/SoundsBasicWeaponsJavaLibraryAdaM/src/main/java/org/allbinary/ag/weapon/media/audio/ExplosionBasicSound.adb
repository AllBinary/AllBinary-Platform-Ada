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


with org.allbinary.media.audio.CompositeSound_Package; use org.allbinary.media.audio.CompositeSound_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;

package body org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package is

   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   function "=" (Left, Right : Sound_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   function "=" (Left, Right : Sound_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   function "=" (Left, Right : Sound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
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
        return Sound_Access (ExplosionBasicSound_Package.soundInterface);
   end getInstance;

begin
   null;
   soundInterface := Sound_Access (ExplosionBasicSound_Package.Create);

end org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;


