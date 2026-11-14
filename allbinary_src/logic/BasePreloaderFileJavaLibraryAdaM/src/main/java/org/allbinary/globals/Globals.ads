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
limited with org.allbinary.globals.Globals_Package;
package org.allbinary.globals.Globals_Package_References is
   type Globals_Access is access all org.allbinary.globals.Globals_Package.Globals'Class;
   type Globals_Access_Array is array (Natural range <>) of Globals_Access;
   type Globals_Access_Array_Access is access all Globals_Access_Array;
   type Globals_Access_Array_Access_Array is array (Natural range <>) of Globals_Access_Array_Access;
   type Globals_Access_Array_Access_Array_Access is access all Globals_Access_Array_Access_Array;
   type Globals_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Globals_Access_Array_Access;
   end record;
   function Java_Box (Value : Globals_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Globals_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Globals_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Globals_Access_Array_Access is (if Value /= null and then Value.all in Globals_Access_Array_Object'Class then Globals_Access_Array_Object'Class (Value.all).Value else null);
   type Globals_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Globals_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Globals_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Globals_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Globals_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Globals_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Globals_Access_Array_Access_Array_Object'Class then Globals_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.globals.Globals_Package_References;

with org.allbinary.globals.Globals_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with java.lang.ClassLoader_Package; use java.lang.ClassLoader_Package;

package org.allbinary.globals.Globals_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ClassLoader_Package renames Standard.java.lang.ClassLoader_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Globals_Access is org.allbinary.globals.Globals_Package_References.Globals_Access;
   function "=" (Left, Right : Globals_Access) return Boolean renames org.allbinary.globals.Globals_Package_References."=";
   subtype Globals_Access_Array is org.allbinary.globals.Globals_Package_References.Globals_Access_Array;
   function "=" (Left, Right : Globals_Access_Array) return Boolean renames org.allbinary.globals.Globals_Package_References."=";
   subtype Globals_Access_Array_Access is org.allbinary.globals.Globals_Package_References.Globals_Access_Array_Access;
   function "=" (Left, Right : Globals_Access_Array_Access) return Boolean renames org.allbinary.globals.Globals_Package_References."=";
   function Java_Box (Value : Globals_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.Globals_Package_References.Java_Box;
   function Java_Unbox_Globals_Access_Array (Value : access Java_Object'Class) return Globals_Access_Array_Access renames org.allbinary.globals.Globals_Package_References.Java_Unbox_Globals_Access_Array;
   subtype Globals_Access_Array_Access_Array is org.allbinary.globals.Globals_Package_References.Globals_Access_Array_Access_Array;
   function "=" (Left, Right : Globals_Access_Array_Access_Array) return Boolean renames org.allbinary.globals.Globals_Package_References."=";
   subtype Globals_Access_Array_Access_Array_Access is org.allbinary.globals.Globals_Package_References.Globals_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Globals_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.globals.Globals_Package_References."=";
   function Java_Box (Value : Globals_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.Globals_Package_References.Java_Box;
   function Java_Unbox_Globals_Access_Array_Access_Array (Value : access Java_Object'Class) return Globals_Access_Array_Access_Array_Access renames org.allbinary.globals.Globals_Package_References.Java_Unbox_Globals_Access_Array_Access_Array;

   type Globals is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : Globals_Access;

   procedure Initialize (This : in out Globals'Class);
   function Create return Globals_Access;
   function getInstance return Globals_Access;
   procedure init (This : in out Globals; classLoader_Param : access ClassLoader_Package.ClassLoader'Class; pathString : Unbounded_String);

end org.allbinary.globals.Globals_Package;


