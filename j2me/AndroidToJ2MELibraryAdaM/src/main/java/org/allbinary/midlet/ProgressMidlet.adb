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


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.globals.Globals_Package; use org.allbinary.globals.Globals_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.PrimaryThreadPool_Package; use org.allbinary.thread.PrimaryThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.midlet.MidletExitProcessorFactory_Package; use org.allbinary.midlet.MidletExitProcessorFactory_Package;
with org.allbinary.midlet.ExitRunnable_Package; use org.allbinary.midlet.ExitRunnable_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package body org.allbinary.midlet.ProgressMidlet_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package Globals_Package renames Standard.org.allbinary.globals.Globals_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PrimaryThreadPool_Package renames Standard.org.allbinary.thread.PrimaryThreadPool_Package;
   package ThreadPool_Package renames Standard.org.allbinary.thread.ThreadPool_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   procedure Initialize_Fields (This : in out ProgressMidlet'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ProgressMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) is
      clientInformationFactory : constant ClientInformationFactory_Access := ClientInformationFactory_Access (clientInformationFactory_Param);
   begin
      AllBinaryMidlet_Package.Initialize (This);
      Initialize_Fields (This);
        Globals_Package.getInstance.init (TsUtil_Package.getInstance.getClassClassLoader (ProgressMidlet_Access'(This'Unchecked_Access)), StringUtil_Package.getInstance.EMPTY_STRING);
        ProgressMidlet'Class (This).preInit;
        This.abeClientInformation := AbeClientInformationInterface_Access (clientInformationFactory.getInstance);
   end Initialize;

   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) return ProgressMidlet_Access is
      This : constant ProgressMidlet_Access := new ProgressMidlet;
   begin
      ProgressMidlet_Package.Initialize (This.all, clientInformationFactory_Param);
      return This;
   end Create;

   procedure preInit (This : in out ProgressMidlet) is
   begin
        null;
   end preInit;

   procedure exitProgress (This : in out ProgressMidlet; isProgress : Boolean) is
      processor : Processor_Access;
      primaryThreadPool : ThreadPool_Access;
      runnable : Runnable_Access;
   begin
        processor := MidletExitProcessorFactory_Package.getInstance.getExitInstance (ProgressMidlet_Access'(This'Unchecked_Access));
        begin
            primaryThreadPool := PrimaryThreadPool_Package.getInstance;
            runnable := Runnable_Access (ExitRunnable_Package.Create (ProgressMidlet_Access'(This'Unchecked_Access), processor, isProgress));
            primaryThreadPool.runTask (runnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ProgressMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("exit"), e);
            begin
                processor.process;
            exception
                when Java_Occurrence : others =>
                    declare
                        e2 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ProgressMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("exit"), e);
                    end;
            end;
                end;
        end;
   end exitProgress;

end org.allbinary.midlet.ProgressMidlet_Package;


