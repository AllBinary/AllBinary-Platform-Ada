-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
limited with org.allbinary.logic.communication.log.ExceptionFactory_Package;
package org.allbinary.logic.communication.log.ExceptionFactory_Package_References is
   type ExceptionFactory_Access is access all org.allbinary.logic.communication.log.ExceptionFactory_Package.ExceptionFactory'Class;
   type ExceptionFactory_Access_Array is array (Natural range <>) of ExceptionFactory_Access;
   type ExceptionFactory_Access_Array_Access is access all ExceptionFactory_Access_Array;
   type ExceptionFactory_Access_Array_Access_Array is array (Natural range <>) of ExceptionFactory_Access_Array_Access;
   type ExceptionFactory_Access_Array_Access_Array_Access is access all ExceptionFactory_Access_Array_Access_Array;
   type ExceptionFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExceptionFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ExceptionFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExceptionFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExceptionFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExceptionFactory_Access_Array_Access is (if Value /= null and then Value.all in ExceptionFactory_Access_Array_Object'Class then ExceptionFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ExceptionFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExceptionFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ExceptionFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExceptionFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExceptionFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExceptionFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ExceptionFactory_Access_Array_Access_Array_Object'Class then ExceptionFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.ExceptionFactory_Package_References;

with org.allbinary.logic.communication.log.ExceptionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.log.ExceptionFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ExceptionFactory_Access is org.allbinary.logic.communication.log.ExceptionFactory_Package_References.ExceptionFactory_Access;
   function "=" (Left, Right : ExceptionFactory_Access) return Boolean renames org.allbinary.logic.communication.log.ExceptionFactory_Package_References."=";
   subtype ExceptionFactory_Access_Array is org.allbinary.logic.communication.log.ExceptionFactory_Package_References.ExceptionFactory_Access_Array;
   function "=" (Left, Right : ExceptionFactory_Access_Array) return Boolean renames org.allbinary.logic.communication.log.ExceptionFactory_Package_References."=";
   subtype ExceptionFactory_Access_Array_Access is org.allbinary.logic.communication.log.ExceptionFactory_Package_References.ExceptionFactory_Access_Array_Access;
   function "=" (Left, Right : ExceptionFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.ExceptionFactory_Package_References."=";
   function Java_Box (Value : ExceptionFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.ExceptionFactory_Package_References.Java_Box;
   function Java_Unbox_ExceptionFactory_Access_Array (Value : access Java_Object'Class) return ExceptionFactory_Access_Array_Access renames org.allbinary.logic.communication.log.ExceptionFactory_Package_References.Java_Unbox_ExceptionFactory_Access_Array;
   subtype ExceptionFactory_Access_Array_Access_Array is org.allbinary.logic.communication.log.ExceptionFactory_Package_References.ExceptionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ExceptionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.ExceptionFactory_Package_References."=";
   subtype ExceptionFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.ExceptionFactory_Package_References.ExceptionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ExceptionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.ExceptionFactory_Package_References."=";
   function Java_Box (Value : ExceptionFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.ExceptionFactory_Package_References.Java_Box;
   function Java_Unbox_ExceptionFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ExceptionFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.ExceptionFactory_Package_References.Java_Unbox_ExceptionFactory_Access_Array_Access_Array;

   type ExceptionFactory is new Java_Object with null record;

   procedure Initialize (This : in out ExceptionFactory'Class);
   function Create return ExceptionFactory_Access;
   function createThrowable (message : Unbounded_String) return Java_Throwable;
   procedure createThrowable (message : Unbounded_String);

end org.allbinary.logic.communication.log.ExceptionFactory_Package;


