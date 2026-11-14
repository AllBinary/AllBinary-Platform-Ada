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
limited with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
package org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References is
   type ExceptionUtil_Access is access all org.allbinary.logic.java.exception_Id.ExceptionUtil_Package.ExceptionUtil'Class;
   type ExceptionUtil_Access_Array is array (Natural range <>) of ExceptionUtil_Access;
   type ExceptionUtil_Access_Array_Access is access all ExceptionUtil_Access_Array;
   type ExceptionUtil_Access_Array_Access_Array is array (Natural range <>) of ExceptionUtil_Access_Array_Access;
   type ExceptionUtil_Access_Array_Access_Array_Access is access all ExceptionUtil_Access_Array_Access_Array;
   type ExceptionUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExceptionUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ExceptionUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExceptionUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExceptionUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExceptionUtil_Access_Array_Access is (if Value /= null and then Value.all in ExceptionUtil_Access_Array_Object'Class then ExceptionUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ExceptionUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExceptionUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ExceptionUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExceptionUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExceptionUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExceptionUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ExceptionUtil_Access_Array_Access_Array_Object'Class then ExceptionUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References;

with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.exception_Id.ExceptionUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ExceptionUtil_Access is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access;
   function "=" (Left, Right : ExceptionUtil_Access) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   subtype ExceptionUtil_Access_Array is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array;
   function "=" (Left, Right : ExceptionUtil_Access_Array) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   subtype ExceptionUtil_Access_Array_Access is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array_Access;
   function "=" (Left, Right : ExceptionUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   function Java_Box (Value : ExceptionUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.Java_Box;
   function Java_Unbox_ExceptionUtil_Access_Array (Value : access Java_Object'Class) return ExceptionUtil_Access_Array_Access renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.Java_Unbox_ExceptionUtil_Access_Array;
   subtype ExceptionUtil_Access_Array_Access_Array is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ExceptionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   subtype ExceptionUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ExceptionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References."=";
   function Java_Box (Value : ExceptionUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.Java_Box;
   function Java_Unbox_ExceptionUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ExceptionUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.Java_Unbox_ExceptionUtil_Access_Array_Access_Array;

   type ExceptionUtil is new Java_Object with record
      PRETEND_EXCEPTION : Java_Throwable;
      NONE : Unbounded_String;
   end record;
   instance : ExceptionUtil_Access;

   procedure Initialize (This : in out ExceptionUtil'Class);
   function Create return ExceptionUtil_Access;
   function getInstance return ExceptionUtil_Access;
   function getStackTrace (This : in out ExceptionUtil; e_Param : access Java_Throwable_Object'Class) return Unbounded_String;
   procedure getStackTrace (This : in out ExceptionUtil; e_Param : access Java_Throwable_Object'Class);

end org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;


