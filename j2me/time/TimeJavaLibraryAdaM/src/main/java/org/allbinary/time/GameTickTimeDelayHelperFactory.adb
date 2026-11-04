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


with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.time.GameTickTimeDelayHelper_Package;

package body org.allbinary.time.GameTickTimeDelayHelperFactory_Package is

   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   procedure Initialize_Fields (This : in out GameTickTimeDelayHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameTickTimeDelayHelper_Access is
   begin
        return GameTickTimeDelayHelper_Access (GameTickTimeDelayHelperFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GameTickTimeDelayHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameTickTimeDelayHelperFactory_Access is
      This : constant GameTickTimeDelayHelperFactory_Access := new GameTickTimeDelayHelperFactory;
   begin
      GameTickTimeDelayHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := GameTickTimeDelayHelper_Package.Create (-(1));

end org.allbinary.time.GameTickTimeDelayHelperFactory_Package;


