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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;

package org.allbinary.game.input.GameInputProcessorComposite_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type GameInputProcessorComposite is tagged;
   type GameInputProcessorComposite_Access is access all GameInputProcessorComposite'Class;
   type GameInputProcessorComposite_Access_Array is array (Natural range <>) of GameInputProcessorComposite_Access;
   type GameInputProcessorComposite_Access_Array_Access is access all GameInputProcessorComposite_Access_Array;

   type GameInputProcessorComposite is new PlayerGameInput with record
      name : Unbounded_String;
      gameInputProcessorInterface : GameInputProcessorInterface_Access;
      NAME_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out GameInputProcessorComposite'Class; name : Unbounded_String; gameInputProcessorInterface : GameInputProcessorInterface_Access);
   function Create (name : Unbounded_String; gameInputProcessorInterface : GameInputProcessorInterface_Access) return GameInputProcessorComposite_Access;
   procedure update (This : in out GameInputProcessorComposite);
   function toString (This : in out GameInputProcessorComposite) return Unbounded_String;
   procedure toString (This : in out GameInputProcessorComposite);

end org.allbinary.game.input.GameInputProcessorComposite_Package;


