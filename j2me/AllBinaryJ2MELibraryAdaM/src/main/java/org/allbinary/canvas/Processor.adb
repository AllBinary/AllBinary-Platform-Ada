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



package body org.allbinary.canvas.Processor_Package is

   procedure Initialize_Fields (This : in out Processor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Processor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Processor_Access is
      This : constant Processor_Access := new Processor;
   begin
      Processor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return Processor_Access is
   begin
        return Processor_Package.SINGLETON;
   end getInstance;

   --  throws Exception
   procedure process (This : in out Processor) is
   begin
        null;
   end process;

   --  throws Exception
   procedure processt (This : in out Processor; timeDelta : Long_Long_Integer) is
   begin
        null;
   end processt;

begin
   null;
   SINGLETON := Processor_Package.Create;

end org.allbinary.canvas.Processor_Package;


