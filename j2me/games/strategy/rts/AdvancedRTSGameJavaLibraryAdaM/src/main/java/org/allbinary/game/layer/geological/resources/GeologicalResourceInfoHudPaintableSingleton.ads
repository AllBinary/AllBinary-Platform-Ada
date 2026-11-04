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

limited with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package;
package org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References is
   type GeologicalResourceInfoHudPaintableSingleton_Access is access all org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package.GeologicalResourceInfoHudPaintableSingleton'Class;
   type GeologicalResourceInfoHudPaintableSingleton_Access_Array is array (Natural range <>) of GeologicalResourceInfoHudPaintableSingleton_Access;
   type GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access is access all GeologicalResourceInfoHudPaintableSingleton_Access_Array;
   type GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access_Array is array (Natural range <>) of GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access;
   type GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access_Array_Access is access all GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access_Array;
end org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References;

with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References;

package org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package is

   package Reference_Types is
   subtype GeologicalResourceInfoHudPaintable_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access;
   use type GeologicalResourceInfoHudPaintable_Access;
   subtype GeologicalResourceInfoHudPaintable_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array;
   use type GeologicalResourceInfoHudPaintable_Access_Array;
   subtype GeologicalResourceInfoHudPaintable_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array_Access;
   use type GeologicalResourceInfoHudPaintable_Access_Array_Access;
   subtype GeologicalResourceInfoHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array_Access_Array;
   use type GeologicalResourceInfoHudPaintable_Access_Array_Access_Array;
   subtype GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package_References.GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access;
   use type GeologicalResourceInfoHudPaintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeologicalResourceInfoHudPaintableSingleton_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References.GeologicalResourceInfoHudPaintableSingleton_Access;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintableSingleton_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References."=";
   subtype GeologicalResourceInfoHudPaintableSingleton_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References.GeologicalResourceInfoHudPaintableSingleton_Access_Array;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintableSingleton_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References."=";
   subtype GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References.GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References."=";
   subtype GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References.GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References."=";
   subtype GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References.GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package_References."=";

   type GeologicalResourceInfoHudPaintableSingleton is new Java_Object with null record;
   instance : GeologicalResourceInfoHudPaintable_Access;

   procedure Initialize (This : in out GeologicalResourceInfoHudPaintableSingleton'Class);
   function Create return GeologicalResourceInfoHudPaintableSingleton_Access;
   function getInstance return GeologicalResourceInfoHudPaintable_Access;

end org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package;


