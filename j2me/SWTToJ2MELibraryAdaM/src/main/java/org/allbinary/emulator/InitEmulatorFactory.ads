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
limited with org.allbinary.emulator.InitEmulatorFactory_Package;
package org.allbinary.emulator.InitEmulatorFactory_Package_References is
   type InitEmulatorFactory_Access is access all org.allbinary.emulator.InitEmulatorFactory_Package.InitEmulatorFactory'Class;
   type InitEmulatorFactory_Access_Array is array (Natural range <>) of InitEmulatorFactory_Access;
   type InitEmulatorFactory_Access_Array_Access is access all InitEmulatorFactory_Access_Array;
   type InitEmulatorFactory_Access_Array_Access_Array is array (Natural range <>) of InitEmulatorFactory_Access_Array_Access;
   type InitEmulatorFactory_Access_Array_Access_Array_Access is access all InitEmulatorFactory_Access_Array_Access_Array;
   type InitEmulatorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitEmulatorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InitEmulatorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitEmulatorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitEmulatorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitEmulatorFactory_Access_Array_Access is (if Value /= null and then Value.all in InitEmulatorFactory_Access_Array_Object'Class then InitEmulatorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InitEmulatorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitEmulatorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitEmulatorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitEmulatorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitEmulatorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitEmulatorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitEmulatorFactory_Access_Array_Access_Array_Object'Class then InitEmulatorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.emulator.InitEmulatorFactory_Package_References;

with org.allbinary.emulator.InitEmulatorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.emulator.InitEmulatorFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InitEmulatorFactory_Access is org.allbinary.emulator.InitEmulatorFactory_Package_References.InitEmulatorFactory_Access;
   function "=" (Left, Right : InitEmulatorFactory_Access) return Boolean renames org.allbinary.emulator.InitEmulatorFactory_Package_References."=";
   subtype InitEmulatorFactory_Access_Array is org.allbinary.emulator.InitEmulatorFactory_Package_References.InitEmulatorFactory_Access_Array;
   function "=" (Left, Right : InitEmulatorFactory_Access_Array) return Boolean renames org.allbinary.emulator.InitEmulatorFactory_Package_References."=";
   subtype InitEmulatorFactory_Access_Array_Access is org.allbinary.emulator.InitEmulatorFactory_Package_References.InitEmulatorFactory_Access_Array_Access;
   function "=" (Left, Right : InitEmulatorFactory_Access_Array_Access) return Boolean renames org.allbinary.emulator.InitEmulatorFactory_Package_References."=";
   function Java_Box (Value : InitEmulatorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.emulator.InitEmulatorFactory_Package_References.Java_Box;
   function Java_Unbox_InitEmulatorFactory_Access_Array (Value : access Java_Object'Class) return InitEmulatorFactory_Access_Array_Access renames org.allbinary.emulator.InitEmulatorFactory_Package_References.Java_Unbox_InitEmulatorFactory_Access_Array;
   subtype InitEmulatorFactory_Access_Array_Access_Array is org.allbinary.emulator.InitEmulatorFactory_Package_References.InitEmulatorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InitEmulatorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.emulator.InitEmulatorFactory_Package_References."=";
   subtype InitEmulatorFactory_Access_Array_Access_Array_Access is org.allbinary.emulator.InitEmulatorFactory_Package_References.InitEmulatorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitEmulatorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.emulator.InitEmulatorFactory_Package_References."=";
   function Java_Box (Value : InitEmulatorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.emulator.InitEmulatorFactory_Package_References.Java_Box;
   function Java_Unbox_InitEmulatorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InitEmulatorFactory_Access_Array_Access_Array_Access renames org.allbinary.emulator.InitEmulatorFactory_Package_References.Java_Unbox_InitEmulatorFactory_Access_Array_Access_Array;

   type InitEmulatorFactory is new Java_Object with record
      initEmulator : Boolean;
   end record;
   instance : InitEmulatorFactory_Access;

   procedure Initialize (This : in out InitEmulatorFactory'Class);
   function Create return InitEmulatorFactory_Access;
   function getInstance return InitEmulatorFactory_Access;
   procedure setInitEmulator (This : in out InitEmulatorFactory; initEmulator : Boolean);
   function isInitEmulator (This : in out InitEmulatorFactory) return Boolean;

end org.allbinary.emulator.InitEmulatorFactory_Package;


