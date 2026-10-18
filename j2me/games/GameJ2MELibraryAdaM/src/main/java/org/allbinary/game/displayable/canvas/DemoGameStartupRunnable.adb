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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out DemoGameStartupRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameStartupRunnable'Class; demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) is
      demoCanvas : constant DemoCanvas_Access := DemoCanvas_Access (demoCanvas_Param);
   begin
      ABRunnable_Package.Initialize (This);
      Initialize_Fields (This);
        This.demoCanvas := demoCanvas;
   end Initialize;

   function Create (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) return DemoGameStartupRunnable_Access is
      This : constant DemoGameStartupRunnable_Access := new DemoGameStartupRunnable;
   begin
      DemoGameStartupRunnable_Package.Initialize (This.all, demoCanvas_Param);
      return This;
   end Create;

   procedure run (This : in out DemoGameStartupRunnable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            DemoGameStartupRunnable'Class (This).setRunning (True);
            This.demoCanvas.stopGameDemo;
            This.demoCanvas.create;
            This.demoCanvas.start;
            DemoGameStartupRunnable'Class (This).setRunning (False);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            DemoGameStartupRunnable'Class (This).setRunning (False);
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, DemoGameStartupRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                end;
        end;
   end run;

   function getType (This : in out DemoGameStartupRunnable) return Integer is
   begin
        return DemoGameStartupRunnable_Package.TYPE_Id;
   end getType;

begin
   null;
   TYPE_Id := 4;

end org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;


