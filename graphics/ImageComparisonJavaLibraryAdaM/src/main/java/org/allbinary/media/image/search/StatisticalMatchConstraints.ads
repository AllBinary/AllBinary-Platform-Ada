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

limited with org.allbinary.media.image.search.StatisticalMatchConstraints_Package;
package org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References is
   type StatisticalMatchConstraints_Access is access all org.allbinary.media.image.search.StatisticalMatchConstraints_Package.StatisticalMatchConstraints'Class;
   type StatisticalMatchConstraints_Access_Array is array (Natural range <>) of StatisticalMatchConstraints_Access;
   type StatisticalMatchConstraints_Access_Array_Access is access all StatisticalMatchConstraints_Access_Array;
   type StatisticalMatchConstraints_Access_Array_Access_Array is array (Natural range <>) of StatisticalMatchConstraints_Access_Array_Access;
   type StatisticalMatchConstraints_Access_Array_Access_Array_Access is access all StatisticalMatchConstraints_Access_Array_Access_Array;
end org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References;

with org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.image.search.StatisticalMatchConstraints_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StatisticalMatchConstraints_Access is org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References.StatisticalMatchConstraints_Access;
   function "=" (Left, Right : StatisticalMatchConstraints_Access) return Boolean renames org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References."=";
   subtype StatisticalMatchConstraints_Access_Array is org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References.StatisticalMatchConstraints_Access_Array;
   function "=" (Left, Right : StatisticalMatchConstraints_Access_Array) return Boolean renames org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References."=";
   subtype StatisticalMatchConstraints_Access_Array_Access is org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References.StatisticalMatchConstraints_Access_Array_Access;
   function "=" (Left, Right : StatisticalMatchConstraints_Access_Array_Access) return Boolean renames org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References."=";
   subtype StatisticalMatchConstraints_Access_Array_Access_Array is org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References.StatisticalMatchConstraints_Access_Array_Access_Array;
   function "=" (Left, Right : StatisticalMatchConstraints_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References."=";
   subtype StatisticalMatchConstraints_Access_Array_Access_Array_Access is org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References.StatisticalMatchConstraints_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StatisticalMatchConstraints_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.search.StatisticalMatchConstraints_Package_References."=";

   type StatisticalMatchConstraints is new Java_Object with null record;

   procedure Initialize (This : in out StatisticalMatchConstraints'Class);
   function Create return StatisticalMatchConstraints_Access;

end org.allbinary.media.image.search.StatisticalMatchConstraints_Package;


