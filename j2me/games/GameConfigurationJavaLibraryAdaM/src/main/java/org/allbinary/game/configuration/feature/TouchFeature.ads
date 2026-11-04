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

limited with org.allbinary.game.configuration.feature.TouchFeature_Package;
package org.allbinary.game.configuration.feature.TouchFeature_Package_References is
   type TouchFeature_Access is access all org.allbinary.game.configuration.feature.TouchFeature_Package.TouchFeature'Class;
   type TouchFeature_Access_Array is array (Natural range <>) of TouchFeature_Access;
   type TouchFeature_Access_Array_Access is access all TouchFeature_Access_Array;
   type TouchFeature_Access_Array_Access_Array is array (Natural range <>) of TouchFeature_Access_Array_Access;
   type TouchFeature_Access_Array_Access_Array_Access is access all TouchFeature_Access_Array_Access_Array;
end org.allbinary.game.configuration.feature.TouchFeature_Package_References;

with org.allbinary.game.configuration.feature.TouchFeature_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;

package org.allbinary.game.configuration.feature.TouchFeature_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchFeature_Access is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access;
   function "=" (Left, Right : TouchFeature_Access) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";
   subtype TouchFeature_Access_Array is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array;
   function "=" (Left, Right : TouchFeature_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";
   subtype TouchFeature_Access_Array_Access is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array_Access;
   function "=" (Left, Right : TouchFeature_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";
   subtype TouchFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array_Access_Array;
   function "=" (Left, Right : TouchFeature_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";
   subtype TouchFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.TouchFeature_Package_References.TouchFeature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchFeature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.TouchFeature_Package_References."=";

   type TouchFeature is new Feature_Package.Feature with null record;

   procedure Initialize (This : in out TouchFeature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TouchFeature_Access;

end org.allbinary.game.configuration.feature.TouchFeature_Package;


