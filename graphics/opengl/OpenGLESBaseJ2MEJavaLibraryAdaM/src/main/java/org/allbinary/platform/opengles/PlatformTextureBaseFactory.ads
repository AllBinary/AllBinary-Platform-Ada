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
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PlatformTextureBaseFactory is tagged;
   type PlatformTextureBaseFactory_Access is access all PlatformTextureBaseFactory'Class;
   type PlatformTextureBaseFactory_Access_Array is array (Natural range <>) of PlatformTextureBaseFactory_Access;
   type PlatformTextureBaseFactory_Access_Array_Access is access all PlatformTextureBaseFactory_Access_Array;

   type PlatformTextureBaseFactory is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;
   NULL_PLATFORM_TEXTURE_BASE_FACTORY : PlatformTextureBaseFactory_Access;

   procedure Initialize (This : in out PlatformTextureBaseFactory'Class);
   function Create return PlatformTextureBaseFactory_Access;
   procedure load (This : in out PlatformTextureBaseFactory; gl_Param : access GL10_Package.GL10'Class; target : Integer; level : Integer; image_Param : access Image_Package.Image'Class; border : Integer; flip : Boolean);

end org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;


