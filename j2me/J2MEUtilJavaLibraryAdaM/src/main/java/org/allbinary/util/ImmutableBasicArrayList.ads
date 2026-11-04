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

limited with org.allbinary.util.ImmutableBasicArrayList_Package;
package org.allbinary.util.ImmutableBasicArrayList_Package_References is
   type ImmutableBasicArrayList_Access is access all org.allbinary.util.ImmutableBasicArrayList_Package.ImmutableBasicArrayList'Class;
   type ImmutableBasicArrayList_Access_Array is array (Natural range <>) of ImmutableBasicArrayList_Access;
   type ImmutableBasicArrayList_Access_Array_Access is access all ImmutableBasicArrayList_Access_Array;
   type ImmutableBasicArrayList_Access_Array_Access_Array is array (Natural range <>) of ImmutableBasicArrayList_Access_Array_Access;
   type ImmutableBasicArrayList_Access_Array_Access_Array_Access is access all ImmutableBasicArrayList_Access_Array_Access_Array;
end org.allbinary.util.ImmutableBasicArrayList_Package_References;

with org.allbinary.util.ImmutableBasicArrayList_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.util.ImmutableBasicArrayList_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ImmutableBasicArrayList_Access is org.allbinary.util.ImmutableBasicArrayList_Package_References.ImmutableBasicArrayList_Access;
   function "=" (Left, Right : ImmutableBasicArrayList_Access) return Boolean renames org.allbinary.util.ImmutableBasicArrayList_Package_References."=";
   subtype ImmutableBasicArrayList_Access_Array is org.allbinary.util.ImmutableBasicArrayList_Package_References.ImmutableBasicArrayList_Access_Array;
   function "=" (Left, Right : ImmutableBasicArrayList_Access_Array) return Boolean renames org.allbinary.util.ImmutableBasicArrayList_Package_References."=";
   subtype ImmutableBasicArrayList_Access_Array_Access is org.allbinary.util.ImmutableBasicArrayList_Package_References.ImmutableBasicArrayList_Access_Array_Access;
   function "=" (Left, Right : ImmutableBasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.ImmutableBasicArrayList_Package_References."=";
   subtype ImmutableBasicArrayList_Access_Array_Access_Array is org.allbinary.util.ImmutableBasicArrayList_Package_References.ImmutableBasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : ImmutableBasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ImmutableBasicArrayList_Package_References."=";
   subtype ImmutableBasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.ImmutableBasicArrayList_Package_References.ImmutableBasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImmutableBasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ImmutableBasicArrayList_Package_References."=";

   type ImmutableBasicArrayList is new BasicArrayListS with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out ImmutableBasicArrayList'Class; name : Unbounded_String; size : Integer);
   function Create (name : Unbounded_String; size : Integer) return ImmutableBasicArrayList_Access;
   function add (This : in out ImmutableBasicArrayList; e_Param : access Java_Object'Class) return Boolean;
   procedure add (This : in out ImmutableBasicArrayList; e_Param : access Java_Object'Class);
   procedure addAt (This : in out ImmutableBasicArrayList; index : Integer; element_Param : access Java_Object'Class);
   function toString (This : in out ImmutableBasicArrayList) return Unbounded_String;
   function add (This : in out ImmutableBasicArrayList; Value : Unbounded_String) return Boolean;
   procedure add (This : in out ImmutableBasicArrayList; Value : Unbounded_String);

end org.allbinary.util.ImmutableBasicArrayList_Package;


