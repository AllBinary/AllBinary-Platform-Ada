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

package org.allbinary.animation.image.ScaleBaseProcessor_Package is


   type ScaleBaseProcessor is tagged;
   type ScaleBaseProcessor_Access is access all ScaleBaseProcessor'Class;
   type ScaleBaseProcessor_Access_Array is array (Natural range <>) of ScaleBaseProcessor_Access;
   type ScaleBaseProcessor_Access_Array_Access is access all ScaleBaseProcessor_Access_Array;

   type ScaleBaseProcessor is new Java_Object with null record;
   instance : ScaleBaseProcessor_Access;

   procedure Initialize (This : in out ScaleBaseProcessor'Class);
   function Create return ScaleBaseProcessor_Access;
   function getInstance return ScaleBaseProcessor_Access;
   procedure update (This : in out ScaleBaseProcessor; originalImage : Image_Access; originalImageArray : Image_Access_Array_Access; imageToShowArray : Image_Access_Array_Access; index : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float);

end org.allbinary.animation.image.ScaleBaseProcessor_Package;


