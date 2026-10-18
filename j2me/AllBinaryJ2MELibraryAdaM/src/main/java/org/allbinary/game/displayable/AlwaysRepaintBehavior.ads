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
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;
with org.allbinary.game.displayable.RepaintBehavior_Package; use org.allbinary.game.displayable.RepaintBehavior_Package;

package org.allbinary.game.displayable.AlwaysRepaintBehavior_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package NullRunnable_Package renames Standard.org.allbinary.thread.NullRunnable_Package;

   type AlwaysRepaintBehavior is tagged;
   type AlwaysRepaintBehavior_Access is access all AlwaysRepaintBehavior'Class;
   type AlwaysRepaintBehavior_Access_Array is array (Natural range <>) of AlwaysRepaintBehavior_Access;
   type AlwaysRepaintBehavior_Access_Array_Access is access all AlwaysRepaintBehavior_Access_Array;

   type AlwaysRepaintBehavior is new RepaintBehavior with record
      NAME : Unbounded_String;
   end record;
   instanceC : AlwaysRepaintBehavior_Access;

   procedure Initialize (This : in out AlwaysRepaintBehavior'Class);
   function Create return AlwaysRepaintBehavior_Access;
   function getInstance return AlwaysRepaintBehavior_Access;
   procedure repaint (This : in out AlwaysRepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class);
   procedure onChangeRepaint (This : in out AlwaysRepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.game.displayable.AlwaysRepaintBehavior_Package;


