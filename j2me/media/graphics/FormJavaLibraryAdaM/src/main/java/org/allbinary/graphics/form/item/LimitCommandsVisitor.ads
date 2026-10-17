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
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.form.ScreenInfo_Package; use org.allbinary.graphics.form.ScreenInfo_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.graphics.form.item.LimitCommandsVisitor_Package is

   package GameCommandsFactory_Package renames org.allbinary.game.commands.GameCommandsFactory_Package;
   package DisplayInfoSingleton_Package renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package ScreenInfo_Package renames org.allbinary.graphics.form.ScreenInfo_Package;
   package BooleanFactory_Package renames org.allbinary.logic.java.bool.BooleanFactory_Package;
   package Visitor_Package renames org.allbinary.logic.util.visitor.Visitor_Package;

   type LimitCommandsVisitor is tagged;
   type LimitCommandsVisitor_Access is access all LimitCommandsVisitor'Class;
   type LimitCommandsVisitor_Access_Array is array (Natural range <>) of LimitCommandsVisitor_Access;
   type LimitCommandsVisitor_Access_Array_Access is access all LimitCommandsVisitor_Access_Array;

   type LimitCommandsVisitor is new Visitor with record
      isNotSmallDisplay : Boolean;
   end record;

   procedure Initialize (This : in out LimitCommandsVisitor'Class);
   function Create return LimitCommandsVisitor_Access;
   function visit (This : in out LimitCommandsVisitor; anyType : Java_Object_Access) return Java_Object_Access;
   procedure visit (This : in out LimitCommandsVisitor; anyType : Java_Object_Access);

end org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;


