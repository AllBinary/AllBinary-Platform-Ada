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


with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.form.ScreenInfo_Package; use org.allbinary.graphics.form.ScreenInfo_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;

package body org.allbinary.graphics.form.item.LimitCommandsVisitor_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package ScreenInfo_Package renames Standard.org.allbinary.graphics.form.ScreenInfo_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   procedure Initialize_Fields (This : in out LimitCommandsVisitor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LimitCommandsVisitor'Class) is
      displayInfo : DisplayInfoSingleton_Access;
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        This.isNotSmallDisplay := (((displayInfo.isPortrait) and then ((displayInfo.getLastHeight) > (ScreenInfo_Package.getInstance.SMALL_WIDTH)))) or else (((not (displayInfo.isPortrait)) and then ((displayInfo.getLastHeight) > (ScreenInfo_Package.getInstance.SMALL_HEIGHT))));
   end Initialize;

   function Create return LimitCommandsVisitor_Access is
      This : constant LimitCommandsVisitor_Access := new LimitCommandsVisitor;
   begin
      LimitCommandsVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out LimitCommandsVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      command : Command_Access;
      booleanFactory : BooleanFactory_Access;
   begin
        command := Command_Access (anyType);
        booleanFactory := BooleanFactory_Package.getInstance;
        if (((This.isNotSmallDisplay) or else ((command.getPriority) = (1))) or else ((command) = (GameCommandsFactory_Package.getInstance.EXIT_COMMAND))) or else ((command) = (GameCommandsFactory_Package.getInstance.EXIT_WITHOUT_PROGRESS_COMMAND)) then
            return booleanFactory.TRUE;
        else
            return booleanFactory.FALSE;
        end if;
   end visit;

   procedure visit (This : in out LimitCommandsVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := LimitCommandsVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out LimitCommandsVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return LimitCommandsVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out LimitCommandsVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := LimitCommandsVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;


