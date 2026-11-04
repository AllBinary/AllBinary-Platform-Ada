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

limited with org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package;
package org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References is
   type ClassLoaderUtil_Access is access all org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package.ClassLoaderUtil'Class;
   type ClassLoaderUtil_Access_Array is array (Natural range <>) of ClassLoaderUtil_Access;
   type ClassLoaderUtil_Access_Array_Access is access all ClassLoaderUtil_Access_Array;
   type ClassLoaderUtil_Access_Array_Access_Array is array (Natural range <>) of ClassLoaderUtil_Access_Array_Access;
   type ClassLoaderUtil_Access_Array_Access_Array_Access is access all ClassLoaderUtil_Access_Array_Access_Array;
end org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References;

with org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ClassLoaderUtil_Access is org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References.ClassLoaderUtil_Access;
   function "=" (Left, Right : ClassLoaderUtil_Access) return Boolean renames org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References."=";
   subtype ClassLoaderUtil_Access_Array is org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References.ClassLoaderUtil_Access_Array;
   function "=" (Left, Right : ClassLoaderUtil_Access_Array) return Boolean renames org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References."=";
   subtype ClassLoaderUtil_Access_Array_Access is org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References.ClassLoaderUtil_Access_Array_Access;
   function "=" (Left, Right : ClassLoaderUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References."=";
   subtype ClassLoaderUtil_Access_Array_Access_Array is org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References.ClassLoaderUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ClassLoaderUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References."=";
   subtype ClassLoaderUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References.ClassLoaderUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ClassLoaderUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package_References."=";

   type ClassLoaderUtil is new Java_Object with null record;

   procedure Initialize (This : in out ClassLoaderUtil'Class);
   function Create return ClassLoaderUtil_Access;
   function getName (anyType_Param : access Java_Object'Class) return Unbounded_String;
   procedure getName (anyType_Param : access Java_Object'Class);
   function getName (Value : Unbounded_String) return Unbounded_String;
   procedure getName (Value : Unbounded_String);

end org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package;


