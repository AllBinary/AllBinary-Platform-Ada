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

limited with org.allbinary.logic.java.bool.BooleanFactory_Package;
package org.allbinary.logic.java.bool.BooleanFactory_Package_References is
   type BooleanFactory_Access is access all org.allbinary.logic.java.bool.BooleanFactory_Package.BooleanFactory'Class;
   type BooleanFactory_Access_Array is array (Natural range <>) of BooleanFactory_Access;
   type BooleanFactory_Access_Array_Access is access all BooleanFactory_Access_Array;
   type BooleanFactory_Access_Array_Access_Array is array (Natural range <>) of BooleanFactory_Access_Array_Access;
   type BooleanFactory_Access_Array_Access_Array_Access is access all BooleanFactory_Access_Array_Access_Array;
end org.allbinary.logic.java.bool.BooleanFactory_Package_References;

with org.allbinary.logic.java.bool.BooleanFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.bool.BooleanFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BooleanFactory_Access is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access;
   function "=" (Left, Right : BooleanFactory_Access) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";
   subtype BooleanFactory_Access_Array is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access_Array;
   function "=" (Left, Right : BooleanFactory_Access_Array) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";
   subtype BooleanFactory_Access_Array_Access is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access_Array_Access;
   function "=" (Left, Right : BooleanFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";
   subtype BooleanFactory_Access_Array_Access_Array is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BooleanFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";
   subtype BooleanFactory_Access_Array_Access_Array_Access is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BooleanFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";

   type BooleanFactory is new Java_Object with record
      TRUE : Boolean;
      FALSE : Boolean;
      TRUE_STRING : Unbounded_String;
      FALSE_STRING : Unbounded_String;
      YES : Unbounded_String;
      NO : Unbounded_String;
   end record;
   instance : BooleanFactory_Access;

   procedure Initialize (This : in out BooleanFactory'Class);
   function Create return BooleanFactory_Access;
   function getInstance return BooleanFactory_Access;
   function toStringb (This : in out BooleanFactory; bool : Boolean) return Unbounded_String;
   procedure toStringb (This : in out BooleanFactory; bool : Boolean);

end org.allbinary.logic.java.bool.BooleanFactory_Package;


