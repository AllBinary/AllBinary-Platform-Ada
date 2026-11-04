-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

limited with org.allbinary.input.motion.button.TouchButtonResource_Package;
package org.allbinary.input.motion.button.TouchButtonResource_Package_References is
   type TouchButtonResource_Access is access all org.allbinary.input.motion.button.TouchButtonResource_Package.TouchButtonResource'Class;
   type TouchButtonResource_Access_Array is array (Natural range <>) of TouchButtonResource_Access;
   type TouchButtonResource_Access_Array_Access is access all TouchButtonResource_Access_Array;
   type TouchButtonResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonResource_Access_Array_Access;
   type TouchButtonResource_Access_Array_Access_Array_Access is access all TouchButtonResource_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonResource_Package_References;

with org.allbinary.input.motion.button.TouchButtonResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.motion.button.TouchButtonResource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonResource_Access is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access;
   function "=" (Left, Right : TouchButtonResource_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";
   subtype TouchButtonResource_Access_Array is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array;
   function "=" (Left, Right : TouchButtonResource_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";
   subtype TouchButtonResource_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonResource_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";
   subtype TouchButtonResource_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonResource_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";
   subtype TouchButtonResource_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonResource_Package_References.TouchButtonResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonResource_Package_References."=";

   type TouchButtonResource is new Java_Object with record
      RESOURCE : Unbounded_String;
      HINT : Unbounded_String;
   end record;

   procedure Initialize (This : in out TouchButtonResource'Class; resource : Unbounded_String; hint : Unbounded_String);
   function Create (resource : Unbounded_String; hint : Unbounded_String) return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonResource_Package;


