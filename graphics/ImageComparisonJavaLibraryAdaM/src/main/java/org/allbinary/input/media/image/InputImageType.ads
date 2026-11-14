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

with AllBinary_Java;
limited with org.allbinary.input.media.image.InputImageType_Package;
package org.allbinary.input.media.image.InputImageType_Package_References is
   type InputImageType_Access is access all org.allbinary.input.media.image.InputImageType_Package.InputImageType'Class;
   type InputImageType_Access_Array is array (Natural range <>) of InputImageType_Access;
   type InputImageType_Access_Array_Access is access all InputImageType_Access_Array;
   type InputImageType_Access_Array_Access_Array is array (Natural range <>) of InputImageType_Access_Array_Access;
   type InputImageType_Access_Array_Access_Array_Access is access all InputImageType_Access_Array_Access_Array;
   type InputImageType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputImageType_Access_Array_Access;
   end record;
   function Java_Box (Value : InputImageType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputImageType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputImageType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputImageType_Access_Array_Access is (if Value /= null and then Value.all in InputImageType_Access_Array_Object'Class then InputImageType_Access_Array_Object'Class (Value.all).Value else null);
   type InputImageType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputImageType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputImageType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputImageType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputImageType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputImageType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputImageType_Access_Array_Access_Array_Object'Class then InputImageType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.media.image.InputImageType_Package_References;

with org.allbinary.input.media.image.InputImageType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.input.media.image.InputImageType_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputImageType_Access is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access;
   function "=" (Left, Right : InputImageType_Access) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   subtype InputImageType_Access_Array is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array;
   function "=" (Left, Right : InputImageType_Access_Array) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   subtype InputImageType_Access_Array_Access is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array_Access;
   function "=" (Left, Right : InputImageType_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   function Java_Box (Value : InputImageType_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.InputImageType_Package_References.Java_Box;
   function Java_Unbox_InputImageType_Access_Array (Value : access Java_Object'Class) return InputImageType_Access_Array_Access renames org.allbinary.input.media.image.InputImageType_Package_References.Java_Unbox_InputImageType_Access_Array;
   subtype InputImageType_Access_Array_Access_Array is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array_Access_Array;
   function "=" (Left, Right : InputImageType_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   subtype InputImageType_Access_Array_Access_Array_Access is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputImageType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   function Java_Box (Value : InputImageType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.InputImageType_Package_References.Java_Box;
   function Java_Unbox_InputImageType_Access_Array_Access_Array (Value : access Java_Object'Class) return InputImageType_Access_Array_Access_Array_Access renames org.allbinary.input.media.image.InputImageType_Package_References.Java_Unbox_InputImageType_Access_Array_Access_Array;

   type InputImageType is new Java_Object with record
      name : Unbounded_String;
      index : Integer;
   end record;
   hashMap : HashMap_Access;
   TYPE_VECTOR : BasicArrayList_Access;
   CAPTURE : InputImageType_Access;
   COMPARISON : InputImageType_Access;
   MOTION : InputImageType_Access;

   procedure Initialize (This : in out InputImageType'Class; name : Unbounded_String; index : Integer);
   function Create (name : Unbounded_String; index : Integer) return InputImageType_Access;
   function toString (This : in out InputImageType) return Unbounded_String;
   function getName (This : in out InputImageType) return Unbounded_String;
   function getInstance (imageTypeString : Unbounded_String) return InputImageType_Access;
   procedure getInstance (imageTypeString : Unbounded_String);
   function getAllAsVector return BasicArrayList_Access;
   function getIndex (This : in out InputImageType) return Integer;

end org.allbinary.input.media.image.InputImageType_Package;


