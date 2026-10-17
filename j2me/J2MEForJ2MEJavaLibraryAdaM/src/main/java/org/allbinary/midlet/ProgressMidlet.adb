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


package body org.allbinary.midlet.ProgressMidlet_Package is

   procedure Initialize_Fields (This : in out ProgressMidlet'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ProgressMidlet'Class; clientInformationFactory : ClientInformationFactory_Access) is
   begin
      AllBinaryMidlet_Package.Initialize (This);
      Initialize_Fields (This);
        This.preInit;
        This.abeClientInformation := clientInformationFactory.getInstance;
   end Initialize;

   function Create (clientInformationFactory : ClientInformationFactory_Access) return ProgressMidlet_Access is
      This : constant ProgressMidlet_Access := new ProgressMidlet;
   begin
      ProgressMidlet_Package.Initialize (This.all, clientInformationFactory);
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
        processor := MidletExitProcessorFactory_Package.getInstance.getExitInstance (This'Unchecked_Access);
        begin
            primaryThreadPool := PrimaryThreadPool_Package.getInstance;
            runnable := ExitRunnable_Package.Create (This'Unchecked_Access, processor, isProgress);
            primaryThreadPool.runTask (runnable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("exit"), e);
            begin
                processor.process;
            exception
                when Java_Occurrence : others =>
                    declare
                        e2 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("exit"), e);
                    end;
            end;
                end;
        end;
   end exitProgress;

end org.allbinary.midlet.ProgressMidlet_Package;


