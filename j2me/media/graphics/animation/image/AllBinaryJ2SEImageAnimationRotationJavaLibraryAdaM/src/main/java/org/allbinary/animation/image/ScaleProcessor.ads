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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.ImageScaleUtil_Package; use org.allbinary.media.image.ImageScaleUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.animation.image.ScaleBaseProcessor_Package; use org.allbinary.animation.image.ScaleBaseProcessor_Package;

package org.allbinary.animation.image.ScaleProcessor_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageScaleUtil_Package renames Standard.org.allbinary.media.image.ImageScaleUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ScaleProcessor is tagged;
   type ScaleProcessor_Access is access all ScaleProcessor'Class;
   type ScaleProcessor_Access_Array is array (Natural range <>) of ScaleProcessor_Access;
   type ScaleProcessor_Access_Array_Access is access all ScaleProcessor_Access_Array;

   type ScaleProcessor is new ScaleBaseProcessor with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageScaleUtil : ImageScaleUtil_Access;
   end record;
   instanceC : ScaleProcessor_Access;

   procedure Initialize (This : in out ScaleProcessor'Class);
   function Create return ScaleProcessor_Access;
   function getInstance return ScaleBaseProcessor_Access;
   procedure getInstance;
   procedure update (This : in out ScaleProcessor; originalImage : Image_Access; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float);

end org.allbinary.animation.image.ScaleProcessor_Package;


