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


with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out TouchMotionGestureFactory'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   function getInstance return TouchMotionGestureFactory_Access is
   begin
        if (TouchMotionGestureFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            TouchMotionGestureFactory_Package.instance := TouchMotionGestureFactory_Package.Create;
        end if;
        return TouchMotionGestureFactory_Access (TouchMotionGestureFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out TouchMotionGestureFactory'Class) is
      MAX : Integer;
   begin
      Initialize_Fields (This);
        MAX := InputFactory_Package.getInstance.MAX;
        This.LEFT := MotionGestureInput_Package.Create ((MAX) - (3), To_Unbounded_String ("Left Touch"));
        This.RIGHT := MotionGestureInput_Package.Create ((MAX) - (4), To_Unbounded_String ("Right Touch"));
        This.UP := MotionGestureInput_Package.Create ((MAX) - (5), To_Unbounded_String ("Up Touch"));
        This.DOWN := MotionGestureInput_Package.Create ((MAX) - (6), To_Unbounded_String ("Down Touch"));
        This.PRESSED := MotionGestureInput_Package.Create ((MAX) - (7), To_Unbounded_String ("Screen Press"));
        This.RELEASED := MotionGestureInput_Package.Create ((MAX) - (8), To_Unbounded_String ("Released"));
        This.DIAGONAL_DOWN_RIGHT := MotionGestureInput_Package.Create ((MAX) - (9), To_Unbounded_String ("Diagonal Dn R"));
        This.DIAGONAL_DOWN_LEFT := MotionGestureInput_Package.Create ((MAX) - (10), To_Unbounded_String ("Diagonal Dn L"));
        This.DIAGONAL_UP_RIGHT := MotionGestureInput_Package.Create ((MAX) - (11), To_Unbounded_String ("Diagonal Up R"));
        This.DIAGONAL_UP_LEFT := MotionGestureInput_Package.Create ((MAX) - (12), To_Unbounded_String ("Diagonal Up L"));
        This.SCROLL_UP := MotionGestureInput_Package.Create ((MAX) - (13), To_Unbounded_String ("Scroll Up"));
        This.SCROLL_DOWN := MotionGestureInput_Package.Create ((MAX) - (14), To_Unbounded_String ("Scroll Down"));
        This.NO_MOTION := MotionGestureInput_Package.Create ((MAX) - (2), To_Unbounded_String ("No Motion"));
        This.LAST_MOTION := MotionGestureInput_Package.Create ((MAX) - (19), To_Unbounded_String ("Last Motion"));
   end Initialize;

   function Create return TouchMotionGestureFactory_Access is
      This : constant TouchMotionGestureFactory_Access := new TouchMotionGestureFactory;
   begin
      TouchMotionGestureFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;


