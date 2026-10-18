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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;

package org.allbinary.thread.ABRunnable_Package is


   type ABRunnable is tagged;
   type ABRunnable_Access is access all ABRunnable'Class;
   type ABRunnable_Access_Array is array (Natural range <>) of ABRunnable_Access;
   type ABRunnable_Access_Array_Access is access all ABRunnable_Access_Array;
   type ABRunnable_Access_Array_Access_Array is array (Natural range <>) of ABRunnable_Access_Array_Access;
   type ABRunnable_Access_Array_Access_Array_Access is access all ABRunnable_Access_Array_Access_Array;

   type ABRunnable is new Java_Object and RunnableInterface with record
      running : Boolean;
   end record;

   procedure Initialize (This : in out ABRunnable'Class);
   function Create return ABRunnable_Access;
   procedure setThread (This : in out ABRunnable; thread_Param : access Thread_Package.Thread'Class);
   function isRunning (This : in out ABRunnable) return Boolean;
   procedure setRunning (This : in out ABRunnable; running : Boolean);
   procedure run (This : in out ABRunnable);
   function getType (This : in out ABRunnable) return Integer;

end org.allbinary.thread.ABRunnable_Package;


