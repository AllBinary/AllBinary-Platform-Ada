--  Generated Code Do Not Modify

limited with org.allbinary.graphics.form.ScreenInfo_Package;
package org.allbinary.graphics.form.ScreenInfo_Package_References is
   type ScreenInfo_Access is access all org.allbinary.graphics.form.ScreenInfo_Package.ScreenInfo'Class;
   type ScreenInfo_Access_Array is array (Natural range <>) of ScreenInfo_Access;
   type ScreenInfo_Access_Array_Access is access all ScreenInfo_Access_Array;
   type ScreenInfo_Access_Array_Access_Array is array (Natural range <>) of ScreenInfo_Access_Array_Access;
   type ScreenInfo_Access_Array_Access_Array_Access is access all ScreenInfo_Access_Array_Access_Array;
end org.allbinary.graphics.form.ScreenInfo_Package_References;

with org.allbinary.graphics.form.ScreenInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.ScreenInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ScreenInfo_Access is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access;
   function "=" (Left, Right : ScreenInfo_Access) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";
   subtype ScreenInfo_Access_Array is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access_Array;
   function "=" (Left, Right : ScreenInfo_Access_Array) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";
   subtype ScreenInfo_Access_Array_Access is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access_Array_Access;
   function "=" (Left, Right : ScreenInfo_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";
   subtype ScreenInfo_Access_Array_Access_Array is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";
   subtype ScreenInfo_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScreenInfo_Package_References.ScreenInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScreenInfo_Package_References."=";

   type ScreenInfo is new Java_Object with record
      SMALL_WIDTH : Integer;
      SMALL_HEIGHT : Integer;
      MEDIUM_WIDTH : Integer;
      MEDIUM_HEIGHT : Integer;
   end record;
   instance : ScreenInfo_Access;

   procedure Initialize (This : in out ScreenInfo'Class);
   function Create return ScreenInfo_Access;
   function getInstance return ScreenInfo_Access;

end org.allbinary.graphics.form.ScreenInfo_Package;


