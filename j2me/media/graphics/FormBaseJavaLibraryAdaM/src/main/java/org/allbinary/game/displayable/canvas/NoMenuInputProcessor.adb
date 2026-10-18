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


with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package body org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package is

   package NullCanvas_Package renames Standard.javax.microedition.lcdui.NullCanvas_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   procedure Initialize_Fields (This : in out NoMenuInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return NoMenuInputProcessor_Access is
   begin
        return NoMenuInputProcessor_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out NoMenuInputProcessor'Class) is
   begin
        BasicMenuInputProcessor_Package.Initialize (This, BasicArrayListUtil_Package.getInstance.getImmutableInstance, -(1), NullCanvas_Package.NULL_CANVAS);
   end Initialize;

   function Create return NoMenuInputProcessor_Access is
      This : constant NoMenuInputProcessor_Access := new NoMenuInputProcessor;
   begin
      NoMenuInputProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure onDownGameKeyEvent (This : in out NoMenuInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end onDownGameKeyEvent;

   procedure onUpGameKeyEvent (This : in out NoMenuInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end onUpGameKeyEvent;

   procedure onMotionGestureEvent (This : in out NoMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        null;
   end onMotionGestureEvent;

begin
   null;
   SINGLETON := NoMenuInputProcessor_Package.Create;

end org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package;


