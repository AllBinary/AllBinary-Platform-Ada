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
with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.DemoGameBehavior_Package is

   package GameTypeFactory_Package renames Standard.org.allbinary.game.GameTypeFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type DemoGameBehavior is tagged;
   type DemoGameBehavior_Access is access all DemoGameBehavior'Class;
   type DemoGameBehavior_Access_Array is array (Natural range <>) of DemoGameBehavior_Access;
   type DemoGameBehavior_Access_Array_Access is access all DemoGameBehavior_Access_Array;

   type DemoGameBehavior is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : DemoGameBehavior_Access;

   procedure Initialize (This : in out DemoGameBehavior'Class);
   function Create return DemoGameBehavior_Access;
   function getInstance return DemoGameBehavior_Access;
   procedure init (This : in out DemoGameBehavior);
   procedure pause (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure unPause (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure updateTouch (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure updateScreenButtonPaintable (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure setGameState (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure removeAllGameKeyInputListeners (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure updateEndGameProcessor (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure buildGame (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure run (This : in out DemoGameBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure setHighScore (This : in out DemoGameBehavior; abeClientInformation : AbeClientInformationInterface_Access; allBinaryGameCanvas : AllBinaryGameCanvas_Access; name : Unbounded_String; score : Long_Long_Integer; autoSubmit : Boolean; isLast : Boolean);

end org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;


