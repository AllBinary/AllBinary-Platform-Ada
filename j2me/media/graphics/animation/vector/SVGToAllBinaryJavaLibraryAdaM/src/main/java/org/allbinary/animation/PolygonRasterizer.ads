--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.animation.PolygonRasterizer_Package;
package org.allbinary.animation.PolygonRasterizer_Package_References is
   type PolygonRasterizer_Access is access all org.allbinary.animation.PolygonRasterizer_Package.PolygonRasterizer'Class;
   type PolygonRasterizer_Access_Array is array (Natural range <>) of PolygonRasterizer_Access;
   type PolygonRasterizer_Access_Array_Access is access all PolygonRasterizer_Access_Array;
   type PolygonRasterizer_Access_Array_Access_Array is array (Natural range <>) of PolygonRasterizer_Access_Array_Access;
   type PolygonRasterizer_Access_Array_Access_Array_Access is access all PolygonRasterizer_Access_Array_Access_Array;
   type PolygonRasterizer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PolygonRasterizer_Access_Array_Access;
   end record;
   function Java_Box (Value : PolygonRasterizer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PolygonRasterizer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PolygonRasterizer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PolygonRasterizer_Access_Array_Access is (if Value /= null and then Value.all in PolygonRasterizer_Access_Array_Object'Class then PolygonRasterizer_Access_Array_Object'Class (Value.all).Value else null);
   type PolygonRasterizer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PolygonRasterizer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PolygonRasterizer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PolygonRasterizer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PolygonRasterizer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PolygonRasterizer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PolygonRasterizer_Access_Array_Access_Array_Object'Class then PolygonRasterizer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.PolygonRasterizer_Package_References;

with org.allbinary.animation.PolygonRasterizer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.PolygonRasterizer_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PolygonRasterizer_Access is org.allbinary.animation.PolygonRasterizer_Package_References.PolygonRasterizer_Access;
   function "=" (Left, Right : PolygonRasterizer_Access) return Boolean renames org.allbinary.animation.PolygonRasterizer_Package_References."=";
   subtype PolygonRasterizer_Access_Array is org.allbinary.animation.PolygonRasterizer_Package_References.PolygonRasterizer_Access_Array;
   function "=" (Left, Right : PolygonRasterizer_Access_Array) return Boolean renames org.allbinary.animation.PolygonRasterizer_Package_References."=";
   subtype PolygonRasterizer_Access_Array_Access is org.allbinary.animation.PolygonRasterizer_Package_References.PolygonRasterizer_Access_Array_Access;
   function "=" (Left, Right : PolygonRasterizer_Access_Array_Access) return Boolean renames org.allbinary.animation.PolygonRasterizer_Package_References."=";
   function Java_Box (Value : PolygonRasterizer_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.PolygonRasterizer_Package_References.Java_Box;
   function Java_Unbox_PolygonRasterizer_Access_Array (Value : access Java_Object'Class) return PolygonRasterizer_Access_Array_Access renames org.allbinary.animation.PolygonRasterizer_Package_References.Java_Unbox_PolygonRasterizer_Access_Array;
   subtype PolygonRasterizer_Access_Array_Access_Array is org.allbinary.animation.PolygonRasterizer_Package_References.PolygonRasterizer_Access_Array_Access_Array;
   function "=" (Left, Right : PolygonRasterizer_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.PolygonRasterizer_Package_References."=";
   subtype PolygonRasterizer_Access_Array_Access_Array_Access is org.allbinary.animation.PolygonRasterizer_Package_References.PolygonRasterizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PolygonRasterizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.PolygonRasterizer_Package_References."=";
   function Java_Box (Value : PolygonRasterizer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.PolygonRasterizer_Package_References.Java_Box;
   function Java_Unbox_PolygonRasterizer_Access_Array_Access_Array (Value : access Java_Object'Class) return PolygonRasterizer_Access_Array_Access_Array_Access renames org.allbinary.animation.PolygonRasterizer_Package_References.Java_Unbox_PolygonRasterizer_Access_Array_Access_Array;

   type PolygonRasterizer is new Java_Object with null record;
   instance : PolygonRasterizer_Access;

   procedure Initialize (This : in out PolygonRasterizer'Class);
   function Create return PolygonRasterizer_Access;
   function getInstance return PolygonRasterizer_Access;
   function getPixelBuffer (This : in out PolygonRasterizer; svgPath : Unbounded_String; pathX : Integer_Array_Access; pathY : Integer_Array_Access; pixelBuffer : Integer_Array_Access; width : Integer; height : Integer) return Integer_Array_Access;
   procedure getPixelBuffer (This : in out PolygonRasterizer; svgPath : Unbounded_String; pathX : Integer_Array_Access; pathY : Integer_Array_Access; pixelBuffer : Integer_Array_Access; width : Integer; height : Integer);
   procedure fillPolygon (This : in out PolygonRasterizer; polyX : Integer_Array_Access; polyY : Integer_Array_Access; numPoints : Integer; buffer : Integer_Array_Access; width : Integer; height : Integer; colorRGB : Integer);
   procedure main (This : in out PolygonRasterizer; args : Unbounded_String_Array_Access);

end org.allbinary.animation.PolygonRasterizer_Package;


