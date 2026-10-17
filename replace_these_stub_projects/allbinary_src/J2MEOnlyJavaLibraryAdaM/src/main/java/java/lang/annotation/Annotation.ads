--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package java.lang.annotation.Annotation_Package is


   type Annotation is interface;
   type Annotation_Access is access all Annotation'Class;
   type Annotation_Access_Array is array (Natural range <>) of Annotation_Access;
   type Annotation_Access_Array_Access is access all Annotation_Access_Array;
   function annotationType (This : in out Annotation) return Ada.Tags.Tag is abstract;

end java.lang.annotation.Annotation_Package;


