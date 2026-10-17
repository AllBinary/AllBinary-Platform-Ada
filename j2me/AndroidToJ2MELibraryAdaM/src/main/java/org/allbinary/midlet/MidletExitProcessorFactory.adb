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


package body org.allbinary.midlet.MidletExitProcessorFactory_Package is

   procedure Initialize_Fields (This : in out MidletExitProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MidletExitProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MidletExitProcessorFactory_Access is
      This : constant MidletExitProcessorFactory_Access := new MidletExitProcessorFactory;
   begin
      MidletExitProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MidletExitProcessorFactory_Access is
   begin
        return MidletExitProcessorFactory_Package.instance;
   end getInstance;

   function getExitInstance (This : in out MidletExitProcessorFactory; midlet : MIDlet_Access) return Processor_Access is
   begin
        if (AppletUtil_Package.isAppletLoader (midlet)) or else (J2MEUtil_Package.isJ2ME) then
            return Processor_Package.getInstance;
        else
            return MidletExitProcessor_Package.Create (midlet);
        end if;
   end getExitInstance;

   procedure getExitInstance (This : in out MidletExitProcessorFactory; midlet : MIDlet_Access) is
      Java_Result : constant Processor_Access := MidletExitProcessorFactory'Class (This).getExitInstance (midlet);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExitInstance;

begin
   null;
   instance := MidletExitProcessorFactory_Package.Create;

end org.allbinary.midlet.MidletExitProcessorFactory_Package;


