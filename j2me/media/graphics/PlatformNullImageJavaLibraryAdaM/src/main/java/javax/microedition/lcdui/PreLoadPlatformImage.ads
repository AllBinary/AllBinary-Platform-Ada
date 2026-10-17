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
with javax.microedition.lcdui.PlatformImage_Package; use javax.microedition.lcdui.PlatformImage_Package;

package javax.microedition.lcdui.PreLoadPlatformImage_Package is


   type PreLoadPlatformImage is tagged;
   type PreLoadPlatformImage_Access is access all PreLoadPlatformImage'Class;
   type PreLoadPlatformImage_Access_Array is array (Natural range <>) of PreLoadPlatformImage_Access;
   type PreLoadPlatformImage_Access_Array_Access is access all PreLoadPlatformImage_Access_Array;

   type PreLoadPlatformImage is new PlatformImage with null record;
   instance : PreLoadPlatformImage_Access;

   procedure Initialize (This : in out PreLoadPlatformImage'Class);
   function Create return PreLoadPlatformImage_Access;
   function getInstance return PreLoadPlatformImage_Access;

end javax.microedition.lcdui.PreLoadPlatformImage_Package;


