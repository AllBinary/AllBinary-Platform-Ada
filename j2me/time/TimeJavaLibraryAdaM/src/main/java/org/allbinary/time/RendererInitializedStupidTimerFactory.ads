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
with org.allbinary.time.StupidTimer_Package; use org.allbinary.time.StupidTimer_Package;

package org.allbinary.time.RendererInitializedStupidTimerFactory_Package is


   type RendererInitializedStupidTimerFactory is tagged;
   type RendererInitializedStupidTimerFactory_Access is access all RendererInitializedStupidTimerFactory'Class;
   type RendererInitializedStupidTimerFactory_Access_Array is array (Natural range <>) of RendererInitializedStupidTimerFactory_Access;
   type RendererInitializedStupidTimerFactory_Access_Array_Access is access all RendererInitializedStupidTimerFactory_Access_Array;
   type RendererInitializedStupidTimerFactory_Access_Array_Access_Array is array (Natural range <>) of RendererInitializedStupidTimerFactory_Access_Array_Access;
   type RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access is access all RendererInitializedStupidTimerFactory_Access_Array_Access_Array;

   type RendererInitializedStupidTimerFactory is new Java_Object with null record;
   instance : StupidTimer_Access;

   procedure Initialize (This : in out RendererInitializedStupidTimerFactory'Class);
   function Create return RendererInitializedStupidTimerFactory_Access;
   function getInstance return StupidTimer_Access;

end org.allbinary.time.RendererInitializedStupidTimerFactory_Package;


