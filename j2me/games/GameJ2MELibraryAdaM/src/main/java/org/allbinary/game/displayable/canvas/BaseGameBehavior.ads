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
with org.allbinary.business.advertisement.GameAdStateFactory_Package; use org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package; use org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package; use org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.BaseGameBehavior_Package is

   package GameAdStateFactory_Package renames Standard.org.allbinary.business.advertisement.GameAdStateFactory_Package;
   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package CurrentDisplayableFactory_Package renames Standard.org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type BaseGameBehavior is tagged;
   type BaseGameBehavior_Access is access all BaseGameBehavior'Class;
   type BaseGameBehavior_Access_Array is array (Natural range <>) of BaseGameBehavior_Access;
   type BaseGameBehavior_Access_Array_Access is access all BaseGameBehavior_Access_Array;

   type BaseGameBehavior is new DemoGameBehavior with null record;
   instanceC : BaseGameBehavior_Access;

   procedure Initialize (This : in out BaseGameBehavior'Class);
   function Create return BaseGameBehavior_Access;
   function getInstance return DemoGameBehavior_Access;
   procedure init (This : in out BaseGameBehavior);
   procedure pause (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   procedure unPause (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   procedure updateTouch (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   procedure updateScreenButtonPaintable (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   procedure setGameState (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   procedure removeAllGameKeyInputListeners (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   procedure updateEndGameProcessor (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   procedure buildGame (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   procedure run (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   procedure setHighScore (This : in out BaseGameBehavior; abeClientInformation_Param : access AbeClientInformationInterface'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class; name : Unbounded_String; score : Long_Long_Integer; autoSubmit : Boolean; isLast : Boolean);

end org.allbinary.game.displayable.canvas.BaseGameBehavior_Package;


