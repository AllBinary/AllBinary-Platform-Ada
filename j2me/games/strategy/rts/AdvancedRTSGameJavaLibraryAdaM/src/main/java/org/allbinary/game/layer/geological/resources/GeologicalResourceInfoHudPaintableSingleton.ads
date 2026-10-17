-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package; use org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package;

package org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package is


   type GeologicalResourceInfoHudPaintableSingleton is tagged;
   type GeologicalResourceInfoHudPaintableSingleton_Access is access all GeologicalResourceInfoHudPaintableSingleton'Class;
   type GeologicalResourceInfoHudPaintableSingleton_Access_Array is array (Natural range <>) of GeologicalResourceInfoHudPaintableSingleton_Access;
   type GeologicalResourceInfoHudPaintableSingleton_Access_Array_Access is access all GeologicalResourceInfoHudPaintableSingleton_Access_Array;

   type GeologicalResourceInfoHudPaintableSingleton is new Java_Object with null record;
   instance : GeologicalResourceInfoHudPaintable_Access;

   procedure Initialize (This : in out GeologicalResourceInfoHudPaintableSingleton'Class);
   function Create return GeologicalResourceInfoHudPaintableSingleton_Access;
   function getInstance return GeologicalResourceInfoHudPaintable_Access;

end org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package;


