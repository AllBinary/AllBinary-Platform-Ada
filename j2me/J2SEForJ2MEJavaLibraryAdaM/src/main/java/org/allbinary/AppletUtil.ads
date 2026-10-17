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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.AppletUtil_Package is


   type AppletUtil is tagged;
   type AppletUtil_Access is access all AppletUtil'Class;
   type AppletUtil_Access_Array is array (Natural range <>) of AppletUtil_Access;
   type AppletUtil_Access_Array_Access is access all AppletUtil_Access_Array;

   type AppletUtil is new Java_Object with null record;
   applet : Boolean;

   procedure Initialize (This : in out AppletUtil'Class);
   function Create return AppletUtil_Access;
   procedure setApplet;
   function isAppletLoader (anyType_Param : access Java_Object'Class) return Boolean;
   procedure isAppletLoader (anyType_Param : access Java_Object'Class);

end org.allbinary.AppletUtil_Package;


