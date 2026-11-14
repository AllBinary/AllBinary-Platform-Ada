-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package; use org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References;
with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package;
with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;

package body org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package is

   subtype GeologicalResourceInfoHudPaintable_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   subtype GeologicalResourceInfoHudPaintable_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   subtype GeologicalResourceInfoHudPaintable_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array_Access;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   subtype GeologicalResourceInfoHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   subtype GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References."=";
   procedure Initialize_Fields (This : in out GeologicalResourceInfoHudPaintableSingleton'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GeologicalResourceInfoHudPaintableSingleton'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GeologicalResourceInfoHudPaintableSingleton_Access is
      This : constant GeologicalResourceInfoHudPaintableSingleton_Access := new GeologicalResourceInfoHudPaintableSingleton;
   begin
      GeologicalResourceInfoHudPaintableSingleton_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GeologicalResourceInfoHudPaintable_Access is
   begin
        return GeologicalResourceInfoHudPaintableSingleton_Package.instance;
   end getInstance;

begin
   null;
   instance := GeologicalResourceInfoHudPaintable_Package.Create;

end org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package;


