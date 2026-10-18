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


with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package body org.allbinary.game.displayable.canvas.GameRunnable_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   procedure Initialize_Fields (This : in out GameRunnable'Class) is
   begin
      null;
      This.WAIT := 240;
      This.FAST := 60;
      This.waitInMillis := Long_Long_Integer (This.WAIT);
   end Initialize_Fields;


   procedure Initialize (This : in out GameRunnable'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameRunnable_Access is
      This : constant GameRunnable_Access := new GameRunnable;
   begin
      GameRunnable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure run (This : in out GameRunnable) is
   begin
        DisplayInfoSingleton_Package.getInstance.process;
   end run;

   --  throws Exception
   procedure processLoopSleep (This : in out GameRunnable) is
   begin
        Java_Sleep (This.waitInMillis);
   end processLoopSleep;

end org.allbinary.game.displayable.canvas.GameRunnable_Package;


