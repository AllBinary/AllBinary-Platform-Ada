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


package body org.allbinary.init.Init_Package is

   procedure Initialize_Fields (This : in out Init'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out Init'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Init_Access is
      This : constant Init_Access := new Init;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (This : in out Init) is
   begin
        null;
   end init;

end org.allbinary.init.Init_Package;


