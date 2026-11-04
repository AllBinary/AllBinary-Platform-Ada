--  Generated Code Do Not Modify

limited with org.allbinary.AndroidResources_Package;
package org.allbinary.AndroidResources_Package_References is
   type AndroidResources_Access is access all org.allbinary.AndroidResources_Package.AndroidResources'Class;
   type AndroidResources_Access_Array is array (Natural range <>) of AndroidResources_Access;
   type AndroidResources_Access_Array_Access is access all AndroidResources_Access_Array;
   type AndroidResources_Access_Array_Access_Array is array (Natural range <>) of AndroidResources_Access_Array_Access;
   type AndroidResources_Access_Array_Access_Array_Access is access all AndroidResources_Access_Array_Access_Array;
end org.allbinary.AndroidResources_Package_References;

with org.allbinary.AndroidResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.testgamedemo.R_Package;
with org.allbinary.game.testgamedemo.R_Package_References;

package org.allbinary.AndroidResources_Package is

   package R_Package renames Standard.org.allbinary.game.testgamedemo.R_Package;
   package Reference_Types is
   subtype R_Access is org.allbinary.game.testgamedemo.R_Package_References.R_Access;
   use type R_Access;
   subtype R_Access_Array is org.allbinary.game.testgamedemo.R_Package_References.R_Access_Array;
   use type R_Access_Array;
   subtype R_Access_Array_Access is org.allbinary.game.testgamedemo.R_Package_References.R_Access_Array_Access;
   use type R_Access_Array_Access;
   subtype R_Access_Array_Access_Array is org.allbinary.game.testgamedemo.R_Package_References.R_Access_Array_Access_Array;
   use type R_Access_Array_Access_Array;
   subtype R_Access_Array_Access_Array_Access is org.allbinary.game.testgamedemo.R_Package_References.R_Access_Array_Access_Array_Access;
   use type R_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidResources_Access is org.allbinary.AndroidResources_Package_References.AndroidResources_Access;
   function "=" (Left, Right : AndroidResources_Access) return Boolean renames org.allbinary.AndroidResources_Package_References."=";
   subtype AndroidResources_Access_Array is org.allbinary.AndroidResources_Package_References.AndroidResources_Access_Array;
   function "=" (Left, Right : AndroidResources_Access_Array) return Boolean renames org.allbinary.AndroidResources_Package_References."=";
   subtype AndroidResources_Access_Array_Access is org.allbinary.AndroidResources_Package_References.AndroidResources_Access_Array_Access;
   function "=" (Left, Right : AndroidResources_Access_Array_Access) return Boolean renames org.allbinary.AndroidResources_Package_References."=";
   subtype AndroidResources_Access_Array_Access_Array is org.allbinary.AndroidResources_Package_References.AndroidResources_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidResources_Access_Array_Access_Array) return Boolean renames org.allbinary.AndroidResources_Package_References."=";
   subtype AndroidResources_Access_Array_Access_Array_Access is org.allbinary.AndroidResources_Package_References.AndroidResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.AndroidResources_Package_References."=";

   type AndroidResources is new Java_Object with record
      drawable : drawable_Access;
      id : id_Access;
      layout : layout_Access;
      raw : raw_Access;
      string_Id : string_Access;
   end record;
   instance : AndroidResources_Access;

   procedure Initialize (This : in out AndroidResources'Class);
   function Create return AndroidResources_Access;
   function getInstance return AndroidResources_Access;

end org.allbinary.AndroidResources_Package;


