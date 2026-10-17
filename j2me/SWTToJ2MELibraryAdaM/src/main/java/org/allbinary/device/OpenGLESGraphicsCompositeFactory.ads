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
with org.allbinary.device.OpenGLESGraphicsFactory_Package; use org.allbinary.device.OpenGLESGraphicsFactory_Package;

package org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package is


   type OpenGLESGraphicsCompositeFactory is tagged;
   type OpenGLESGraphicsCompositeFactory_Access is access all OpenGLESGraphicsCompositeFactory'Class;
   type OpenGLESGraphicsCompositeFactory_Access_Array is array (Natural range <>) of OpenGLESGraphicsCompositeFactory_Access;
   type OpenGLESGraphicsCompositeFactory_Access_Array_Access is access all OpenGLESGraphicsCompositeFactory_Access_Array;

   type OpenGLESGraphicsCompositeFactory is new Java_Object with record
      openGLESGraphicsFactory : OpenGLESGraphicsFactory_Access;
   end record;
   instance : OpenGLESGraphicsCompositeFactory_Access;

   procedure Initialize (This : in out OpenGLESGraphicsCompositeFactory'Class);
   function Create return OpenGLESGraphicsCompositeFactory_Access;
   function getInstance return OpenGLESGraphicsCompositeFactory_Access;
   procedure set (This : in out OpenGLESGraphicsCompositeFactory; openGLESGraphicsFactory : OpenGLESGraphicsFactory_Access);
   function get (This : in out OpenGLESGraphicsCompositeFactory) return OpenGLESGraphicsFactory_Access;

end org.allbinary.device.OpenGLESGraphicsCompositeFactory_Package;


