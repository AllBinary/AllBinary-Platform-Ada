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
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type OpenGLImageSpecificFactory is tagged;
   type OpenGLImageSpecificFactory_Access is access all OpenGLImageSpecificFactory'Class;
   type OpenGLImageSpecificFactory_Access_Array is array (Natural range <>) of OpenGLImageSpecificFactory_Access;
   type OpenGLImageSpecificFactory_Access_Array_Access is access all OpenGLImageSpecificFactory_Access_Array;

   type OpenGLImageSpecificFactory is new Java_Object with record
      imageFactory : OpenGLImageFactory_Access;
      updating : Boolean;
   end record;
   instance : OpenGLImageSpecificFactory_Access;

   procedure Initialize (This : in out OpenGLImageSpecificFactory'Class);
   function Create return OpenGLImageSpecificFactory_Access;
   function getInstance return OpenGLImageSpecificFactory_Access;
   procedure getInstance;
   procedure setImageFactory (This : in out OpenGLImageSpecificFactory; imageFactory : OpenGLImageFactory_Access);
   function getImageFactory (This : in out OpenGLImageSpecificFactory) return OpenGLImageFactory_Access;
   procedure getImageFactory (This : in out OpenGLImageSpecificFactory);

end org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package;


