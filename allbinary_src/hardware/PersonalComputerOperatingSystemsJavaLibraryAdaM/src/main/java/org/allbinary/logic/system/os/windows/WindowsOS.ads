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
limited with org.allbinary.logic.system.os.windows.WindowsOS_Package;
package org.allbinary.logic.system.os.windows.WindowsOS_Package_References is
   type WindowsOS_Access is access all org.allbinary.logic.system.os.windows.WindowsOS_Package.WindowsOS'Class;
   type WindowsOS_Access_Array is array (Natural range <>) of WindowsOS_Access;
   type WindowsOS_Access_Array_Access is access all WindowsOS_Access_Array;
   type WindowsOS_Access_Array_Access_Array is array (Natural range <>) of WindowsOS_Access_Array_Access;
   type WindowsOS_Access_Array_Access_Array_Access is access all WindowsOS_Access_Array_Access_Array;
   type WindowsOS_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WindowsOS_Access_Array_Access;
   end record;
   function Java_Box (Value : WindowsOS_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WindowsOS_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WindowsOS_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WindowsOS_Access_Array_Access is (if Value /= null and then Value.all in WindowsOS_Access_Array_Object'Class then WindowsOS_Access_Array_Object'Class (Value.all).Value else null);
   type WindowsOS_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WindowsOS_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WindowsOS_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WindowsOS_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WindowsOS_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WindowsOS_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WindowsOS_Access_Array_Access_Array_Object'Class then WindowsOS_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.os.windows.WindowsOS_Package_References;

with org.allbinary.logic.system.os.windows.WindowsOS_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;

package org.allbinary.logic.system.os.windows.WindowsOS_Package is

   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype WindowsOS_Access is org.allbinary.logic.system.os.windows.WindowsOS_Package_References.WindowsOS_Access;
   function "=" (Left, Right : WindowsOS_Access) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOS_Package_References."=";
   subtype WindowsOS_Access_Array is org.allbinary.logic.system.os.windows.WindowsOS_Package_References.WindowsOS_Access_Array;
   function "=" (Left, Right : WindowsOS_Access_Array) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOS_Package_References."=";
   subtype WindowsOS_Access_Array_Access is org.allbinary.logic.system.os.windows.WindowsOS_Package_References.WindowsOS_Access_Array_Access;
   function "=" (Left, Right : WindowsOS_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOS_Package_References."=";
   function Java_Box (Value : WindowsOS_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.os.windows.WindowsOS_Package_References.Java_Box;
   function Java_Unbox_WindowsOS_Access_Array (Value : access Java_Object'Class) return WindowsOS_Access_Array_Access renames org.allbinary.logic.system.os.windows.WindowsOS_Package_References.Java_Unbox_WindowsOS_Access_Array;
   subtype WindowsOS_Access_Array_Access_Array is org.allbinary.logic.system.os.windows.WindowsOS_Package_References.WindowsOS_Access_Array_Access_Array;
   function "=" (Left, Right : WindowsOS_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOS_Package_References."=";
   subtype WindowsOS_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.windows.WindowsOS_Package_References.WindowsOS_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WindowsOS_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.windows.WindowsOS_Package_References."=";
   function Java_Box (Value : WindowsOS_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.os.windows.WindowsOS_Package_References.Java_Box;
   function Java_Unbox_WindowsOS_Access_Array_Access_Array (Value : access Java_Object'Class) return WindowsOS_Access_Array_Access_Array_Access renames org.allbinary.logic.system.os.windows.WindowsOS_Package_References.Java_Unbox_WindowsOS_Access_Array_Access_Array;

   type WindowsOS is new GenericOperatingSystem with null record;

   procedure Initialize (This : in out WindowsOS'Class);
   function Create return WindowsOS_Access;
   function isAutoHide (This : in out WindowsOS) return Boolean;

end org.allbinary.logic.system.os.windows.WindowsOS_Package;


