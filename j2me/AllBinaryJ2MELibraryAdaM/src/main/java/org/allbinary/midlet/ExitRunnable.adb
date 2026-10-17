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


package body org.allbinary.midlet.ExitRunnable_Package is

   procedure Initialize_Fields (This : in out ExitRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ExitRunnable'Class; midlet : AllBinaryMidlet_Access; processor : Processor_Access; isProgress : Boolean) is
   begin
      Initialize_Fields (This);
        This.midlet := midlet;
        This.isProgress := isProgress;
        This.processor := processor;
   end Initialize;

   function Create (midlet : AllBinaryMidlet_Access; processor : Processor_Access; isProgress : Boolean) return ExitRunnable_Access is
      This : constant ExitRunnable_Access := new ExitRunnable;
   begin
      Initialize (This.all, midlet, processor, isProgress);
      return This;
   end Create;

   procedure run (This : in out ExitRunnable) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
            This.midlet.destroyAppInRunnable (False, This.isProgress);
            This.midlet.setDisplay (NullCanvas_Package.NULL_CANVAS);
            This.midlet.notifyDestroyed;
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
            This.processor.process;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
            begin
                This.processor.process;
            exception
                when e2 : others =>
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
            end;
        end;
   end run;

end org.allbinary.midlet.ExitRunnable_Package;


