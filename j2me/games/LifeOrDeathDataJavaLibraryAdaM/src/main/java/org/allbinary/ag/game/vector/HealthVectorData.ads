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

limited with org.allbinary.ag.game.vector.HealthVectorData_Package;
package org.allbinary.ag.game.vector.HealthVectorData_Package_References is
   type HealthVectorData_Access is access all org.allbinary.ag.game.vector.HealthVectorData_Package.HealthVectorData'Class;
   type HealthVectorData_Access_Array is array (Natural range <>) of HealthVectorData_Access;
   type HealthVectorData_Access_Array_Access is access all HealthVectorData_Access_Array;
   type HealthVectorData_Access_Array_Access_Array is array (Natural range <>) of HealthVectorData_Access_Array_Access;
   type HealthVectorData_Access_Array_Access_Array_Access is access all HealthVectorData_Access_Array_Access_Array;
end org.allbinary.ag.game.vector.HealthVectorData_Package_References;

with org.allbinary.ag.game.vector.HealthVectorData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.ag.game.vector.HealthVectorData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HealthVectorData_Access is org.allbinary.ag.game.vector.HealthVectorData_Package_References.HealthVectorData_Access;
   function "=" (Left, Right : HealthVectorData_Access) return Boolean renames org.allbinary.ag.game.vector.HealthVectorData_Package_References."=";
   subtype HealthVectorData_Access_Array is org.allbinary.ag.game.vector.HealthVectorData_Package_References.HealthVectorData_Access_Array;
   function "=" (Left, Right : HealthVectorData_Access_Array) return Boolean renames org.allbinary.ag.game.vector.HealthVectorData_Package_References."=";
   subtype HealthVectorData_Access_Array_Access is org.allbinary.ag.game.vector.HealthVectorData_Package_References.HealthVectorData_Access_Array_Access;
   function "=" (Left, Right : HealthVectorData_Access_Array_Access) return Boolean renames org.allbinary.ag.game.vector.HealthVectorData_Package_References."=";
   subtype HealthVectorData_Access_Array_Access_Array is org.allbinary.ag.game.vector.HealthVectorData_Package_References.HealthVectorData_Access_Array_Access_Array;
   function "=" (Left, Right : HealthVectorData_Access_Array_Access_Array) return Boolean renames org.allbinary.ag.game.vector.HealthVectorData_Package_References."=";
   subtype HealthVectorData_Access_Array_Access_Array_Access is org.allbinary.ag.game.vector.HealthVectorData_Package_References.HealthVectorData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthVectorData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ag.game.vector.HealthVectorData_Package_References."=";

   type HealthVectorData is new Java_Object with null record;
   points : Integer_Array_Access_Array_Access_Array_Access;

   procedure Initialize (This : in out HealthVectorData'Class);
   function Create return HealthVectorData_Access;

end org.allbinary.ag.game.vector.HealthVectorData_Package;


