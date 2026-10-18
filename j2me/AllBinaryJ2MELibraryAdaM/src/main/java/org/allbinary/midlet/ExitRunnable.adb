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

package body org.allbinary.midlet.ExitRunnable_Package is

   package NullCanvas_Package renames Standard.javax.microedition.lcdui.NullCanvas_Package;
   procedure Initialize_Fields (This : in out ExitRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ExitRunnable'Class; midlet_Param : access AllBinaryMidlet_Package.AllBinaryMidlet'Class; processor_Param : access Processor_Package.Processor'Class; isProgress : Boolean) is
      midlet : constant AllBinaryMidlet_Access := AllBinaryMidlet_Access (midlet_Param);
      processor : constant Processor_Access := Processor_Access (processor_Param);
   begin
      Initialize_Fields (This);
        This.midlet := midlet;
        This.isProgress := isProgress;
        This.processor := processor;
   end Initialize;

   function Create (midlet_Param : access AllBinaryMidlet_Package.AllBinaryMidlet'Class; processor_Param : access Processor_Package.Processor'Class; isProgress : Boolean) return ExitRunnable_Access is
      This : constant ExitRunnable_Access := new ExitRunnable;
   begin
      ExitRunnable_Package.Initialize (This.all, midlet_Param, processor_Param, isProgress);
      return This;
   end Create;

   procedure run (This : in out ExitRunnable) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START_RUNNABLE, ExitRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.midlet.destroyAppInRunnable (False, This.isProgress);
            This.midlet.setDisplay (NullCanvas_Package.NULL_CANVAS);
            This.midlet.notifyDestroyed;
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, ExitRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.processor.process;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ExitRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
            begin
                This.processor.process;
            exception
                when Java_Occurrence : others =>
                    declare
                        e2 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ExitRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                    end;
            end;
                end;
        end;
   end run;

end org.allbinary.midlet.ExitRunnable_Package;


