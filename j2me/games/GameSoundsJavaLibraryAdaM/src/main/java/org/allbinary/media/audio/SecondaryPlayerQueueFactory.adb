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


with org.allbinary.media.audio.PlayerQueue_Package; use org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.media.audio.PlayerQueue_Package;

package body org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package is

   subtype PlayerQueue_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access;
   function "=" (Left, Right : PlayerQueue_Access) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";
   subtype PlayerQueue_Access_Array is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array;
   function "=" (Left, Right : PlayerQueue_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";
   subtype PlayerQueue_Access_Array_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access;
   function "=" (Left, Right : PlayerQueue_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";
   subtype PlayerQueue_Access_Array_Access_Array is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerQueue_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";
   subtype PlayerQueue_Access_Array_Access_Array_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerQueue_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerQueue_Package_References."=";
   procedure Initialize_Fields (This : in out SecondaryPlayerQueueFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SecondaryPlayerQueueFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SecondaryPlayerQueueFactory_Access is
      This : constant SecondaryPlayerQueueFactory_Access := new SecondaryPlayerQueueFactory;
   begin
      SecondaryPlayerQueueFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlayerQueue_Access is
   begin
        return PlayerQueue_Access (SecondaryPlayerQueueFactory_Package.SINGLETON);
   end getInstance;

begin
   null;
   SINGLETON := PlayerQueue_Package.Create (4);

end org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;


