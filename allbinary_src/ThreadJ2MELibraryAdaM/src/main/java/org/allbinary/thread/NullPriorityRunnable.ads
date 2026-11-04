-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.thread.NullPriorityRunnable_Package;
package org.allbinary.thread.NullPriorityRunnable_Package_References is
   type NullPriorityRunnable_Access is access all org.allbinary.thread.NullPriorityRunnable_Package.NullPriorityRunnable'Class;
   type NullPriorityRunnable_Access_Array is array (Natural range <>) of NullPriorityRunnable_Access;
   type NullPriorityRunnable_Access_Array_Access is access all NullPriorityRunnable_Access_Array;
   type NullPriorityRunnable_Access_Array_Access_Array is array (Natural range <>) of NullPriorityRunnable_Access_Array_Access;
   type NullPriorityRunnable_Access_Array_Access_Array_Access is access all NullPriorityRunnable_Access_Array_Access_Array;
end org.allbinary.thread.NullPriorityRunnable_Package_References;

with org.allbinary.thread.NullPriorityRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;

package org.allbinary.thread.NullPriorityRunnable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullPriorityRunnable_Access is org.allbinary.thread.NullPriorityRunnable_Package_References.NullPriorityRunnable_Access;
   function "=" (Left, Right : NullPriorityRunnable_Access) return Boolean renames org.allbinary.thread.NullPriorityRunnable_Package_References."=";
   subtype NullPriorityRunnable_Access_Array is org.allbinary.thread.NullPriorityRunnable_Package_References.NullPriorityRunnable_Access_Array;
   function "=" (Left, Right : NullPriorityRunnable_Access_Array) return Boolean renames org.allbinary.thread.NullPriorityRunnable_Package_References."=";
   subtype NullPriorityRunnable_Access_Array_Access is org.allbinary.thread.NullPriorityRunnable_Package_References.NullPriorityRunnable_Access_Array_Access;
   function "=" (Left, Right : NullPriorityRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.NullPriorityRunnable_Package_References."=";
   subtype NullPriorityRunnable_Access_Array_Access_Array is org.allbinary.thread.NullPriorityRunnable_Package_References.NullPriorityRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : NullPriorityRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.NullPriorityRunnable_Package_References."=";
   subtype NullPriorityRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.NullPriorityRunnable_Package_References.NullPriorityRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullPriorityRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.NullPriorityRunnable_Package_References."=";

   type NullPriorityRunnable is new Java_Object and PriorityRunnable with null record;

   procedure Initialize (This : in out NullPriorityRunnable'Class);
   function Create return NullPriorityRunnable_Access;
   function getPriority (This : in out NullPriorityRunnable) return Integer;
   function isDone (This : in out NullPriorityRunnable) return Boolean;
   procedure reset (This : in out NullPriorityRunnable);
   procedure run (This : in out NullPriorityRunnable);

end org.allbinary.thread.NullPriorityRunnable_Package;


