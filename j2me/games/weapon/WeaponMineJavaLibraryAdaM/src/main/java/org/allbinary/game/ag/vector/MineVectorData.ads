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

limited with org.allbinary.game.ag.vector.MineVectorData_Package;
package org.allbinary.game.ag.vector.MineVectorData_Package_References is
   type MineVectorData_Access is access all org.allbinary.game.ag.vector.MineVectorData_Package.MineVectorData'Class;
   type MineVectorData_Access_Array is array (Natural range <>) of MineVectorData_Access;
   type MineVectorData_Access_Array_Access is access all MineVectorData_Access_Array;
   type MineVectorData_Access_Array_Access_Array is array (Natural range <>) of MineVectorData_Access_Array_Access;
   type MineVectorData_Access_Array_Access_Array_Access is access all MineVectorData_Access_Array_Access_Array;
end org.allbinary.game.ag.vector.MineVectorData_Package_References;

with org.allbinary.game.ag.vector.MineVectorData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.ag.vector.MineVectorData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MineVectorData_Access is org.allbinary.game.ag.vector.MineVectorData_Package_References.MineVectorData_Access;
   function "=" (Left, Right : MineVectorData_Access) return Boolean renames org.allbinary.game.ag.vector.MineVectorData_Package_References."=";
   subtype MineVectorData_Access_Array is org.allbinary.game.ag.vector.MineVectorData_Package_References.MineVectorData_Access_Array;
   function "=" (Left, Right : MineVectorData_Access_Array) return Boolean renames org.allbinary.game.ag.vector.MineVectorData_Package_References."=";
   subtype MineVectorData_Access_Array_Access is org.allbinary.game.ag.vector.MineVectorData_Package_References.MineVectorData_Access_Array_Access;
   function "=" (Left, Right : MineVectorData_Access_Array_Access) return Boolean renames org.allbinary.game.ag.vector.MineVectorData_Package_References."=";
   subtype MineVectorData_Access_Array_Access_Array is org.allbinary.game.ag.vector.MineVectorData_Package_References.MineVectorData_Access_Array_Access_Array;
   function "=" (Left, Right : MineVectorData_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.vector.MineVectorData_Package_References."=";
   subtype MineVectorData_Access_Array_Access_Array_Access is org.allbinary.game.ag.vector.MineVectorData_Package_References.MineVectorData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MineVectorData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.vector.MineVectorData_Package_References."=";

   type MineVectorData is new Java_Object with null record;
   points : Integer_Array_Access_Array_Access_Array_Access;

   procedure Initialize (This : in out MineVectorData'Class);
   function Create return MineVectorData_Access;

end org.allbinary.game.ag.vector.MineVectorData_Package;


