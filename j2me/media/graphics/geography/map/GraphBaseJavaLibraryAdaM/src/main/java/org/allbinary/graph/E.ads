--  Generated Code Do Not Modify

limited with org.allbinary.graph.E_Package;
package org.allbinary.graph.E_Package_References is
   type E_Access is access all org.allbinary.graph.E_Package.E'Class;
   type E_Access_Array is array (Natural range <>) of E_Access;
   type E_Access_Array_Access is access all E_Access_Array;
   type E_Access_Array_Access_Array is array (Natural range <>) of E_Access_Array_Access;
   type E_Access_Array_Access_Array_Access is access all E_Access_Array_Access_Array;
end org.allbinary.graph.E_Package_References;

with org.allbinary.graph.E_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graph.E_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype E_Access is org.allbinary.graph.E_Package_References.E_Access;
   function "=" (Left, Right : E_Access) return Boolean renames org.allbinary.graph.E_Package_References."=";
   subtype E_Access_Array is org.allbinary.graph.E_Package_References.E_Access_Array;
   function "=" (Left, Right : E_Access_Array) return Boolean renames org.allbinary.graph.E_Package_References."=";
   subtype E_Access_Array_Access is org.allbinary.graph.E_Package_References.E_Access_Array_Access;
   function "=" (Left, Right : E_Access_Array_Access) return Boolean renames org.allbinary.graph.E_Package_References."=";
   subtype E_Access_Array_Access_Array is org.allbinary.graph.E_Package_References.E_Access_Array_Access_Array;
   function "=" (Left, Right : E_Access_Array_Access_Array) return Boolean renames org.allbinary.graph.E_Package_References."=";
   subtype E_Access_Array_Access_Array_Access is org.allbinary.graph.E_Package_References.E_Access_Array_Access_Array_Access;
   function "=" (Left, Right : E_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graph.E_Package_References."=";

   type E is new Java_Object with null record;
   e_Var : E_Access;

   procedure Initialize (This : in out E'Class);
   function Create return E_Access;
   function newInstance (This : in out E) return E_Access;

end org.allbinary.graph.E_Package;


