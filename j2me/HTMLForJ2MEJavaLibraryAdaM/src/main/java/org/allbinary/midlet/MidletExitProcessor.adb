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


package body org.allbinary.midlet.MidletExitProcessor_Package is

   procedure Initialize_Fields (This : in out MidletExitProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MidletExitProcessor'Class; midlet_Param : access MIDlet'Class) is
      midlet : MIDlet_Access := MIDlet_Access (midlet_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.midlet := midlet;
   end Initialize;

   function Create (midlet_Param : access MIDlet'Class) return MidletExitProcessor_Access is
      This : constant MidletExitProcessor_Access := new MidletExitProcessor;
   begin
      MidletExitProcessor_Package.Initialize (This.all, midlet_Param);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out MidletExitProcessor) is
   begin
        null;
   end process;

end org.allbinary.midlet.MidletExitProcessor_Package;


