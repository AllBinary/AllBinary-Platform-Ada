--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.thread.NullPriorityRunnable_Package; use org.allbinary.thread.NullPriorityRunnable_Package;
with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;

package org.allbinary.thread.ThreadObjectUtil_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;

   type ThreadObjectUtil is tagged;
   type ThreadObjectUtil_Access is access all ThreadObjectUtil'Class;
   type ThreadObjectUtil_Access_Array is array (Natural range <>) of ThreadObjectUtil_Access;
   type ThreadObjectUtil_Access_Array_Access is access all ThreadObjectUtil_Access_Array;

   type ThreadObjectUtil is new Java_Object with record
      NULL_PRIORITY_RUNNABLE : PriorityRunnable_Access;
   end record;
   instance : ThreadObjectUtil_Access;

   procedure Initialize (This : in out ThreadObjectUtil'Class);
   function Create return ThreadObjectUtil_Access;
   function getInstance return ThreadObjectUtil_Access;
   procedure notifyObject (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class);
   procedure waitObject (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class);
   procedure waitObjectFor (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class; delay_Id : Long_Long_Integer);
   procedure processThread (This : in out ThreadObjectUtil; runnable_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.thread.ThreadObjectUtil_Package;


