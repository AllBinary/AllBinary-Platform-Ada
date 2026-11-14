-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.emulator.swt.SWTRunnableProcessor_Package;
package org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References is
   type SWTRunnableProcessor_Access is access all org.allbinary.emulator.swt.SWTRunnableProcessor_Package.SWTRunnableProcessor'Class;
   type SWTRunnableProcessor_Access_Array is array (Natural range <>) of SWTRunnableProcessor_Access;
   type SWTRunnableProcessor_Access_Array_Access is access all SWTRunnableProcessor_Access_Array;
   type SWTRunnableProcessor_Access_Array_Access_Array is array (Natural range <>) of SWTRunnableProcessor_Access_Array_Access;
   type SWTRunnableProcessor_Access_Array_Access_Array_Access is access all SWTRunnableProcessor_Access_Array_Access_Array;
   type SWTRunnableProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SWTRunnableProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : SWTRunnableProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SWTRunnableProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SWTRunnableProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SWTRunnableProcessor_Access_Array_Access is (if Value /= null and then Value.all in SWTRunnableProcessor_Access_Array_Object'Class then SWTRunnableProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type SWTRunnableProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SWTRunnableProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SWTRunnableProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SWTRunnableProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SWTRunnableProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SWTRunnableProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SWTRunnableProcessor_Access_Array_Access_Array_Object'Class then SWTRunnableProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References;

with org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.eclipse.swt.widgets.Display_Package;
with org.eclipse.swt.widgets.Display_Package_References;
with org.allbinary.emulator.swt.SWTProcessor_Package; use org.allbinary.emulator.swt.SWTProcessor_Package;

package org.allbinary.emulator.swt.SWTRunnableProcessor_Package is

   package Display_Package renames Standard.org.eclipse.swt.widgets.Display_Package;
   package Reference_Types is
   subtype Display_Access is org.eclipse.swt.widgets.Display_Package_References.Display_Access;
   use type Display_Access;
   subtype Display_Access_Array is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array;
   use type Display_Access_Array;
   subtype Display_Access_Array_Access is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array_Access;
   use type Display_Access_Array_Access;
   subtype Display_Access_Array_Access_Array is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array_Access_Array;
   use type Display_Access_Array_Access_Array;
   subtype Display_Access_Array_Access_Array_Access is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array_Access_Array_Access;
   use type Display_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SWTRunnableProcessor_Access is org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References.SWTRunnableProcessor_Access;
   function "=" (Left, Right : SWTRunnableProcessor_Access) return Boolean renames org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References."=";
   subtype SWTRunnableProcessor_Access_Array is org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References.SWTRunnableProcessor_Access_Array;
   function "=" (Left, Right : SWTRunnableProcessor_Access_Array) return Boolean renames org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References."=";
   subtype SWTRunnableProcessor_Access_Array_Access is org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References.SWTRunnableProcessor_Access_Array_Access;
   function "=" (Left, Right : SWTRunnableProcessor_Access_Array_Access) return Boolean renames org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References."=";
   function Java_Box (Value : SWTRunnableProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References.Java_Box;
   function Java_Unbox_SWTRunnableProcessor_Access_Array (Value : access Java_Object'Class) return SWTRunnableProcessor_Access_Array_Access renames org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References.Java_Unbox_SWTRunnableProcessor_Access_Array;
   subtype SWTRunnableProcessor_Access_Array_Access_Array is org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References.SWTRunnableProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SWTRunnableProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References."=";
   subtype SWTRunnableProcessor_Access_Array_Access_Array_Access is org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References.SWTRunnableProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SWTRunnableProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References."=";
   function Java_Box (Value : SWTRunnableProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References.Java_Box;
   function Java_Unbox_SWTRunnableProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return SWTRunnableProcessor_Access_Array_Access_Array_Access renames org.allbinary.emulator.swt.SWTRunnableProcessor_Package_References.Java_Unbox_SWTRunnableProcessor_Access_Array_Access_Array;

   type SWTRunnableProcessor is new SWTProcessor with null record;
   instanceR : SWTRunnableProcessor_Access;

   procedure Initialize (This : in out SWTRunnableProcessor'Class);
   function Create return SWTRunnableProcessor_Access;
   function getInstance return SWTRunnableProcessor_Access;
   procedure process (This : in out SWTRunnableProcessor; display_Param : access Display_Package.Display'Class);

end org.allbinary.emulator.swt.SWTRunnableProcessor_Package;


