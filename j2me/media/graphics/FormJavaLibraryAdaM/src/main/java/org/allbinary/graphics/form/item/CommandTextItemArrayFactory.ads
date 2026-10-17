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
--  with javax.microedition.lcdui.ImageItem_Package; use javax.microedition.lcdui.ImageItem_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.form.ScreenInfo_Package; use org.allbinary.graphics.form.ScreenInfo_Package;
with org.allbinary.logic.VectorUtil_Package; use org.allbinary.logic.VectorUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.form.item.CommandTextItem_Package; use org.allbinary.graphics.form.item.CommandTextItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package ScreenInfo_Package renames Standard.org.allbinary.graphics.form.ScreenInfo_Package;
   package VectorUtil_Package renames Standard.org.allbinary.logic.VectorUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type CommandTextItemArrayFactory is tagged;
   type CommandTextItemArrayFactory_Access is access all CommandTextItemArrayFactory'Class;
   type CommandTextItemArrayFactory_Access_Array is array (Natural range <>) of CommandTextItemArrayFactory_Access;
   type CommandTextItemArrayFactory_Access_Array_Access is access all CommandTextItemArrayFactory_Access_Array;

   type CommandTextItemArrayFactory is new Java_Object with record
      list : BasicArrayList_Access;
      visitorInterface : Visitor_Access;
   end record;

   procedure Initialize (This : in out CommandTextItemArrayFactory'Class; visitorInterface_Param : access Visitor_Package.Visitor'Class);
   function Create (visitorInterface_Param : access Visitor_Package.Visitor'Class) return CommandTextItemArrayFactory_Access;
   function getInstance (This : in out CommandTextItemArrayFactory; vector_Param : access Java_Object'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABCustomItem_Access_Array_Access;
   procedure getInstance (This : in out CommandTextItemArrayFactory; vector_Param : access Java_Object'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;


