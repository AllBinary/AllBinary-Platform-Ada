--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.PathParser_Package; use org.allbinary.animation.PathParser_Package;
with org.allbinary.animation.FixedPoint_Package; use org.allbinary.animation.FixedPoint_Package;

package org.allbinary.animation.PolygonRasterizer_Package is


   type PolygonRasterizer is tagged;
   type PolygonRasterizer_Access is access all PolygonRasterizer'Class;
   type PolygonRasterizer_Access_Array is array (Natural range <>) of PolygonRasterizer_Access;
   type PolygonRasterizer_Access_Array_Access is access all PolygonRasterizer_Access_Array;

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


