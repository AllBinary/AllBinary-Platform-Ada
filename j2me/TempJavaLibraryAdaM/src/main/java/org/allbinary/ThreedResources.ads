-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.ThreedResources_Package;
package org.allbinary.ThreedResources_Package_References is
   type ThreedResources_Access is access all org.allbinary.ThreedResources_Package.ThreedResources'Class;
   type ThreedResources_Access_Array is array (Natural range <>) of ThreedResources_Access;
   type ThreedResources_Access_Array_Access is access all ThreedResources_Access_Array;
   type ThreedResources_Access_Array_Access_Array is array (Natural range <>) of ThreedResources_Access_Array_Access;
   type ThreedResources_Access_Array_Access_Array_Access is access all ThreedResources_Access_Array_Access_Array;
end org.allbinary.ThreedResources_Package_References;

with org.allbinary.ThreedResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.ThreedResources_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ThreedResources_Access is org.allbinary.ThreedResources_Package_References.ThreedResources_Access;
   function "=" (Left, Right : ThreedResources_Access) return Boolean renames org.allbinary.ThreedResources_Package_References."=";
   subtype ThreedResources_Access_Array is org.allbinary.ThreedResources_Package_References.ThreedResources_Access_Array;
   function "=" (Left, Right : ThreedResources_Access_Array) return Boolean renames org.allbinary.ThreedResources_Package_References."=";
   subtype ThreedResources_Access_Array_Access is org.allbinary.ThreedResources_Package_References.ThreedResources_Access_Array_Access;
   function "=" (Left, Right : ThreedResources_Access_Array_Access) return Boolean renames org.allbinary.ThreedResources_Package_References."=";
   subtype ThreedResources_Access_Array_Access_Array is org.allbinary.ThreedResources_Package_References.ThreedResources_Access_Array_Access_Array;
   function "=" (Left, Right : ThreedResources_Access_Array_Access_Array) return Boolean renames org.allbinary.ThreedResources_Package_References."=";
   subtype ThreedResources_Access_Array_Access_Array_Access is org.allbinary.ThreedResources_Package_References.ThreedResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreedResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ThreedResources_Package_References."=";

   type ThreedResources is new Java_Object with null record;
   threedResources_Var : ThreedResources_Access;

   procedure Initialize (This : in out ThreedResources'Class);
   function Create return ThreedResources_Access;
   function getThreedResources return ThreedResources_Access;
   procedure add (This : in out ThreedResources);

end org.allbinary.ThreedResources_Package;


