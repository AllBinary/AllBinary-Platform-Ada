-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.layer.PlayerOwnedRTSLayers_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type PlayerOwnedRTSLayers is tagged;
   type PlayerOwnedRTSLayers_Access is access all PlayerOwnedRTSLayers'Class;
   type PlayerOwnedRTSLayers_Access_Array is array (Natural range <>) of PlayerOwnedRTSLayers_Access;
   type PlayerOwnedRTSLayers_Access_Array_Access is access all PlayerOwnedRTSLayers_Access_Array;

   type PlayerOwnedRTSLayers is new Java_Object with record
      rtsLayerList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out PlayerOwnedRTSLayers'Class);
   function Create return PlayerOwnedRTSLayers_Access;
   function toString (This : in out PlayerOwnedRTSLayers) return Unbounded_String;

end org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;


